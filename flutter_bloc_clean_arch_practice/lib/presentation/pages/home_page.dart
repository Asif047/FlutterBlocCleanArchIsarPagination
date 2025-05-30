import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/repository_cubit.dart';
import '../cubit/repository_state.dart';
import '../widgets/repository_list_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);

    // Load repositories when the widget is first built
    context.read<RepositoryCubit>().loadRepositories();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      final state = context.read<RepositoryCubit>().state;
      if (state is RepositoryLoaded && !state.hasReachedEnd) {
        context.read<RepositoryCubit>().loadMoreRepositories();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Repositories'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search repositories...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    _searchController.clear();
                    context.read<RepositoryCubit>().loadRepositories();
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onSubmitted: (query) {
                if (query.isNotEmpty) {
                  context.read<RepositoryCubit>().searchRepositories(query: query);
                }
              },
            ),
          ),
          Expanded(
            child: BlocBuilder<RepositoryCubit, RepositoryState>(
              builder: (context, state) {
                if (state is RepositoryInitial) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is RepositoryLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is RepositoryLoaded) {
                  return _buildRepositoryList(state.repositories);
                } else if (state is RepositoryRefreshing) {
                  return _buildRepositoryList(state.currentRepositories, isRefreshing: true);
                } else if (state is RepositoryLoadingMore) {
                  return _buildRepositoryList(state.currentRepositories, isLoadingMore: true);
                } else if (state is RepositoryError) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(state.message),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            context.read<RepositoryCubit>().loadRepositories();
                          },
                          child: const Text('Try Again'),
                        ),
                      ],
                    ),
                  );
                } else {
                  return const Center(child: Text('Unknown State'));
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRepositoryList(
      List<dynamic> repositories, {
        bool isRefreshing = false,
        bool isLoadingMore = false,
      }) {
    return RefreshIndicator(
      onRefresh: () async {
        await context.read<RepositoryCubit>().refreshAllRepositories();
      },
      child: repositories.isEmpty
          ? const Center(child: Text('No repositories found'))
          : Stack(
        children: [
          ListView.builder(
            controller: _scrollController,
            itemCount: repositories.length + (isLoadingMore ? 1 : 0),
            itemBuilder: (context, index) {
              if (index == repositories.length) {
                // Loading indicator at the bottom
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              return RepositoryListItem(repository: repositories[index]);
            },
          ),
          if (isRefreshing)
            const Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: LinearProgressIndicator(),
            ),
        ],
      ),
    );
  }
}