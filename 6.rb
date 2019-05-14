module Test
    def result()
        average = (@nota1 + @nota2)/2
        if average >= 4
            puts "Nota #{average}. Estudiante aprobado"
        else
            puts "Nota #{average}. Estudiante reprobado"
        end
    end
end

module Attendance
    def student_quantity
        self.get_quantity
    end
end

class Student
    @@quantity = 0
    include Test
    extend Attendance
    def initialize(name, nota1 = 4, nota2 = 4)
        @name = name
        @nota1 = nota1
        @nota2 =nota2
        @@quantity += 1
    end

    def self.get_quantity
        @@quantity
    end
end

arr = []
10.times do |e|
    arr.push(Student.new("alumno", rand(1..7), rand(1..7)))
end

arr.each do |i|
    print i.result
end

total_students = Student.get_quantity
puts "Total de estudiantes = #{total_students}"
