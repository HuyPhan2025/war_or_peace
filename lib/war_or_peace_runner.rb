require './lib/card'
require './lib/game'


        card1 = Card.new(:heart, 'Jack', 11)
        card2 = Card.new(:heart, '10', 10)    
        card3 = Card.new(:heart, '9', 9)    
        card4 = Card.new(:diamond, 'Jack', 11)    
        card5 = Card.new(:heart, '8', 8)    
        card6 = Card.new(:diamond, 'Queen', 12)    
        card7 = Card.new(:heart, '3', 3)    
        card8 = Card.new(:diamond, '2', 2)   
        card9 = Card.new(:club, '8', 8) 
        card10 = Card.new(:club, 'Q', 12)
        card11 = Card.new(:diamond, '10', 10)
        card12 = Card.new(:club, '5', 5) 
        card13 = Card.new(:diamond, '5', 5) 
        card14 = Card.new(:club, '3', 3) 
        card15 = Card.new(:club, '2', 2)
        card16 = Card.new(:spades, 'Ace', 14)
        card17 = Card.new(:club, '6', 6) 
        card18 = Card.new(:spades, 'King', 13)
        card19 = Card.new(:spades, '6', 6) 
        card20 = Card.new(:heart, '6', 6) 
        card21 = Card.new(:diamond, 'Ace', 14)
        card22 = Card.new(:spades, '5', 5)
        card23 = Card.new(:heart, '5', 5)
        card24 = Card.new(:club, 'Ace', 14)
        card25 = Card.new(:spades, '3', 3)
        card26 = Card.new(:spades, '10', 10)
        card27 = Card.new(:spades, '7', 7)
        card28 = Card.new(:club, '7', 7)
        card29 = Card.new(:heart, '4', 4)
        card30 = Card.new(:spades, '4', 4)
        card31 = Card.new(:heart, '7', 7)
        card32 = Card.new(:club, 'King', 13)
        card33 = Card.new(:diamond, '3', 3)
        card34 = Card.new(:diamond, '6', 6)
        card35 = Card.new(:diamond, 'King', 13)
        card36 = Card.new(:spades, 'Jack', 11)
        card37 = Card.new(:club, 'Jack', 11)
        card38 = Card.new(:club, '10', 10)
        card39 = Card.new(:club, '4', 4)
        card40 = Card.new(:spades, '2', 2)
        card41 = Card.new(:heart, 'Ace', 14)
        card42 = Card.new(:diamond, '9', 9)
        card43 = Card.new(:diamond, '8', 8)
        card44 = Card.new(:diamond, '7', 7)
        card45 = Card.new(:spades, '9', 9)
        card46 = Card.new(:spades, '8', 8)
        card47 = Card.new(:diamond, '4', 4)
        card48 = Card.new(:heart, 'King', 13)
        card49 = Card.new(:heart, 'Queen', 12)
        card50 = Card.new(:club, '9', 9)
        card51 = Card.new(:spades, 'Queen', 12)
        card52 = Card.new(:heart, '2', 2)


        cards = [card1, card2, card3, card4, card5, card6, card7, card8, card9, card10, card11, card12, card13, card14, card15, card16, card17, card18, card19, card20, card21, card22, card23, card24, card25, card26, card27, card28, card29, card30, card31, card32, card33, card34, card35, card36, card37, card38, card39, card40, card41, card42, card43, card44, card45, card46, card47, card48, card49, card50, card51, card52]
        game = Game.new(cards)
        game.start