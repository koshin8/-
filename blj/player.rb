require_relative "deck"

class Player
    attr_reader :name,:cards
    def initialize(name)
        @name = name
        @cards =[]

    end

    def deal(deck,number)
        @cards << deck.draw(number)
        @cards.flatten!
    end

    def score
        result = 0
        ace =[]
        @cards.each do |card|
            if card.score == 1
                ace << card
            end
            result += card.score
        end
        #Aの時の処理
        if result <= 11 && ace.size > 0
            result += 10 
            return result
        end

        return result
    end

    def over
        if score > 21
            puts "21を超えたので#{@name}の負けです。"
            puts "ゲームを終了します。"
            exit
        end
        
    end

    # def score
    #     result = 0
    #     @cards.each do |card|
    #         if card.score == 1
    #             return result += 11
    #         end  
    #         result += card.score
    #     end
    #     if 
    #     return result
    # end

end

