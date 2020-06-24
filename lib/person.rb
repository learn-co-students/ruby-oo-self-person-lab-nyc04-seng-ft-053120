require 'pry'

class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name=name
        @bank_account=25
        @happiness=8
        @hygiene=8
    end

    def clean?
        self.hygiene>7
    end

    def happy?
        self.happiness>7
    end

    def get_paid(salary)
        self.balance+=salary
        "all about the benjamins"
    end

    def take_bath
        if hygiene < 7
            self.hygiene += 4
            "♪ Rub-a-dub just relaxing in the tub ♫"
        end    
    end
    
    def work_out
        if hygiene >= 3
            self.hygiene +- 3
        end
        
        if happiness <= 8
            self.happiness += 2
        end

        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        
        if self.happiness <= 7
            self.happiness += 3
        end
        
        if friend.happiness <= 7
            friend.happiness += 3
        end
        #binding.pry

        "Hi #{friend.name}! It's #{self.name}. How are you?"

    end

end

