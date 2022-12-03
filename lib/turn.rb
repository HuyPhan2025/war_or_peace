class Turn
    attr_reader :player1, :player2, :spoils_of_war
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @spoils_of_war = []

    end
    
    def type
        return :basic if @player1.deck.cards.size <= 2 || @player2.deck.cards.size <= 2

        if player1.deck.rank_of_cards_at(0) == player2.deck.rank_of_cards_at(0) && @player1.deck.rank_of_cards_at(2) == @player2.deck.rank_of_cards_at(2)
            :mutually_assured_destruction
        elsif player1.deck.rank_of_cards_at(0) == player2.deck.rank_of_cards_at(0)
            :war
        else player1.deck.rank_of_cards_at(0) != player2.deck.rank_of_cards_at(0)
            :basic
        end
    end
        
    
    def winner
        return winner_basic if type == :basic
        
        return winner_war if type == :war
        
        return "No Winner" if type == :mutually_assured_destruction
    end

    def winner_basic
        if player1.deck.rank_of_cards_at(0) > player2.deck.rank_of_cards_at(0)
            player1
       else
            player2
       end
    end

    def winner_war
        if player1.deck.rank_of_cards_at(2) > player2.deck.rank_of_cards_at(2) 
            player1
        else 
            player2
        end
    end

    def pile_cards
        if type == :basic
            spoils_of_war << player1.deck.remove_card
            spoils_of_war << player2.deck.remove_card
        elsif type == :war
            3.times do
                spoils_of_war << player1.deck.remove_card
                spoils_of_war << player2.deck.remove_card
            end
        else 
            3.times do
                player1.deck.remove_card
                player2.deck.remove_card
            end
        end
    end

    def award_spoils(winner)
        #winner.deck.cards << spoils_of_war.shift until spoils_of_war.empty?
        # shuffle_spoil = spoils_of_war.shuffle
        # winner.deck.cards << shuffle_spoil.shift until shuffle_spoil.empty?
        winner.deck.add_card(@spoils_of_war.shuffle!.shift) until @spoils_of_war.empty?
    end

end