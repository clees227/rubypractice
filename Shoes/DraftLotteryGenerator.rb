Shoes.app title: "Draft Lottery App" do
	class Team
		attr_accessor :name
		attr_accessor :email
		attr_accessor :balls
		def initialize(name, email, balls)
			@name = name
			@email = email
			@balls = balls
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
		end
		@submit.click do 
			para @team2.text
		end
	end
end