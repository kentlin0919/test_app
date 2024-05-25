import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test_app/api/testdata.dart';
import 'package:test_app/api/api.dart';

void main() {
  group('ApiService', () {
    late ApiService apiService;

    setUp(() {
      apiService = ApiService('http://example.com');
    });

    test(
        'getCourses returns a list of courses if the http call completes successfully',
        () async {
      // Arrange
      final mockClient = MockClient((request) async {
        return http.Response(
          jsonEncode([
            {
              'course_id': 1,
              'title': 'Course 1',
              'description': 'Description 1',
              'instructor_id': 1
            },
            {
              'course_id': 2,
              'title': 'Course 2',
              'description': 'Description 2',
              'instructor_id': 2
            },
          ]),
          200,
        );
      });
      apiService = ApiService('http://example.com');
      ApiService.baseClient = mockClient;

      // Act
      final courses = await apiService.getCourses();

      // Assert
      expect(courses.length, 2);
      expect(courses[0].title, 'Course 1');
      expect(courses[1].title, 'Course 2');
    });

    test(
        'getInstructors returns a list of instructors if the http call completes successfully',
        () async {
      // Arrange
      final mockClient = MockClient((request) async {
        return http.Response(
          jsonEncode([
            {'instructor_id': 1, 'name': 'Instructor 1'},
            {'instructor_id': 2, 'name': 'Instructor 2'},
          ]),
          200,
        );
      });
      apiService = ApiService('http://example.com');
      ApiService.baseClient = mockClient;

      // Act
      final instructors = await apiService.getInstructors();

      // Assert
      expect(instructors.length, 2);
      expect(instructors[0].name, 'Instructor 1');
      expect(instructors[1].name, 'Instructor 2');
    });
  });
}
