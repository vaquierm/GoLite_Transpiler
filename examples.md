# Binary Search

**goLite file**
````go
package main

type l [10]int;

func bin_search(array l, start, end, target int) int {
	if start > end {
		return -1;
	}
	var mid = (end + start)/2;
	if array[mid] == target {
		return mid;
	} else if array[mid] > target {
		return bin_search(array, start, mid - 1, target);
	} else {
		return bin_search(array, mid + 1, end, target);
	}
}

func main() {
	var glist l
	glist[0] = 0
	glist[1] = 3
	glist[2] = 3
	glist[3] = 8
	glist[4] = 9
	glist[5] = 10
	glist[6] = 13
	glist[7] = 14
	glist[8] = 18
	glist[9] = 19

	println(bin_search(glist, 0, 9, 13))
}
````

Is transpiled to

**C++ file**
````cpp
#include <array>
#include <iostream>
int bin_search(std::array<int, 10> &array, int start, int end, int target);
int main();
int bin_search(std::array<int, 10> &array, int start, int end, int target) {
    if ((start > end)) {
        return (-1);
    }
    int mid = ((end + start) / 2);
    if ((array[mid] == target)) {
        return mid;
    }
    else {
        if ((array[mid] > target)) {
            return bin_search(array, start, (mid - 1), target);
        }
        else {
            return bin_search(array, (mid + 1), end, target);
        }
    }
}
int main() {
    std::array<int, 10> glist;
    glist[0] = 0;
    glist[1] = 3;
    glist[2] = 3;
    glist[3] = 8;
    glist[4] = 9;
    glist[5] = 10;
    glist[6] = 13;
    glist[7] = 14;
    glist[8] = 18;
    glist[9] = 19;
    std::cout << bin_search(glist, 0, 9, 13) << std::endl;
}

````

This program looks fairly similar. The main changes is just how the array types are declared

# GPA tracker

This program is a simple program that makes use of structs and slices.
This makes the generated code much more complicated since slices are not natively supported in C++.

A C++ implementation of golang Slices is generated at the top of the file

**goLite file**
````go
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
````

Is transpiled to

