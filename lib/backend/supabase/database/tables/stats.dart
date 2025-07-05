import '../database.dart';

class StatsTable extends SupabaseTable<StatsRow> {
  @override
  String get tableName => 'stats';

  @override
  StatsRow createRow(Map<String, dynamic> data) => StatsRow(data);
}

class StatsRow extends SupabaseDataRow {
  StatsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StatsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get currentCredit => getField<int>('current_credit');
  set currentCredit(int? value) => setField<int>('current_credit', value);

  int? get allImports => getField<int>('all_imports');
  set allImports(int? value) => setField<int>('all_imports', value);

  int? get allCleans => getField<int>('all_cleans');
  set allCleans(int? value) => setField<int>('all_cleans', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);

  int? get allInvalids => getField<int>('all_invalids');
  set allInvalids(int? value) => setField<int>('all_invalids', value);
}
