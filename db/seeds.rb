# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Drop everything!
Mongoid.purge!

# Add all the games
games = [
         { "name" => "Scavenger Hunt", "referee" => "Sam Ritter" },
         { "name" => "Saltine Challenge", "referee" => "Wisdom Omuya" },
         { "name" => "Avalon", "referee" => "Amalia Hawkins" },
         { "name" => "Uno", "referee" => "Sam Helman" },
         { "name" => "Poker", "referee" => "Spencer Brody" },
         { "name" => "Blackjack", "referee" => "Matt Dannenberg" },
         { "name" => "Apples to Apples", "referee" => "Kyle Erf" },
         { "name" => "Connect4", "referee" => "Spencer Brody" },
         { "name" => "Pool", "referee" => "Wisdom Omuya" },
         { "name" => "Table Tennis", "referee" => "Amy Berman" },
         { "name" => "Bananagrams", "referee" => "Dave Storch" },
         { "name" => "Scattergories", "referee" => "Sam Ritter" },
         { "name" => "Boggle", "referee" => "Sam Ritter" },
         { "name" => "Taboo", "referee" => "Sam Helman" },
         { "name" => "Super Smash Brothers", "referee" => "Phil Quiza" },
         { "name" => "Jenga", "referee" => "Matt Dannenberg" },
         { "name" => "Operation", "referee" => "Phil Quiza" },
]

# add the games to the database
games.each do |game|
  Game.create(:name => game["name"], :referee => game["referee"])
end

players = [
           { "fullname" => "Aaron Hammond", "user_key" => "aaron.hammond" },
           { "fullname" => "Alex Grover", "user_key" => "alex.grover" },
           { "fullname" => "Alex Kleiman", "user_key" => "alex.kleiman" },
           { "fullname" => "Antonio Juliano", "user_key" => "antonio.juliano" },
           { "fullname" => "Bill DeRose", "user_key" => "bill.derose" },
           { "fullname" => "Cody Wilson", "user_key" => "cody.wilson" },
           { "fullname" => "Esha Maharishi", "user_key" => "esha.maharishi@10gen.com" },
           { "fullname" => "J Delaney", "user_key" => "j.delaney" },
           { "fullname" => "Jao-ke Chin-Lee", "user_key" => "jaoke.chinlee@10gen.com" },
           { "fullname" => "Jason Brooks", "user_key" => "jason.brooks" },
           { "fullname" => "Jed Estep", "user_key" => "austin.estep@10gen.com" },
           { "fullname" => "Judah Schvimer", "user_key" => "judah.schvimer" },
           { "fullname" => "Jonathan Mason", "user_key" => "jonathan.mason" },
           { "fullname" => "Josh Clapper", "user_key" => "josh.clapper" },
           { "fullname" => "Kyle Suarez", "user_key" => "kyle.suarez" },
           { "fullname" => "Maggie Cai", "user_key" => "maggie.cai" },
           { "fullname" => "Maria van Keulen", "user_key" => "maria.vankeulen" },
           { "fullname" => "Matt Cotter", "user_key" => "matt.cotter" },
           { "fullname" => "Matt Neubauer", "user_key" => "matthew.neubauer" },
           { "fullname" => "Melissa O'Sullivan", "user_key" => "melissa.osullivan" },
           { "fullname" => "Rahul Dhodapkar", "user_key" => "rahul.dhodapkar" },
           { "fullname" => "Russell Kaplan", "user_key" => "russell.kaplan" },
           { "fullname" => "Stuart Larsen", "user_key" => "stuart.larsen" },
           { "fullname" => "Tianhao Zhang", "user_key" => "tianhao.zhang" },
           { "fullname" => "Waley Chen", "user_key" => "waley.chen" },
           { "fullname" => "Walter Menendez", "user_key" => "walter.menendez" },
           { "fullname" => "Michael Rochlin", "user_key" => "michael.rochlin" },
           { "fullname" => "Jason Hu", "user_key" => "jason.hu" },
           { "fullname" => "Xander Masotto", "user_key" => "xander.masotto" },
           { "fullname" => "Michael Whittaker", "user_key" => "michael.whittaker" },
           { "fullname" => "Clare Paniccia", "user_key" => "clare.paniccia" },
           { "fullname" => "Kenny George", "user_key" => "kenneth.george" },
           { "fullname" => "Elle Morris", "user_key" => "elle.morris" },
           { "fullname" => "Mike O'Brien", "user_key" => "mpobrien" },
           { "fullname" => "Rassi", "user_key" => "rassi@10gen.com" },
           { "fullname" => "Greg Studer", "user_key" => "greg_10gen" },
           { "fullname" => "Charlie Page", "user_key" => "charlie.page@10gen.com" },
           { "fullname" => "Oz", "user_key" => "osmar.olivo@10gen.com" },
           { "fullname" => "Andrew Morrow", "user_key" => "acm" },
           { "fullname" => "Andy Schwerin", "user_key" => "schwerin" },
           { "fullname" => "Thomas Rueckstiess", "user_key" => "thomasr" },
           { "fullname" => "Angelo Olivera", "user_key" => "angelo.olivera" },
           { "fullname" => "Pat Gunn", "user_key" => "pgunn" },
           { "fullname" => "Robert Guo", "user_key" => "robert.guo" },
           { "fullname" => "Dana Teplitsky", "user_key" => "dana.teplitsky" },
           { "fullname" => "Eric Milkie", "user_key" => "milkie" },
           { "fullname" => "Jonathan Balsano", "user_key" => "jonathan.balsano" },
           { "fullname" => "Eric Daniels", "user_key" => "eric.daniels@10gen.com" },
           { "fullname" => "Randolph Tan", "user_key" => "renctan" },
           { "fullname" => "Charlie Swanson", "user_key" => "charlie.swanson" },
           { "fullname" => "David Percy", "user_key" => "david.percy" },
           { "fullname" => "Conor Buckley", "user_key" => "conor.buckley" },
           { "fullname" => "Adam Midvidy", "user_key" => "adam.midvidy" },
           { "fullname" => "Shraya Ramani", "user_key" => "shraya.ramani@10gen.com" },
           { "fullname" => "Spencer Jackson", "user_key" => "spencer.jackson@10gen.com" },
           { "fullname" => "Max Hirschhorn", "user_key" => "max.hirschhorn@10gen.com" },
           { "fullname" => "Daniel Alabi", "user_key" => "daniel.alabi@10gen.com" }
]

