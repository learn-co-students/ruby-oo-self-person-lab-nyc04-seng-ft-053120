require 'pry'

class Person
    attr_reader :name,
    attr_accessor :balance, :happiness_points, :hygiene_points

    def initialize(name,balance,happiness_points,hygiene_points)
        @name=name
        @balance=balance
        @happiness_points=happiness_points
        @hygiene_points=hygiene_points
    end

    def clean?
        self.hygiene_points>7
    end

    def happy?
        self.happiness_points>7
    end

    def get_paid(salary)
        self.balance+=salary
        "all about the benjamins"
    end

    def take_bath
        if hygiene_points < 7
            self.hygiene_points += 4
            "♪ Rub-a-dub just relaxing in the tub ♫"
        end    
    end
    
    def work_out
        if hygiene_points >= 3
            self.hygiene_points +- 3
        end
        
        if happiness_points <= 8
            self.happiness_points += 2
        end

        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        
        if self.happiness_points <= 7
            self.happiness_points += 3
        end
        
        if friend.happiness_points <= 7
            friend.happiness_points += 3
        end
        binding.pry

        "Hi #{friend.name}! It's #{self.name}. How are you?"

    end

end

