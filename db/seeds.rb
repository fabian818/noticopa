# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Tournament.create(name: 'Copa America', init_date: '2016-05-10', end_date: '2016-06-29')

team1 = Team.create(name: 'Estados Unidos')
team2 = Team.create(name: 'Colombia')
team3 = Team.create(name: 'Chile')
team4 = Team.create(name: 'Argentina')

match1 = Match.create(tournament_id: 1, date: '2016-05-22', hour: '15:00:00')
match2 = Match.create(tournament_id: 1, date: '2016-05-28', hour: '20:00:00')
match3 = Match.create(tournament_id: 1, date: '2016-06-10', hour: '13:00:00')
match4 = Match.create(tournament_id: 1, date: '2016-06-20', hour: '10:00:00')
match5 = Match.create(tournament_id: 1, date: '2016-06-15', hour: '11:00:00')
match6 = Match.create(tournament_id: 1, date: '2016-05-23', hour: '23:00:00')

empate = Type.create(name: 'Empate', points: 1)
victoria = Type.create(name: 'Victoria', points: 3)
derrota = Type.create(name: 'Derrota', points: 0)

# team1 vs team 2, match 1, empates
detail1 = Detail.create(match: match1, team: team1, type: empate, score: 2)
detail1 = Detail.create(match: match1, team: team2, type: empate, score: 2)

# team1 vs team 3, match 2, victoria
detail1 = Detail.create(match: match2, team: team1, type: victoria, score: 3)
detail1 = Detail.create(match: match2, team: team3, type: derrota, score: 1)

# team1 vs team 4, match 3, victoria
detail1 = Detail.create(match: match3, team: team1, type: victoria, score: 7)
detail1 = Detail.create(match: match3, team: team4, type: derrota, score: 0)

# team2 vs team 3, match 4, perdida
detail1 = Detail.create(match: match4, team: team2, type: nil, score: nil)
detail1 = Detail.create(match: match4, team: team3, type: nil, score: nil)

# team2 vs team 4, match 5, empate
detail1 = Detail.create(match: match5, team: team2, type: nil, score: nil)
detail1 = Detail.create(match: match5, team: team4, type: nil, score: nil)

# team3 vs team 4, match 6, perdida
detail1 = Detail.create(match: match6, team: team3, type: derrota, score: 0)
detail1 = Detail.create(match: match6, team: team4, type: victoria, score: 1)