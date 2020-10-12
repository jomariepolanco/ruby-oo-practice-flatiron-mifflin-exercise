class Employee
    attr_accessor :name, :salary, :manager 
    
    @@all = [] 

    def initialize(name, salary)
        @name = name 
        @salary = salary
        @manager = manager 
        @@all << self 
    end

    def self.all
        @@all 
    end 

    def manager_name
        self.manager.name 
    end

    def self.paid_over(amount)
        self.all.select {|employee| employee.salary > amount}
    end

    def self.find_by_department(department)
        self.all.find {|employee| employee.manager.department == department}
    end

    def tax_bracket
        self.class.all.select do |employee|
            employee.salary.between?((self.salary - 1000),(self.salary + 1000))
        end
    end
end

#employee belongs to one department-
#employee belong to one manager-