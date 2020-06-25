require 'pry'

# your code goes here
class Person
        attr_accessor :bank_account, :happiness, :hygiene
        attr_reader :name

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness=(index)
        if index >= 10 
            @happiness = 10
        elsif index <= 0 
            @happiness = 0
        else 
            @happiness = index
        end
    end
    def hygiene=(index)
        if index >= 10 
            @hygiene = 10
        elsif index <= 0 
            @hygiene = 0
        else 
            @hygiene = index
        end

        def happy?
            @happiness > 7
        end
        def clean?
            @hygiene > 7
        end

        def get_paid(salary)
            @bank_account += salary
            return "all about the benjamins"
        end

        def take_bath
                self.hygiene += 4
            '♪ Rub-a-dub just relaxing in the tub ♫'
        end
        
        def work_out
         self.happiness += 2
         self.hygiene -= 3
         "♪ another one bites the dust ♫"
        end

        def call_friend(friend)
            self.happiness += 3
            friend.happiness += 3
            if self.name == "Penelope"
           return "Hi Felix! It's Penelope. How are you?"
            else 
                "Hi Penelope! It's Felix. How are you?"
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
    
end