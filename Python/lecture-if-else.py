max_class_size = 5
students = ["Joy", "Joe", "Yubenis"]

students.append("Stewart")

if len(students) >= max_class_size:
    print("Class is full! No more students")
    enrollment = "closed"
else:
    print("Class is open. Sign up now!")
    enrollment = "open"

print('Complete')


