# your code goes here
require 'pry'
class Person

    attr_reader :name, :health, :hygiene, :happiness
    attr_writer
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @health
        @hygiene = 8
        @happiness = 8
    end

    def name
        @name
    end

    def bank_account=(bank_account)
        @bank_account = bank_account
    end

    def happiness= (happiness)
            @happiness = happiness
            @happiness = 10 if happiness > 10
            @happiness = 0 if happiness < 0
    end

    def hygiene= (hygiene)
        @hygiene = hygiene
        @hygiene = 10 if hygiene > 10
        @hygiene = 0 if hygiene < 0
    end
    
    def happy?
        #@happiness > 7
        if self.happiness > 7
            true
        else
            false
        end
    end
    
    def clean?
        #@hygiene > 7
        if self.hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
    end

    def take_bath 
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        # The method should
        # increment the caller and the callee's happiness points by three. 
        # If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"
        #[friend, self].each {|o| o.happiness += 3 }
        
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend,topic)
        # If the topic is politics, 
        # both people get sadder and the method returns "blah blah partisan blah lobbyist".
        # If the topic is weather, 
        # both people get a little happier and the method returns "blah blah sun blah rain".
        # If the topic is not politics or weather, 
        # their happiness points don't change and the method returns "blah blah blah blah blah".

        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else topic == "other" 
            "blah blah blah blah blah"
        end
    end


end
