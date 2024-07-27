import '../database.dart';

class BlogTable extends SupabaseTable<BlogRow> {
  @override
  String get tableName => 'blog';

  @override
  BlogRow createRow(Map<String, dynamic> data) => BlogRow(data);
}

class BlogRow extends SupabaseDataRow {
  BlogRow(super.data);

  @override
  SupabaseTable get table => BlogTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get subheader => getField<String>('subheader');
  set subheader(String? value) => setField<String>('subheader', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);
}
