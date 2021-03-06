Shoes.app title: "Draft Lottery App" do
		def removeInstancesOf(array, element)
			until not array.include?(element)
				array.delete(element)
			end
			array
		end
	class Team
		attr_accessor :name
		attr_accessor :email
		attr_accessor :balls
		def initialize(name, email, balls)
			@name = name
			@email = email
			@balls = balls.to_i
		end
	end
	#todo make delete team logic, add lottery logic
	def printTeams(teamArray)
		printWords = ""
		teamArray.each do |team|
			printWords << "Team Name: #{team.name}       Email: #{team.email}       Lottery Balls: #{team.balls}\n"
		end
		return printWords
	end

	def printTeamOrder(teamArray)
		printWords = ""
		i = 1
		teamArray.each do |team|
			printWords << "#{i}. Team Name: #{team.name}\n"
			i += 1
		end
		return printWords
	end

	def doLottery(teamList)
		draftOrder = []
		lotteryBalls = []
		teamList.each do |team|
			team.balls.times{|i| lotteryBalls << team}
		end
		while not lotteryBalls.empty?
			teamPicked = lotteryBalls.shuffle![0] 
			draftOrder << teamPicked
			lotteryBalls = removeInstancesOf(lotteryBalls,teamPicked)
			para "Hello World!"
		end
		return draftOrder
	end

	@teams = []
	@title = title "Welcome to The Inner Circle Draft Lottery", align: "center"
	stack do
		para "Current Submission: "
		@text = para ""
		flow do
			para "Team Name"
			@team = edit_line width: 100
			para "Team Email"
			@teamEmail = edit_line width:100
			para "Lottery Balls"
			@lottery = edit_line width:100
		end
		@newTeam = button("Save/New Team")
		@submit = button("Submit")
		@newTeam.click do
			@teams << Team.new(@team.text, @teamEmail.text, @lottery.text)
			@text.replace(printTeams(@teams))
			@team.text = ""
			@teamEmail.text = ""
			@lottery.text = ""
		end
		@submit.click do 
			para "Hello World"
			draftOrder = doLottery(@teams)
			stack do
				para "Draft Order"
				order = 1
				draftOrder.each do |i| 
					para "#{order}. #{i.name}"
					order += 1
				end
			end
		end
	end
end