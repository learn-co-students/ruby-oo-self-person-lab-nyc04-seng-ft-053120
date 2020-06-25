# your code goes here
require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness , :hygiene

    def initialize(name) #variables we can change 
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end

    # def bank_account
    #     @balance = 25.0
    # end
    def happiness 
       if @happiness > 10
            @happiness = 10
       end
        if @happiness < 0
                @happiness = 0
        end
            @happiness
       end 
    
    def hygiene 
        if @hygiene > 10
            @hygiene = 10
        end
        if @hygiene < 0
            @hygiene = 0
        end
        @hygiene
    end
    
    def happy?
        happiness > 7
    end
        
    def clean?
        hygiene > 7
    end

    
    def get_paid(salary)
        @salary = salary
        @bank_account += @salary
        return 'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        if self.name == "Penelope"
        return "Hi Felix! It's Penelope. How are you?"
        else  
        return "Hi Penelope! It's Felix. How are you?"
        end
    end
    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            "blah blah sun blah rain"
        else
            'blah blah blah blah blah' 
        end
       

    end
        

end
       
    
   
  
    
