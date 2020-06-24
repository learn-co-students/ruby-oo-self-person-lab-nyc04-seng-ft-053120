class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(point)
    if point > 10
      @happiness = 10
    elsif point < 0
      @happiness = 0
    else
      @happiness = point
    end
  end

  def hygiene=(point)
    if point > 10
      @hygiene = 10
    elsif point < 0
      @hygiene = 0
    else
      @hygiene = point
    end
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    return 'all about the benjamins'
  end

  def take_bath
    self.hygiene += 4
    return '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    return '♪ another one bites the dust ♫'
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      self.happiness -= 2
      friend.happiness -=2
      return 'blah blah partisan blah lobbyist'
    when "weather"
      self.happiness += 1
      friend.happiness += 1
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end
end