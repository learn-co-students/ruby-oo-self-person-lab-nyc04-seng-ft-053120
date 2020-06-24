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
end
