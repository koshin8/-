require_relative "card"

class Deck
    attr_reader :cards
    def initialize
        @cards = []
        
        Card::SUITS.each do |suit|
            Card::NUMBERS.each do |number|
                @cards << Card.new(suit,number)
                
            end
        end
        @cards.shuffle!
        
    end

    def draw(number)
        @cards.pop(number)
    end

end

# deck = Deck.new
# puts deck.draw(1)









    # class Deck
    #     def initialize()
    #         card = Card.new
    #        @card = card
    #        @score = 0
    #     end
    
    #     def draw
    #         # puts "#{@card.suit}の#{@card.num.sample}です。"
    #         suit = @card.suit.sample
    #         num = @card.num.sample
    #         # puts "#{suit}の#{num}です。"
    #         # return "#{suit}の#{num}"
    #         case num
    #         when "J"
    #           @score = 10
    #         when "Q"
    #           @score = 10
    #         when "K"
    #           @score = 10
    #         when "A"
    #           @score = 1
    #         else
    #           @score = num.to_i
    #         end
            
    #     end 
    
    # end
    
    # du = Deck.new
    # du.draw