require_relative "deck"
require_relative "player"

class Game
    def initialize
        @deck = Deck.new
        @player = Player.new("あなた")
        @dealer = Player.new("ディーラー")
    end

    def play
        puts "ブラックジャックを開始します"
        @player.deal(@deck,2)

        puts "#{@player.name}が引いたカードは#{@player.cards[0]}です"
        puts "#{@player.name}が引いたカードは#{@player.cards[1]}です"
        @dealer.deal(@deck,2)
        puts "#{@dealer.name}が引いたカードは#{@dealer.cards[0]}です"
        puts "#{@dealer.name}が引いた2枚目のカードは分かりません。"
                                            @dealer.cards[1]
        puts "#{@player.name}の現在の得点は#{@player.score}です。カードを引きますか？(Y/N)"
        draw_card = gets.chomp
        i = 2
        while draw_card == "y"
            @player.deal(@deck,1)
            puts "#{@player.name}が引いたカードは#{@player.cards[i]}です"
            @player.over
            puts "#{@player.name}の現在の得点は#{@player.score}です。カードを引きますか？(Y/N)"  
            draw_card = gets.chomp
            i += 1
        end

            puts "#{@dealer.name}が引いた2枚目のカードは#{@dealer.cards[1]}です。"
            puts "#{@dealer.name}の現在の得点は#{@dealer.score}です。"
        ii = 2  
        while @dealer.score < 17
            @dealer.deal(@deck,1)
            puts "#{@dealer.name}が引いたカードは#{@dealer.cards[ii]}です"
            @dealer.over
            ii += 1     
        end
        puts "#{@player.name}の得点は#{@player.score}です"
        puts "#{@dealer.name}の得点は#{@dealer.score}です"
        
        if @player.score == @dealer.score 
            puts "引き分けです"
        elsif @player.score > @dealer.score
            puts "#{@player.name}の勝ちです!"
        elsif @player.score < @dealer.score
            puts "#{@dealer.name}の勝ちです!"
        end
        
        puts "ブラックジャックを終了します。"

        

    

        
    end
end

# game = Game.new
# game.play