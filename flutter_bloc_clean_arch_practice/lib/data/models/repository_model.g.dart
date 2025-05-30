// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRepositoryModelCollection on Isar {
  IsarCollection<RepositoryModel> get repositoryModels => this.collection();
}

const RepositoryModelSchema = CollectionSchema(
  name: r'RepositoryModel',
  id: 4687082300745008139,
  properties: {
    r'cachedAt': PropertySchema(
      id: 0,
      name: r'cachedAt',
      type: IsarType.dateTime,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'forksCount': PropertySchema(
      id: 2,
      name: r'forksCount',
      type: IsarType.long,
    ),
    r'fullName': PropertySchema(
      id: 3,
      name: r'fullName',
      type: IsarType.string,
    ),
    r'htmlUrl': PropertySchema(
      id: 4,
      name: r'htmlUrl',
      type: IsarType.string,
    ),
    r'language': PropertySchema(
      id: 5,
      name: r'language',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    ),
    r'ownerAvatarUrl': PropertySchema(
      id: 7,
      name: r'ownerAvatarUrl',
      type: IsarType.string,
    ),
    r'ownerLogin': PropertySchema(
      id: 8,
      name: r'ownerLogin',
      type: IsarType.string,
    ),
    r'page': PropertySchema(
      id: 9,
      name: r'page',
      type: IsarType.long,
    ),
    r'query': PropertySchema(
      id: 10,
      name: r'query',
      type: IsarType.string,
    ),
    r'repoId': PropertySchema(
      id: 11,
      name: r'repoId',
      type: IsarType.long,
    ),
    r'stargazersCount': PropertySchema(
      id: 12,
      name: r'stargazersCount',
      type: IsarType.long,
    ),
    r'watchersCount': PropertySchema(
      id: 13,
      name: r'watchersCount',
      type: IsarType.long,
    )
  },
  estimateSize: _repositoryModelEstimateSize,
  serialize: _repositoryModelSerialize,
  deserialize: _repositoryModelDeserialize,
  deserializeProp: _repositoryModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'repoId': IndexSchema(
      id: -4045864733458894273,
      name: r'repoId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'repoId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _repositoryModelGetId,
  getLinks: _repositoryModelGetLinks,
  attach: _repositoryModelAttach,
  version: '3.1.0+1',
);

int _repositoryModelEstimateSize(
  RepositoryModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.fullName.length * 3;
  bytesCount += 3 + object.htmlUrl.length * 3;
  bytesCount += 3 + object.language.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.ownerAvatarUrl.length * 3;
  bytesCount += 3 + object.ownerLogin.length * 3;
  bytesCount += 3 + object.query.length * 3;
  return bytesCount;
}

void _repositoryModelSerialize(
  RepositoryModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.cachedAt);
  writer.writeString(offsets[1], object.description);
  writer.writeLong(offsets[2], object.forksCount);
  writer.writeString(offsets[3], object.fullName);
  writer.writeString(offsets[4], object.htmlUrl);
  writer.writeString(offsets[5], object.language);
  writer.writeString(offsets[6], object.name);
  writer.writeString(offsets[7], object.ownerAvatarUrl);
  writer.writeString(offsets[8], object.ownerLogin);
  writer.writeLong(offsets[9], object.page);
  writer.writeString(offsets[10], object.query);
  writer.writeLong(offsets[11], object.repoId);
  writer.writeLong(offsets[12], object.stargazersCount);
  writer.writeLong(offsets[13], object.watchersCount);
}

RepositoryModel _repositoryModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RepositoryModel(
    cachedAt: reader.readDateTime(offsets[0]),
    description: reader.readString(offsets[1]),
    forksCount: reader.readLong(offsets[2]),
    fullName: reader.readString(offsets[3]),
    htmlUrl: reader.readString(offsets[4]),
    language: reader.readString(offsets[5]),
    name: reader.readString(offsets[6]),
    ownerAvatarUrl: reader.readString(offsets[7]),
    ownerLogin: reader.readString(offsets[8]),
    page: reader.readLong(offsets[9]),
    query: reader.readString(offsets[10]),
    repoId: reader.readLong(offsets[11]),
    stargazersCount: reader.readLong(offsets[12]),
    watchersCount: reader.readLong(offsets[13]),
  );
  object.id = id;
  return object;
}

