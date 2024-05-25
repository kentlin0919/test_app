import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:test_app/api/testdata.dart';

class ApiService {
  final String baseUrl;
  static http.Client baseClient = http.Client();

  ApiService(this.baseUrl);

  Future<List<Course>> getCourses() async {
    final response = await baseClient.get(Uri.parse('$baseUrl/courses'));
    if (response.statusCode == 200) {
      List<dynamic> body = json.decode(response.body);
      return body.map((dynamic item) => Course.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load courses');
    }
  }

  Future<List<Instructor>> getInstructors() async {
    final response = await baseClient.get(Uri.parse('$baseUrl/instructors'));
    if (response.statusCode == 200) {
      List<dynamic> body = json.decode(response.body);
      return body.map((dynamic item) => Instructor.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load instructors');
    }
  }

  Future<List<Course>> getCoursesByInstructor(int instructorId) async {
    final response = await baseClient
        .get(Uri.parse('$baseUrl/instructors/$instructorId/courses'));
    if (response.statusCode == 200) {
      List<dynamic> body = json.decode(response.body);
      return body.map((dynamic item) => Course.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load courses for instructor');
    }
  }

  Future<void> createInstructor(Instructor instructor) async {
    final response = await baseClient.post(
      Uri.parse('$baseUrl/instructors'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(instructor.toJson()),
    );
    if (response.statusCode != 201) {
      throw Exception('Failed to create instructor');
    }
  }

  Future<void> createCourse(Course course) async {
    final response = await baseClient.post(
      Uri.parse('$baseUrl/courses'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(course.toJson()),
    );
    if (response.statusCode != 201) {
      throw Exception('Failed to create course');
    }
  }

  Future<void> updateCourse(Course course) async {
    final response = await baseClient.put(
      Uri.parse('$baseUrl/courses/${course.courseId}'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(course.toJson()),
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to update course');
    }
  }

  Future<void> deleteCourse(int courseId) async {
    final response = await baseClient.delete(
      Uri.parse('$baseUrl/courses/$courseId'),
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to delete course');
    }
  }
}
