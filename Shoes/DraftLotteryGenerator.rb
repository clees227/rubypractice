Shoes.app title: "Draft Lottery App" do
	#todo make "team class", add lottery balls, add lottery logic
	def printHash(teamHash)
		printWords = ""
		teamHash.each do |key, value|
			printWords << "Team Name: #{key} Email: #{value}\n"
		end
		return printWords
	end
	@teams = Hash.new
	@title = title "Welcome to The Inner Circle Draft Lottery", align: "center"
	stack do
		@text = para ""
		flow do
			para "Team Name"
			@team = edit_line width: 100
			para "Team Email"
			@email = edit_line width:100
		end
		@newTeam = button("Save/New Team")
		@submit = button("Submit")
		@newTeam.click do
			@teams[@team.text] = @email.text
			@text.replace(printHash(@teams))
			@team.text = ""
			@email.text = ""
		end
		@submit.click do 
			para @team2.text
		end
	end
end