P _repositoryModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _repositoryModelGetId(RepositoryModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _repositoryModelGetLinks(RepositoryModel object) {
  return [];
}

void _repositoryModelAttach(
    IsarCollection<dynamic> col, Id id, RepositoryModel object) {
  object.id = id;
}

extension RepositoryModelByIndex on IsarCollection<RepositoryModel> {
  Future<RepositoryModel?> getByRepoId(int repoId) {
    return getByIndex(r'repoId', [repoId]);
  }

  RepositoryModel? getByRepoIdSync(int repoId) {
    return getByIndexSync(r'repoId', [repoId]);
  }

  Future<bool> deleteByRepoId(int repoId) {
    return deleteByIndex(r'repoId', [repoId]);
  }

  bool deleteByRepoIdSync(int repoId) {
    return deleteByIndexSync(r'repoId', [repoId]);
  }

  Future<List<RepositoryModel?>> getAllByRepoId(List<int> repoIdValues) {
    final values = repoIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'repoId', values);
  }

  List<RepositoryModel?> getAllByRepoIdSync(List<int> repoIdValues) {
    final values = repoIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'repoId', values);
  }

  Future<int> deleteAllByRepoId(List<int> repoIdValues) {
    final values = repoIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'repoId', values);
  }

  int deleteAllByRepoIdSync(List<int> repoIdValues) {
    final values = repoIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'repoId', values);
  }

  Future<Id> putByRepoId(RepositoryModel object) {
    return putByIndex(r'repoId', object);
  }

  Id putByRepoIdSync(RepositoryModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'repoId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByRepoId(List<RepositoryModel> objects) {
    return putAllByIndex(r'repoId', objects);
  }

  List<Id> putAllByRepoIdSync(List<RepositoryModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'repoId', objects, saveLinks: saveLinks);
  }
}

extension RepositoryModelQueryWhereSort
    on QueryBuilder<RepositoryModel, RepositoryModel, QWhere> {
  QueryBuilder<RepositoryModel, RepositoryModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterWhere> anyRepoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'repoId'),
      );
    });
  }
}

extension RepositoryModelQueryWhere
    on QueryBuilder<RepositoryModel, RepositoryModel, QWhereClause> {
  QueryBuilder<RepositoryModel, RepositoryModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterWhereClause>
      repoIdEqualTo(int repoId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'repoId',
        value: [repoId],
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterWhereClause>
      repoIdNotEqualTo(int repoId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'repoId',
              lower: [],
              upper: [repoId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'repoId',
              lower: [repoId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'repoId',
              lower: [repoId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'repoId',
              lower: [],
              upper: [repoId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterWhereClause>
      repoIdGreaterThan(
    int repoId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'repoId',
        lower: [repoId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterWhereClause>
      repoIdLessThan(
    int repoId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'repoId',
        lower: [],
        upper: [repoId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterWhereClause>
      repoIdBetween(
    int lowerRepoId,
    int upperRepoId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'repoId',
        lower: [lowerRepoId],
        includeLower: includeLower,
        upper: [upperRepoId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RepositoryModelQueryFilter
    on QueryBuilder<RepositoryModel, RepositoryModel, QFilterCondition> {
  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      cachedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cachedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      cachedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cachedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      cachedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cachedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      cachedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cachedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      forksCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'forksCount',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      forksCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'forksCount',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      forksCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'forksCount',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      forksCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'forksCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      fullNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      fullNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      fullNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      fullNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fullName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      fullNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      fullNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      fullNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      fullNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fullName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      fullNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullName',
        value: '',
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      fullNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fullName',
        value: '',
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      htmlUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'htmlUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      htmlUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'htmlUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      htmlUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'htmlUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      htmlUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'htmlUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      htmlUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'htmlUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      htmlUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'htmlUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      htmlUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'htmlUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      htmlUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'htmlUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      htmlUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'htmlUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      htmlUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'htmlUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      languageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      languageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      languageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      languageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'language',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      languageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      languageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      languageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      languageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'language',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      languageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      languageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerAvatarUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ownerAvatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerAvatarUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ownerAvatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerAvatarUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ownerAvatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerAvatarUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ownerAvatarUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerAvatarUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ownerAvatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerAvatarUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ownerAvatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerAvatarUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ownerAvatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerAvatarUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ownerAvatarUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerAvatarUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ownerAvatarUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerAvatarUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ownerAvatarUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerLoginEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ownerLogin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerLoginGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ownerLogin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerLoginLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ownerLogin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerLoginBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ownerLogin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerLoginStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ownerLogin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerLoginEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ownerLogin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerLoginContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ownerLogin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerLoginMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ownerLogin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerLoginIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ownerLogin',
        value: '',
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      ownerLoginIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ownerLogin',
        value: '',
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      pageEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'page',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      pageGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'page',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      pageLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'page',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      pageBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'page',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      queryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'query',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      queryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'query',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      queryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'query',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      queryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'query',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      queryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'query',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      queryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'query',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      queryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'query',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      queryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'query',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      queryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'query',
        value: '',
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      queryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'query',
        value: '',
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      repoIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'repoId',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      repoIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'repoId',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      repoIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'repoId',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      repoIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'repoId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      stargazersCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stargazersCount',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      stargazersCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stargazersCount',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      stargazersCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stargazersCount',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      stargazersCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stargazersCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      watchersCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'watchersCount',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      watchersCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'watchersCount',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      watchersCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'watchersCount',
        value: value,
      ));
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterFilterCondition>
      watchersCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'watchersCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RepositoryModelQueryObject
    on QueryBuilder<RepositoryModel, RepositoryModel, QFilterCondition> {}

extension RepositoryModelQueryLinks
    on QueryBuilder<RepositoryModel, RepositoryModel, QFilterCondition> {}

extension RepositoryModelQuerySortBy
    on QueryBuilder<RepositoryModel, RepositoryModel, QSortBy> {
  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByCachedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedAt', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByCachedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedAt', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByForksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forksCount', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByForksCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forksCount', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByFullName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByFullNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy> sortByHtmlUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'htmlUrl', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByHtmlUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'htmlUrl', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByOwnerAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerAvatarUrl', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByOwnerAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerAvatarUrl', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByOwnerLogin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerLogin', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByOwnerLoginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerLogin', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy> sortByPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy> sortByQuery() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'query', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByQueryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'query', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy> sortByRepoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repoId', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByRepoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repoId', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByStargazersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stargazersCount', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByStargazersCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stargazersCount', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByWatchersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchersCount', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      sortByWatchersCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchersCount', Sort.desc);
    });
  }
}

extension RepositoryModelQuerySortThenBy
    on QueryBuilder<RepositoryModel, RepositoryModel, QSortThenBy> {
  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByCachedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedAt', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByCachedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cachedAt', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByForksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forksCount', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByForksCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'forksCount', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByFullName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByFullNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy> thenByHtmlUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'htmlUrl', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByHtmlUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'htmlUrl', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByOwnerAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerAvatarUrl', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByOwnerAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerAvatarUrl', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByOwnerLogin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerLogin', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByOwnerLoginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerLogin', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy> thenByPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByPageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'page', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy> thenByQuery() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'query', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByQueryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'query', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy> thenByRepoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repoId', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByRepoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'repoId', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByStargazersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stargazersCount', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByStargazersCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stargazersCount', Sort.desc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByWatchersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchersCount', Sort.asc);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QAfterSortBy>
      thenByWatchersCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'watchersCount', Sort.desc);
    });
  }
}

extension RepositoryModelQueryWhereDistinct
    on QueryBuilder<RepositoryModel, RepositoryModel, QDistinct> {
  QueryBuilder<RepositoryModel, RepositoryModel, QDistinct>
      distinctByCachedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cachedAt');
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QDistinct>
      distinctByForksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'forksCount');
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QDistinct> distinctByFullName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fullName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QDistinct> distinctByHtmlUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'htmlUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QDistinct> distinctByLanguage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'language', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QDistinct>
      distinctByOwnerAvatarUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ownerAvatarUrl',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QDistinct>
      distinctByOwnerLogin({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ownerLogin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QDistinct> distinctByPage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'page');
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QDistinct> distinctByQuery(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'query', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QDistinct> distinctByRepoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'repoId');
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QDistinct>
      distinctByStargazersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stargazersCount');
    });
  }

  QueryBuilder<RepositoryModel, RepositoryModel, QDistinct>
      distinctByWatchersCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'watchersCount');
    });
  }
}

