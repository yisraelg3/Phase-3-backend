puts "Clearing old data"
Studentgoal.destroy_all
Goal.destroy_all
Student.destroy_all
Teacher.destroy_all

puts "Creating teachers"
Teacher.create(name:"Eric", age: 32, subject: "Software Engineering")
Teacher.create(name:"Ix", age: 29, subject: "Javascript")
Teacher.create(name:"Louis", age: 40, subject: "React")
Teacher.create(name:"Dakota", age: 54, subject: "Ruby")

puts "Creating students"
Student.create(name: "Yisrael", grade: "4th", teacher: Teacher.first, hair_color: "Blonde", siblings_amount:9)
Student.create(name: "Jason", grade: "4th", teacher: Teacher.first, hair_color: "Blonde", siblings_amount: 2)
Student.create(name: "Sue", grade: "9th", teacher: Teacher.first, hair_color: "Black", siblings_amount: 4)
Student.create(name: "Paul", grade: "7th", teacher: Teacher.first, hair_color: "Black", siblings_amount: 1)
Student.create(name: "Leon", grade: "13th", teacher: Teacher.second, hair_color: "Black", siblings_amount: 4)
Student.create(name: "Francisco", grade: "7th", teacher: Teacher.second, hair_color: "Black", siblings_amount: 2)
Student.create(name: "Jouqin", grade: "10th", teacher: Teacher.second, hair_color: "Red", siblings_amount: 11)
Student.create(name: "Mo", grade: "12th", teacher: Teacher.third, hair_color: "Black", siblings_amount: 1)
Student.create(name: "V", grade: "9th", teacher: Teacher.third, hair_color: "Pink", siblings_amount: 5)
Student.create(name: "Greg", grade: "5th", teacher: Teacher.third, hair_color: "Grey", siblings_amount: 3)
Student.create(name: "Jimmy", grade: "11th", teacher: Teacher.fourth, hair_color: "Red", siblings_amount: 6)
Student.create(name: "Jami", grade: "11th", teacher: Teacher.fourth, hair_color: "Blonde", siblings_amount: 4)

puts "Creating goals"
Goal.create(title: "Answer a question", description: "Volunteer an answer when a teacher asks a qustion in lecture", teacher: Teacher.first)
Goal.create(title: "Finish 3 labs", description: "Complete 3 labs from the labs that were released today", teacher: Teacher.first)
Goal.create(title: "Take a shower", description: "Make sure to take a shower every day", teacher: Teacher.first)
Goal.create(title: "Don't volunteer anyone", description: "If the teacher asks for a volunteer don't choose somebody else", teacher: Teacher.second)
Goal.create(title: "Blogs", description: "Make sure to have a blog written by blog presentation day", teacher: Teacher.third)
Goal.create(title: "Make a website", description: "Code your own website using an activeRecord backend and React frontend", teacher: Teacher.third)

puts "Creating Studentgoals"
Studentgoal.create(student: Teacher.first.students.first, goal: Teacher.first.goals.first, star: 0 , completed: false)
Studentgoal.create(student: Teacher.first.students.first, goal: Teacher.first.goals.second, star: 0 , completed: false)
Studentgoal.create(student: Teacher.first.students.first, goal: Teacher.first.goals.third, star: 0 , completed: false)

Studentgoal.create(student: Teacher.first.students.second, goal: Teacher.first.goals.first, star: 0, completed: false)
Studentgoal.create(student: Teacher.first.students.second, goal: Teacher.first.goals.second, star: 0, completed: false)
Studentgoal.create(student: Teacher.first.students.second, goal: Teacher.first.goals.third, star: 0, completed: false)

Studentgoal.create(student: Teacher.first.students.third, goal: Teacher.first.goals.first, star: 0, completed: false)
Studentgoal.create(student: Teacher.first.students.third, goal: Teacher.first.goals.second, star: 0, completed: false)
Studentgoal.create(student: Teacher.first.students.third, goal: Teacher.first.goals.third, star: 0, completed: false)

Studentgoal.create(student: Teacher.first.students.fourth, goal: Teacher.first.goals.first, star: 0, completed: false)
Studentgoal.create(student: Teacher.first.students.fourth, goal: Teacher.first.goals.second, star: 0, completed: false)
Studentgoal.create(student: Teacher.first.students.fourth, goal: Teacher.first.goals.third, star: 0, completed: false)

Studentgoal.create(student: Teacher.second.students.first, goal: Teacher.second.goals.first, star: 0, completed: false)
Studentgoal.create(student: Teacher.second.students.second, goal: Teacher.second.goals.first, star: 0, completed: false)
Studentgoal.create(student: Teacher.second.students.third, goal: Teacher.second.goals.first, star: 0, completed: false)

Studentgoal.create(student: Teacher.third.students.first, goal: Teacher.third.goals.first, star: 0 , completed: false)
Studentgoal.create(student: Teacher.third.students.first, goal: Teacher.third.goals.second, star: 0 , completed: false)

Studentgoal.create(student: Teacher.third.students.second, goal: Teacher.third.goals.first, star: 0, completed: false)
Studentgoal.create(student: Teacher.third.students.second, goal: Teacher.third.goals.second, star: 0, completed: false)

Studentgoal.create(student: Teacher.third.students.third, goal: Teacher.third.goals.first, star: 0, completed: false)
Studentgoal.create(student: Teacher.third.students.third, goal: Teacher.third.goals.second, star: 0, completed: false)

puts "All done!"