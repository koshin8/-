

class Card 
    attr_reader :suit,:num
    SUITS = %w(ハート スペード ダイヤ クローバー).freeze
    NUMBERS = %w(2 3 4 5 6 7 8 9 10 J Q K A).freeze
    def initialize (suit,number)
        @suit = suit
        @number = number
    end
    
    def to_s
        "#{@suit}の#{@number}"
    end
    
    def score
        case @number
        when "A" then 1
        when "K", "Q", "J" then 10
        else @number.to_i
        end
    end
    
end
# card = Card.new("ハート",2)
# puts card.point
# puts Card::SUITS
# case num
#     num == 10
#     num = "J"

# array = (1..4).to_a
# random_index = rand (array.size)
# suit = array[random_index]
# @suit =["ダイヤ","ハート","スペード","クローバー"]
# @num = [2,3,4,5,6,7,8,9,10,"J","Q","K","A"]
# card = Card.new
# puts card.suit
# puts card.num


# puts "ディーラーの引いたカードは#{@card.suit.sample}の#{deal_1 = @card.num.sample}です。"
# puts "ディーラーの引いた2枚目のカードは分かりません。"
# puts "ディーラーの引いたカードは#{@card.suit.sample}の#{deal_2 = @card.num.sample}です。"
# @di4 = Change.new(@hand_1,@hand_2)
# @di4.discri
# puts "#{@pl.player}の現在の得点は#{@di4.discri}です。カードを引きますか？。(Y/N)"
# while yn = gets.chomp
#     break if yn == "Y"|| yn == "N"
#     puts "YかNを入力てください"
# end
# puts "#{@pl.player}の引いたカードは#{@card.suit.sample}の#{@hand_1 = @card.num.sample}です。"
# puts "#{@pl.player}の引いたカードは#{@card.suit.sample}の#{@hand_2 = @card.num.sample}です。"

# def play
#     puts "ブラックジャックを開始します。"
#     puts "#{@pl.player}の引いたカードは#{hand_1 = @deck.draw}です。"
#     puts "#{@pl.player}の引いたカードは#{hand_2 = @deck.draw}です。"
  
# end