deck = [['H', '2'], ['H', '3'], ['H', '4'], ['H', '5'], ['H', '6'], ['H', '7'], 
       ['H', '8'], ['H', '9'], ['H', '10'], ['H', 'J'], ['H', 'Q'], ['H', 'K'],
       ['H', 'A'], ['S', '2'], ['S', '3'], ['S', '4'], ['S', '5'], ['S', '6'],
       ['S', '7'], ['S', '8'], ['S', '9'], ['S', '10'], ['S', 'J'], ['S', 'Q'],
       ['S', 'K'], ['S', 'A'], ['D', '2'], ['D', '3'], ['D', '4'], ['D', '5'], 
       ['D', '6'], ['D', '7'], ['D', '8'], ['D', '9'], ['D', '10'], ['D', 'J'],
       ['D', 'Q'], ['D', 'K'], ['D', 'A'], ['C', '2'], ['C', '3'], ['C', '4'], 
       ['C', '5'], ['C', '6'], ['C', '7'], ['C', '8'], ['C', '9'], ['C', '10'], 
       ['C', 'J'], ['C', 'Q'], ['C', 'K'], ['C', 'A']]
loop do
	player_hand = []
	computer_hand = []
  puts "hello welcome to 21!"
	puts "Your hand"
	p player_hand << deck.sample << deck.sample
	deck = deck - player_hand

	puts "Computer card"
	computer_hand << deck.sample << deck.sample
	p computer_hand[1]
	deck = deck - computer_hand

	def total(cards)
	  # cards = [['H', '3'], ['S', 'Q'], ... ]
	  values = cards.map { |card| card[1] }

	  sum = 0
	  values.each do |value|
	    if value == "A"
	      sum += 11
	    elsif value.to_i == 0 # J, Q, K
	      sum += 10
	    else
	      sum += value.to_i
	    end
	  end

	  # correct for Aces
	  values.select { |value| value == "A" }.count.times do
	    sum -= 10 if sum > 21
	  end

	  sum
	end

	def busted?(player_hand)
	 	if total(player_hand) > 21
	 		true
	 	end
	end

	answer = nil
	loop do
		puts "your total is #{total(player_hand)}"
	  puts "hit or stay?"
	  answer = gets.chomp
	  break if answer == 'stay' 
	  p player_hand << deck.sample
	  deck = deck - player_hand
	  break if busted?(player_hand) 
	end

	puts "you chose to stay!" if answer == 'stay'

	loop do
	  break if total(computer_hand) >= 17 
	  computer_hand << deck.sample
	  deck = deck - computer_hand
	  puts "computers new card and total is #{total(computer_hand)}"
	  p computer_hand[0..computer_hand.size]
	end

	if total(computer_hand) > 21
		puts "computer busted you win!"
	elsif  total(computer_hand) > total(player_hand)
	  puts "you lose computer total: #{total(computer_hand)}. player total: #{total(player_hand)}"
	else
		puts "you win!"
	end

	if busted?(player_hand)
	  puts "#{total(player_hand)} Oh no! you busted!"
	end

	puts "want to play again?"
	choice = gets.chomp
	break if choice == "no"
end