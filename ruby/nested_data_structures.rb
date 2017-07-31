football_team = {
	players: {
		quarterback: 'Russell',
		cornerback: 'Richard'
	},
	coaches: {
		head: "Steve",
		defensive_cord: nil,
		offensive_cord: 'frank'
	},
	faculty: {
		stadium_employees: {
			groundskeepers: 8,
			ticket_sales: 10,
			concessions: 30
		},
		general_manager: 'John',
		owner: 'Paul'
	}
}

p football_team[:faculty][:owner]
football_team[:coaches][:defensive_cord] = 'Amanuel'
p football_team[:coaches]