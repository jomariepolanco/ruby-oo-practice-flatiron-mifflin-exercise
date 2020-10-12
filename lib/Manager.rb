class Manager

    attr_accessor :name, :department, :age 

    @@all = []

    def initialize(name, department, age)
        @name = name 
        @department = department 
        @age = age
        @@all << self 
    end

    def employees 
        Employee.all.select {|employee| employee.manager == self}
    end

    def self.all
        @@all 
    end

    def hire_employee(name, salary)
        employee = Employee.new(name, salary)
        employee.manager = self 
        employees 
    end

    def self.all_departments
        self.all.map {|manager| manager.department}
    end

    def self.average_age
        age_sum = self.all.map {|manager| manager.age}.inject(:+)
        avg = age_sum / self.all.count
        avg.to_f
    end

end

#manager belongs to one department-
#manager has many employees-