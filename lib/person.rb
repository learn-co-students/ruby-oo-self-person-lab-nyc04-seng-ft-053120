require 'pry'


class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def hygiene=(hygiene)
        @hygiene = stat_changer(hygiene)
    end

    def happiness=(happiness)
        @happiness = stat_changer(happiness)
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
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
        social_happiness(friend, 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            social_happiness(friend, -2)
            "blah blah partisan blah lobbyist"
        when "weather"
            social_happiness(friend, 1)
            "blah blah sun blah rain"
        else "blah blah blah blah blah"
        end
    end

    private

    def stat_changer(modified_stat, min=0, max=10)
        modified_stat = max if modified_stat > 10
        modified_stat = min if modified_stat < 0
        modified_stat
    end

    def social_happiness(friend, change)
        self.happiness += change
        friend.happiness += change
    end

end