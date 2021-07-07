class Person 
    attr_reader :name
    attr_writer
    attr_accessor :bank_account, :happiness, :hygiene
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def condition_check(condition)
    condition = 10 if condition > 10
    condition = 0 if condition < 0
    condition
  end

  def happiness
    condition_check(@happiness)
  end

  def hygiene
    condition_check(@hygiene)
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    p "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    p "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out 
    self.happiness += 2
    self.hygiene -= 3
    p "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    p "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when "politics"
         self.happiness -= 2
         person.happiness -= 2
         p "blah blah partisan blah lobbyist"
    when "weather"
        self.happiness += 1
        person.happiness += 1
        p "blah blah sun blah rain"
    else 
        p "blah blah blah blah blah"
        end
    end
end
