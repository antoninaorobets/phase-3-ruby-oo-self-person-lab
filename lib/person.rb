# your code goes here
require 'pry'
class Person
    attr_reader :name, :hygiene, :happiness

    attr_accessor :bank_account
    def initialize(name)
        @name = name
        @bank_account =25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(new_happiness)  
    #     case new_happiness
    #     when new_happiness <= 0 then @happiness = 0
    #     when new_happiness >= 10 then @happiness = 10
    #     when (new_happiness > 0 and new_happiness < 10) then @happiness = new_happiness
    #    end
        if new_happiness <= 0 
            @happiness = 0
        end
        if new_happiness >= 10 
            @happiness = 10
        end
        if new_happiness > 0 and new_happiness < 10 
            @happiness = new_happiness
        end
    end

    def hygiene=(new_hygiene)
        if new_hygiene <= 0 
            @hygiene = 0
        end
        if new_hygiene >= 10 
            @hygiene = 10
        end
        if new_hygiene > 0 and new_hygiene < 10 
            @hygiene = new_hygiene
        end
    end

    def happy?
        @happiness>7 ? true : false
    end

    def clean?
        @hygiene>7 ? true : false
    end

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins" 
    end

    def take_bath
        self.hygiene +=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -=3
        self.happiness +=2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness +=3
        friend.happiness +=3
        # binding.pry
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -=2
            friend.happiness -=2
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness +=1
            friend.happiness +=1
            return 'blah blah sun blah rain'
        else 
            return 'blah blah blah blah blah'
        end
    end
end