**C++ file**
````cpp
#include <string>
#include <iostream>
#include <vector>
#include <cstdlib>
template<class T> class Slice {
public:
    Slice() {
        end = 0;
    }
    ~Slice() {
        if (new_itms != nullptr) {
            delete[] new_itms;
        }
    }

    Slice* slice(int start, int end) {
        return new Slice(this, start, end);
    }
    Slice* slice(int start, int end, int max) {
        return new Slice(this, start, end, max);
    }
    Slice* append(T val) {
        return new Slice(val, this);
    }
    T& operator[] (int x) {
        if (x < 0 || x > len()) {
            std::cerr << "Index " << x << " out of bounds" << std::endl;
            exit(0);
        }
        return *(this->v[x]);
    }
    int len() {
        return end;
    }
    int cap() {
        return this->v.size();
    }
private:
    T* new_itms = nullptr;
    int end;
    std::vector<T*> v;
    void copy_vec(std::vector<T*> v, int start, int n) {
        for (int i = start; i < n+start; i++) {
            this->v.push_back(v[i]);
        }
    }
    Slice(T new_val, Slice *old) {
        copy_vec(old->v, 0, old->cap());
        this->end = old->end + 1;
        if (old->cap() == 0) {
            this->new_itms = new T[2];
            this->new_itms[0] = new_val;
            this->new_itms[1] = new_val;
            this->v.push_back(&(this->new_itms[0]));
            this->v.push_back(&(this->new_itms[1])); // Should be default val
        }
        else if (old->end == old->cap()) {
            this->new_itms = new T[old->cap()];
            for (int i = old->end; i < old->cap() * 2; i++) {
                this->new_itms[i - old->end] = new_val;
                this->v.push_back(&(this->new_itms[i - old->end])); // Should be default val
            }
        }
        else {
            *(this->v[old->end]) = new_val;
        }

    }
    Slice(Slice *old, int start, int end) {
        copy_vec(old->v, start, old->cap() - start);
        if (start < 0) {
            std::cerr << "Start index must be greater than 0" << std::endl;
            exit(0);
        }
        if (end > old->cap()) {
            std::cerr << "End index must be less than the capacity" << std::endl;
            exit(0);
        }
        this->end = end - start;
    }
    Slice(Slice *old, int start, int end, int max) {
        copy_vec(old->v, start, max - start);
        if (start < 0 || end < 0 || max < 0) {
            std::cerr << "All indices must be greater than 0" << std::endl;
            exit(0);
        }
        if (end > old->cap()) {
            std::cerr << "End index must be less than the capacity" << std::endl;
            exit(0);
        }
        this->end = end - start;
        if (max < end) {
            std::cerr << "The max index must be greater or equal to the end" << std::endl;
            exit(0);
        }
        if (max > old->cap()) {
            std::cerr << "The new capacity cannot be larger than the old capacity" << std::endl;
            exit(0);
        }
    }
};
struct student {
    std::string name;
    float gpa;
    Slice<struct struct_89809344> courses;
} student;
struct struct_89809344 {
    std::string course_code;
    char grade;
} struct_89809344;
template <class T>
constexpr int len(Slice<T> &slice) {
    slice.len();
}
bool course_exists(struct student &s, std::string course_code);
void add_course(struct student &s, std::string course_code, char grade);
float grade_to_points(char grade);
void update_gpa(struct student &s);
void print_gpa(struct student &s);
int main();
bool course_exists(struct student &s, std::string course_code) {
    {
        int i = 0;
        for (; (i < len(s.courses)); i = (i + 1)){
            if ((s.courses[i].course_code == course_code)) {
                return true;
            }
        }
    }
    return false;
}
void add_course(struct student &s, std::string course_code, char grade) {
    if (course_exists(s, course_code)) {
        std::cout << (((("Could not add course " + course_code) + " because student ") + s.name) + " is has already taken it") << std::endl;
        return;
    }
    struct struct_89809344 new_course;
    new_course.course_code = course_code;
    new_course.grade = grade;
    s.courses = *s.courses.append(new_course);
    update_gpa(s);
}
float grade_to_points(char grade) {
    if ((grade == 'A')) {
        return 4.;
    }
    else {
        if ((grade == 'B')) {
            return 3.;
        }
        else {
            if ((grade == 'C')) {
                return 2.;
            }
            else {
                if ((grade == 'D')) {
                    return 1.;
                }
                else {
                    if ((grade == 'F')) {
                        return 0.;
                    }
                }
            }
        }
    }
    std::cout << "Unknown grade: ";
    std::cout << grade;
    std::cout << ", treating as fail" << std::endl;
    return 0.;
}
void update_gpa(struct student &s) {
    if ((len(s.courses) == 0)) {
        return;
    }
    float points = 0.;
    {
        int i = 0;
        for (; (i < len(s.courses)); i = (i + 1)){
            points = (points + grade_to_points(s.courses[i].grade));
        }
    }
    s.gpa = (points / ((float) len(s.courses)));
}
void print_gpa(struct student &s) {
    std::cout << (("The student " + s.name) + " has GPA: ");
    std::cout << s.gpa << std::endl;
}
int main() {
    struct student m;
    m.name = "Micheal";
    std::cout << (("Student " + m.name) + " got an A in ECSE200") << std::endl;
    add_course(m, "ECSE200", 'A');
    print_gpa(m);
    std::cout << (("Student " + m.name) + " got a B in ECSE210") << std::endl;
    add_course(m, "ECSE210", 'B');
    print_gpa(m);
    std::cout << (("Student " + m.name) + " got an A in ECSE251") << std::endl;
    add_course(m, "ECSE251", 'A');
    print_gpa(m);
}
````

First the C++ implementation of slices is generated, then all structs that were used in the code are generated.
Next up, the method signatures are generated to allow mutually recursive methods. Finally the method declarations are generated.

