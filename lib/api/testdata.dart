class Course {
  final int courseId;
  final String title;
  final String description;
  final int instructorId;

  Course({
    required this.courseId,
    required this.title,
    required this.description,
    required this.instructorId,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      courseId: json['course_id'],
      title: json['title'],
      description: json['description'],
      instructorId: json['instructor_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'course_id': courseId,
      'title': title,
      'description': description,
      'instructor_id': instructorId,
    };
  }
}

class Instructor {
  final int instructorId;
  final String name;

  Instructor({
    required this.instructorId,
    required this.name,
  });

  factory Instructor.fromJson(Map<String, dynamic> json) {
    return Instructor(
      instructorId: json['instructor_id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'instructor_id': instructorId,
      'name': name,
    };
  }
}