# add the players to the database
players.each do |p|
  Player.create(fullname: p['fullname'], user_key: p['email'])
end

# Link the players into teams
teams = {
  "Team Flying Mongoose Fury Dragon Strike" => [ "Alex Kleiman", "Judah Schvimer", "Cody Wilson", "Rahul Dhodapkar", "Kyle Suarez"],
  "Team Cronut" => [ "Josh Clapper", "Russell Kaplan", "Alex Grover", "Kenny George", "Matt Neubauer" ],
  "#team" => [ "Melissa O'Sullivan", "Esha Maharishi", "Maggie Cai", "Elle Morris", "Walter Menendez" ],
  "Team Awesomesauce" => [ "Thomas Rueckstiess", "Jonathan Balsano", "Eric Daniels", "Antonio Juliano", "Rassi" ],
  "Team Something-or-other" => [ "Pat Gunn", "Randolph Tan", "Charlie Swanson", "Charlie Page", "David Percy" ],
  "Team'); DROP TABLE Teams;--" => [ "Stuart Larsen", "Eric Milkie", "Oz", "Conor Buckley", "Maria van Keulen" ],
  "{team: 'Free Agents'}" => [ "Matt Cotter", "J Delaney", "Mike O'Brien", "Adam Midvidy", "Aaron Hammond" ],
  "Team Amalia-Made-This-Team" => [ "Greg Studer", "Shraya Ramani", "Angelo Olivera", "Andrew Morrow", "Andy Schwerin" ],
  "Team New new grads" => [ "Spencer Jackson", "Max Hirschhorn", "Robert Guo", "Daniel Alabi" ],
  "Team Rainbow Unicorn" => [ "Dana Teplitsky", "Jao-ke Chin-Lee" ]
}

# for each team, go through and make the team, fetching the player IDs as we go.
teams.each do |name, players|
  team = Team.create(:name => name)
  players.each do |player_name|
    # for each player, add the team_id
    puts "can't find #{player_name}" unless Player.where(:fullname => player_name).first
    Player.where(:fullname => player_name).update(:team_id => team.id)
  end
end
