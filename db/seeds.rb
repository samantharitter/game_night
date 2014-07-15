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
           { "fullname" => "Aaron Hammond", "email" => "aaron.hammond@mongodb.com" },
           { "fullname" => "Alex Grover", "email" => "alex.grover@mongodb.com" },
           { "fullname" => "Alex Kleinman", "email" => "alex.kleiman@mongodb.com" },
           { "fullname" => "Antonio Juliano", "email" => "antonio.juliano@mongodb.com" },
           { "fullname" => "Bill DeRose", "email" => "bill.derose@mongodb.com" },
           { "fullname" => "Cody Wilson", "email" => "cody.wilson@mongodb.com" },
           { "fullname" => "Esha Maharishi", "email" => "esha.maharishi@mongodb.com" },
           { "fullname" => "J Delaney", "email" => "j.delaney@mongodb.com" },
           { "fullname" => "Jao-ke Chin-Lee", "email" => "jaoke.chinlee@mongodb.com" },
           { "fullname" => "Jason Brooks", "email" => "jason.brooks@mongodb.com" },
           { "fullname" => "Jed Estep", "email" => "jed.estep@mongodb.com" },
           { "fullname" => "Judah Schvimer", "email" => "judah.schvimer@mongodb.com" },
           { "fullname" => "Jonathan Mason", "email" => "jonathan.mason@mongodb.com" },
           { "fullname" => "Josh Clapper", "email" => "josh.clapper@mongodb.com" },
           { "fullname" => "Jennifer Campbell", "email" => "jennifer.campbell@mongodb.com" },
           { "fullname" => "Kyle Suarez", "email" => "kyle.suarez@mongodb.com" },
           { "fullname" => "Maggie Cai", "email" => "maggie.cai@mongodb.com" },
           { "fullname" => "Maria van Keulen", "email" => "maria.vankeulen@mongodb.com" },
           { "fullname" => "Matt Cotter", "email" => "matt.cotter@mongodb.com" },
           { "fullname" => "Matt Neubauer", "email" => "matthew.neubauer@mongodb.com" },
           { "fullname" => "Melissa O'Sullivan", "email" => "melissa.osullivan@mongodb.com" },
           { "fullname" => "Rahul Dhodapkar", "email" => "rahul.dhodapkar@mongodb.com" },
           { "fullname" => "Russell Kaplan", "email" => "russell.kaplan@mongodb.com" },
           { "fullname" => "Stuart Larsen", "email" => "stuart.larsen@mongodb.com" },
           { "fullname" => "Tianhao Zhang", "email" => "tianhao.zhang@mongodb.com" },
           { "fullname" => "Waley Chen", "email" => "waley.chen@mongodb.com" },
           { "fullname" => "Walter Menendez", "email" => "walter.menendez@mongodb.com" },
           { "fullname" => "Michael Rochlin", "email" => "michael.rochlin@mongodb.com" },
           { "fullname" => "Jason Hu", "email" => "jason.hu@mongodb.com" },
           { "fullname" => "Xander Masotto", "email" => "xander.masotto@mongodb.com" },
           { "fullname" => "Michael Whittaker", "email" => "michael.whittaker@mongodb.com" },
           { "fullname" => "Clare Paniccia", "email" => "clare.paniccia@mongodb.com" },
           { "fullname" => "Kenny George", "email" => "kenneth.george@mongodb.com" },
           { "fullname" => "Elle Morris", "email" => "eleanor.morris@mongodb.com" },
           { "fullname" => "Mike O'Brien", "email" => "mikeo@10gen.com" },
           { "fullname" => "Rassi", "email" => "jason.rassi@10gen.com" },
           { "fullname" => "Greg Studer", "email" => "greg@10gen.com" },
           { "fullname" => "Charlie Page", "email" => "charlie.page@mongodb.com" },
           { "fullname" => "Oz", "email" => "osmar.olivo@10gen.com" },
           { "fullname" => "Andrew Morrow", "email" => "andrew.morrow@10gen.com" },
           { "fullname" => "Andy Schwerin", "email" => "schwerin@10gen.com" },
           { "fullname" => "Thomas Rueckstiess", "email" => "thomas@mongodb.com" },
           { "fullname" => "Angelo Olivera", "email" => "aolivera@mongodb.com" },
           { "fullname" => "Pat Gunn", "email" => "pgunn@mongodb.com" },
           { "fullname" => "Robert Guo", "email" => "robert.guo@mongodb.com" },
           { "fullname" => "Dana Teplitsky", "email" => "dana.teplitsky@10gen.com" },
           { "fullname" => "Eric Milkie", "email" => "milkie@10gen.com" },
           { "fullname" => "Jonathan Balsano", "email" => "jonathan.balsano@10gen.com" },
           { "fullname" => "Eric Daniels", "email" => "eric.daniels@10gen.com" },
           { "fullname" => "Randolph Tan", "email" => "randolph@10gen.com" },
           { "fullname" => "Charlie Swanson", "email" => "charlie.swanson@10gen.com" },
           { "fullname" => "David Percy", "email" => "david.percy@10gen.com" },
           { "fullname" => "Conor Buckley", "email" => "conor.buckley@mongodb.com" },
           { "fullname" => "Adam Midvidy", "email" => "adam.midvidy@mongodb.com" },
           { "fullname" => "Shraya Ramani", "email" => "shraya.ramani@10gen.com" },
           { "fullname" => "Spencer Jackson", "email" => "spencer.jackson@10gen.com" },
           { "fullname" => "Max Hirschhorn", "email" => "max.hirschhorn@10gen.com" },
           { "fullname" => "Daniel Alabi", "email" => "daniel.alabi@10gen.com" }
]

# add the players to the database
players.each do |p|
  Player.create(fullname: p['fullname'], email: p['email'])
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
