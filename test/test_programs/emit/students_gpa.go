package main

type student struct {
	name string
	gpa float32
	courses []struct {
		course_code string
		grade rune
	}
}

func course_exists(s student, course_code string) bool {
	for i := 0; i < len(s.courses); i++; {
		if s.courses[i].course_code == course_code {
			return true
		}
	}
	return false
}

func add_course(s student, course_code string, grade rune) {
	if course_exists(s, course_code) {
		println("Could not add course " + course_code + " because student " + s.name + " is has already taken it")
		return
	}
	var new_course struct {
		course_code string
		grade rune
	}
	new_course.course_code = course_code
	new_course.grade = grade
	s.courses = append(s.courses, new_course)
	update_gpa(s)
}

func grade_to_points(grade rune) float32 {
	if grade == 'A' {
		return 4.0
	}
	else if grade == 'B' {
		return 3.0
	}
	else if grade == 'C' {
		return 2.0
	}
	else if grade == 'D' {
		return 1.0
	}
	else if grade == 'F' {
		return 0.
	}
	print("Unknown grade: ")
	print(grade)
	println(", treating as fail")
	return 0.
}

func update_gpa(s student) {
	if len(s.courses) == 0 {
		return
	}
	var points float32 = 0.
	for i := 0; i < len(s.courses); i++; {
		points += grade_to_points(s.courses[i].grade)
	}
	s.gpa = points / float32(len(s.courses))
}

func print_gpa(s student) {
	print("The student " + s.name + " has GPA: ")
	println(s.gpa)
}

func main() {
	var m student
	m.name = "Micheal"

	println("Student " + m.name + " got an A in ECSE200")
	add_course(m, "ECSE200", 'A')
	print_gpa(m)
	
	println("Student " + m.name + " got a B in ECSE210")
	add_course(m, "ECSE210", 'B')
	print_gpa(m)
	
	println("Student " + m.name + " got an A in ECSE251")
	add_course(m, "ECSE251", 'A')
	print_gpa(m)
}