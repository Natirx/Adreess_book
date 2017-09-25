class Person
    attr_accessor :company, :age, :last_name
    attr_reader :first_name, :name
    
    def initialize(first_name, age, last_name = nil)
        @first_name = first_name
        @age = age
        @name = "#{first_name} #{last_name}"
        
    end
    def contact 
        "#{name} (#{company})"
    end
end