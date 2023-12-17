class Note {
  final int id;
  final String title;
  final String description;

  const Note({
    required this.id,
    required this.title,
    required this.description,
  });

  // Convert a Dog into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Note{id: $id, title: $title, description: $description}';
  }
}
