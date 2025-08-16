import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String subtitle;

  @HiveField(2)
  String date; // تقدر تخليها DateTime بدل String

  @HiveField(3)
  int color;

  @HiveField(4)
  DateTime createdAt;

  @HiveField(5)
  DateTime updatedAt;

  @HiveField(6)
  bool isPinned;

  @HiveField(7)
  bool isArchived;

  @HiveField(8)
  bool isTrashed;

  @HiveField(9)
  String? folderKey;

  @HiveField(10)
  List<String> labelKeys;

  NoteModel({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.color,
    DateTime? createdAt,
    DateTime? updatedAt,
    this.isPinned = false,
    this.isArchived = false,
    this.isTrashed = false,
    this.folderKey,
    List<String>? labelKeys,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now(),
        labelKeys = labelKeys ?? [];
}