extension RepositoryModelQueryProperty
    on QueryBuilder<RepositoryModel, RepositoryModel, QQueryProperty> {
  QueryBuilder<RepositoryModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RepositoryModel, DateTime, QQueryOperations> cachedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cachedAt');
    });
  }

  QueryBuilder<RepositoryModel, String, QQueryOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<RepositoryModel, int, QQueryOperations> forksCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'forksCount');
    });
  }

  QueryBuilder<RepositoryModel, String, QQueryOperations> fullNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fullName');
    });
  }

  QueryBuilder<RepositoryModel, String, QQueryOperations> htmlUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'htmlUrl');
    });
  }

  QueryBuilder<RepositoryModel, String, QQueryOperations> languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'language');
    });
  }

  QueryBuilder<RepositoryModel, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<RepositoryModel, String, QQueryOperations>
      ownerAvatarUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ownerAvatarUrl');
    });
  }

  QueryBuilder<RepositoryModel, String, QQueryOperations> ownerLoginProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ownerLogin');
    });
  }

  QueryBuilder<RepositoryModel, int, QQueryOperations> pageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'page');
    });
  }

  QueryBuilder<RepositoryModel, String, QQueryOperations> queryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'query');
    });
  }

  QueryBuilder<RepositoryModel, int, QQueryOperations> repoIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'repoId');
    });
  }

  QueryBuilder<RepositoryModel, int, QQueryOperations>
      stargazersCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stargazersCount');
    });
  }

  QueryBuilder<RepositoryModel, int, QQueryOperations> watchersCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'watchersCount');
    });
  }
}
