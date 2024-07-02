import unittest
from student import Student

class StudentTest(unittest.TestCase):

    def test_01(self):

        student1 = Student('Hilde', ['DS 5100'])
        student1.enroll_in_course("CS 5050")
        student1.enroll_in_course("CS 5777")
        print(student1.courses)
        print(student1.num_courses)

        expected = 3

        self.assertEqual(student1.num_courses, expected)
    
    def test_02(self):

        student2 = Student('Jack', ['DS 5100'])
        student2.unenroll_in_course('DS 5100')
        print(student2.num_courses)

        expected = 0

        self.assertEqual(student2.num_courses, expected)

    def test_03(self):
        student3 = Student('Finn', ['DS 5100'])
        expected = len(student3.courses)
        course = 'CS 5100'
        student3.unenroll_in_course(course)
        actual = len(student3.courses)
        self.assertEqual(actual, expected)

if __name__ == '__main__':
    unittest.main(verbosity=2)



