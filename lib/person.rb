class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  
  def initialize(name)
    @name = name 
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end 
  
  def happiness=(points)
    @happiness = points
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0 
  end
  
  def hygiene=(points)
    @hygiene = points
    @hygiene = 10 if self.hygiene > 10
    @hygiene = 0 if self.hygiene < 0
  end
  
  def happy?
    self.happiness > 7
  end 
  
  def clean?
    self.hygiene > 7
  end
  
  def get_paid(salary)
    self.bank_account += salary
    return "all about the benjamins"
  end
  
  def test 
    self.happiness = 5 
  end 
  
  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end 
  
  def work_out
    self.happiness += 2 
    self.hygiene -= 3 
    return "♪ another one bites the dust ♫"
  end
  
  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(person, topic)
    first_word = "blah"
    second_word = "blah"
    
    case topic
    when "politics"
      self.happiness -= 2 
      person.happiness -= 2 
      first_word, second_word = ["partisan", "lobbyist"]
    when "weather"
      self.happiness += 1 
      person.happiness += 1 
      first_word, second_word = ["sun", "rain"]
    end 
    
    return "blah blah #{first_word} blah #{second_word}"
  end 
end
