require 'pry'
class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    #getter
    def name
        @name
    end
    #getter
    def bank_account
        @bank_account
    end
    #setter
    def bank_account=(bank_account)
        @bank_account = bank_account
    end
    #getter
    def happiness
        @happiness
    end
    #setter
    def happiness=(happiness)
        @happiness = happiness
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        end
    end
    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end
    #getter
    def hygiene
        @hygiene
    end
    #setter
    def hygiene=(hygiene)
        @hygiene = hygiene
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        end
    end
    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end
    
    #getter
    def get_paid(salary)
        @salary
        
    end
    #setter
    binding.pry
    def get_paid=(salary)
        @salary = salary
        @bank_account += @salary
    end
end
# person_a = Person.new(“Shawn”)
# puts person_a.name
# puts person_a.bank_account