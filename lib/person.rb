
require 'pry'

class Person
    attr_reader :name 
    attr_accessor :bank_account, :happiness 

    def initialize(name, bank_account, happiness)
        @name = name 
        @bank_account = 25 
        @happiness = 8
        @hygiene = 8 
    end
#binding.pry




end