class Department {
    var name: String
    var courses: [Course]
    init(name: String) {
        self.name = name
        self.courses = []
    }
}

class Course{
    var name:String
    unowned var department : Department
    unowned var nextCourse: Course?
    init(name:String, in department: Department){
        self.name = name
        self.department = department
        self.nextCourse = nil
    }
}

let department = Department(name: "Robotics")

let intro = Course(name: "Kinematics and Dynamics", in: department)
let intermediate = Course(name: "Robotic Operating System", in: department)
let advanced = Course(name: "Robotic Process Automation", in: department)

intro.nextCourse = intermediate
intermediate.nextCourse = advanced

department.courses = [intro, intermediate, advanced]


