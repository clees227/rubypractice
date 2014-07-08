class Board
	@currentPlayer = ""
	@currentSymbol = ""
	@board = []
	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2
		@currentPlayer = @player1
		@currentSymbol = "X"
		@board = [[" ", " ", " "],[" ", " ", " "], [" ", " "," "]]
		@columns = ['1','2','3']
		@rows = ['A','B', 'C']
	end

	def printBoard
		puts "Current Player = #{@currentPlayer}"
		puts "Current Symbol = #{@currentSymbol}"
		
		puts "  #{@rows.join(" ")}"
		@board.each_with_index do |row, i|
			print @columns[i]
			puts " #{row.join("|")}"
			puts "  _ _ _" unless i == 2 
		end
	end

	def checkWin
		return true
	end

	def getGuess
		guessing = true
		until guessing == false do
			puts "#{@currentPlayer} please select a guess seperated by a comma (ex. letter,number)"
			input = gets.chomp
			guess = input.split(",")
			col = guess[0].upcase
			row = guess[1].to_s
			if @rows.include?(col) && @columns.include?(row) 
				colNum= -99
				rowNum = row.to_i-1
				case col
					when 'A'
						colNum = 0
					when 'B'
						colNum = 1
					when 'C'
						colNum = 2
					else
						puts "Error"
						exit
				end
				if @board[rowNum][colNum] == " "
					@board[rowNum][colNum] = @currentSymbol
					@currentSymbol = @currentSymbol == 'X' ? 'O' : 'X'
					@currentPlayer = @currentPlayer == @player1 ? @player2 : @player1
					guessing = false
				end
			end
		end
	end
end

puts "Enter Player 1's name"
player1 = gets.chomp
puts "Enter Player 2's name"
player2 = gets.chomp
board = Board.new(player1.to_s,player2.to_s)
board.printBoard
board.getGuess
board.printBoard
board.getGuess
board.printBoard