class Board
	attr_reader :currentPlayer
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
		if @board[0][0] != " " && @board[0][0] == @board[0][1] && @board[0][1] == @board[0][2]
			return true
		elsif @board[1][0] != " " && @board[1][0] == @board[1][1] && @board[1][1] == @board[1][2]
			return true
		elsif @board[2][0] != " " && @board[2][0] == @board[2][1] && @board[2][1] == @board[2][2]
			return true
		elsif @board[0][0] != " " && @board[0][0] == @board[1][0] && @board[1][0] == @board[2][0]
			return true
		elsif @board[0][1] != " " && @board[0][1] == @board[1][1] && @board[1][1] == @board[2][1]
			return true
		elsif @board[0][2] != " " && @board[0][2] == @board[1][2] && @board[1][2] == @board[2][2]
			return true
		elsif @board[0][0] != " " && @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2]
			return true
		elsif @board[2][0] != " " && @board[2][0] == @board[1][1] && @board[1][1] == @board[0][2]
			return true
		else
		end
		return false
	end

	def checkTie
		@board.each do |bRow|
			bRow.each do |bCol|
				if bCol == " "
					return false
				end
			end
		end
		return true;
	end

	def getGuess
		guessing = true
		input = ""
		until guessing == false && input.length == 2 do
			puts "#{@currentPlayer} please select a guess (ex. a1)"
			input = gets.chomp.to_s
			a , b = input.split('')
			col = a.upcase
			row = b.to_s
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
currentPlayer = ""
keepPlaying = 'y'
kPInputs = ['y','n']
until keepPlaying == 'n' do
	board = Board.new(player1.to_s,player2.to_s)
	until board.checkWin == true || board.checkTie == true do
		board.printBoard
		currentPlayer = board.currentPlayer
		board.getGuess
	end
	board.printBoard
	if board.checkTie
		puts "Nobody Wins! Would you like to play again(y/n)?"
	else
		puts "#{currentPlayer} Wins! Would you like to play again(y/n)?"
	end
	rightInput = false
	until rightInput == true
		
		keepPlaying = gets.chomp.downcase
		rightInput = kPInputs.include?(keepPlaying) ? true : false
	end
end