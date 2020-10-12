require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
john = Employee.new("John", 50000)
xavier = Employee.new("Xavier", 40000)
angelica = Employee.new("Angelica", 40500)

man1 = Manager.new("Man1", "paper", 32)
man2 = Manager.new("Man2", "bins", 18)
man3 = Manager.new("Man3", "sales", 56)
man4 = Manager.new("Man4", "printer", 25)

john.manager = man1
xavier.manager = man3
angelica.manager = man4 

binding.pry
puts "done"
