require_relative 'app_config'
require_relative 'models/player'
require_relative 'models/team'

AppConfig.establish_connection

#players = Player.all
#teams = Team.all

#player = Player.find(10);
#p player
#p player.number
#
#player = Player.where("number > 17")
#p player
#p player.first.number
#
#player = Player.find_by(number: 17)
#p player
#
#player = Player.find_by("number > 17")
#p player

player = Player.find(10)
p player.team

team = Team.first
p team
players = team.players.where("number > 33").order(:number).pluck(:number, :name)

players.each do |p|
  puts "#{p[0]} - #{p[1]}"
end

nimas_query = Player.where("number > 33").where(team_id: 1).order(:number)
p nimas_query
