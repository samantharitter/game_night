# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Add all the games
games = [
         { "name" => "Tic Tac Toe", "referee" => "Matt Dannenberg" },
         { "name" => "Scavenger Hunt", "referee" => "Sam Ritter" },
         { "name" => "Saltine Challenge", "referee" => "Wisdom Omuya" },
         { "name" => "Avalon", "referee" => "Amalia Hawkins" },
         { "name" => "Charades", "referee" => "Kyle Erf" },
         { "name" => "Uno", "referee" => "Sam Helman" },
         { "name" => "Poker", "referee" => "Spencer Brody" },
         { "name" => "Blackjack", "referee" => "Matt Dannenberg" },
         { "name" => "Apples to Apples", "referee" => "Kyle Erf" },
         { "name" => "Spoons", "referee" => "Amalia Hawkins" },
         { "name" => "Connect4", "referee" => "Spencer Brody" },
         { "name" => "Pool", "referee" => "Wisdom Omuya" },
         { "name" => "Basketball", "referee" => "Amy Berman" },
         { "name" => "Table Tennis", "referee" => "Dave Storch" },
         { "name" => "Set", "referee" => "Amalia Hawkins" },
         { "name" => "Bananagrams", "referee" => "Dave Storch" },
         { "name" => "Scattergories", "referee" => "Sam Ritter" },
         { "name" => "Boggle", "referee" => "Sam Ritter" },
         { "name" => "Taboo", "referee" => "Sam Helman" },
         { "name" => "Super Smash Brothers", "referee" => "Phil Quiza" },
         { "name" => "Jenga", "referee" => "Matt Dannenberg" },
         { "name" => "Operation", "referee" => "Phil Quiza" },
         { "name" => "Trivia", "referee" => "Sam Helman" },
         { "name" => "Hula Hoop Contest", "referee" => "Amy Berman" }
]

# add the games to the database
games.each do |game|
  Game.create(:name => game["name"], :referee => game["referee"])
end

players = [
           {  "fullname" => "Aaron Hammond", "email" => "aaron.hammond@mongodb.com" },
           {  "fullname" => "Alex Grover", "email" => "alex.grover@mongodb.com" },
           {  "fullname" => "Alex Kleinman", "email" => "alex.kleinman@mongodb.com" },
           {  "fullname" => "Antonio Juliano", "email" => "antonio.juliano@mongodb.com" },
           {  "fullname" => "Bill DeRose", "email" => "bill.derose@mongodb.com" },
           {  "fullname" => "Cody Wilson", "email" => "cody.wilson@mongodb.com" },
           {  "fullname" => "Esha Maharishi", "email" => "esha.maharishi@mongodb.com" },
           {  "fullname" => "J Delaney", "email" => "j.delaney@mongodb.com" },
           {  "fullname" => "Jao-ke Chin-Lee", "email" => "jaoke.chinlee@mongodb.com" },
           {  "fullname" => "Jason Brooks", "email" => "jason.brooks@mongodb.com" },
           {  "fullname" => "Jed Estep", "email" => "jed.estep@mongodb.com" },
           {  "fullname" => "Judah Schvimer", "email" => "judah.schvimer@mongodb.com" },
           {  "fullname" => "Kyle Suarez", "email" => "kyle.suarez@mongodb.com" },
           {  "fullname" => "Maggie Cai", "email" => "maggie.cai@mongodb.com" },
           {  "fullname" => "Maria van Keulen", "email" => "maria.vankeulen@mongodb.com" },
           {  "fullname" => "Matt Cotter", "email" => "matt.cotter@mongodb.com" },
           {  "fullname" => "Matthew Neubauer", "email" => "matthew.neubauer@mongodb.com" },
           {  "fullname" => "Melissa OSullivan", "email" => "melissa.osullivan@mongodb.com" },
           {  "fullname" => "Rahul Dhodapkar", "email" => "rahul.dhodapkar@mongodb.com" },
           {  "fullname" => "Russel Kaplan", "email" => "russel.kaplan@mongodb.com" },
           {  "fullname" => "Stuart Larsen", "email" => "stuart.larsen@mongodb.com" },
           {  "fullname" => "Tianhao Zhang", "email" => "tianhao.zhang@mongodb.com" },
           {  "fullname" => "Waley Chen", "email" => "waley.chen@mongodb.com" },
           {  "fullname" => "Walter Menendez", "email" => "walter.menendez@mongodb.com" },
           {  "fullname" => "Michael Rochlin", "email" => "michael.rochlin@mongodb.com" },
           {  "fullname" => "Jason Hu", "email" => "jason.hu@mongodb.com" },
           {  "fullname" => "Xander Masotto", "email" => "xander.masotto@mongodb.com" },
           {  "fullname" => "Michael Whittaker", "email" => "michael.whittaker@mongodb.com" },
           {  "fullname" => "Clare Paniccia", "email" => "clare.paniccia@mongodb.com" },
           {  "fullname" => "Kenneth George", "email" => "kenneth.george@mongodb.com" },
           {  "fullname" => "Eleanor Morris", "email" => "eleanor.morris@mongodb.com" },
           {  "fullname" => "Jonathan Mason", "email" => "jonathan.mason@mongodb.com" },
           {  "fullname" => "Josh Clapper", "email" => "josh.clapper@mongodb.com" },
           {  "fullname" => "Jennifer Campbell", "email" => "jennifer.campbell@mongodb.com" },
           {  "fullname" => "Aaron Hammond", "email" => "aaron.hammond@mongodb.com" },
           {  "fullname" => "Alex Grover", "email" => "alex.grover@mongodb.com" },
           {  "fullname" => "Alex Kleinman", "email" => "alex.kleinman@mongodb.com" },
           {  "fullname" => "Antonio Juliano", "email" => "antonio.juliano@mongodb.com" },
           {  "fullname" => "Bill DeRose", "email" => "bill.derose@mongodb.com" },
           {  "fullname" => "Cody Wilson", "email" => "cody.wilson@mongodb.com" },
           {  "fullname" => "Esha Maharishi", "email" => "esha.maharishi@mongodb.com" },
           {  "fullname" => "J Delaney", "email" => "j.delaney@mongodb.com" },
           {  "fullname" => "Jao-ke Chin-Lee", "email" => "jaoke.chinlee@mongodb.com" },
           {  "fullname" => "Jason Brooks", "email" => "jason.brooks@mongodb.com" },
           {  "fullname" => "Jed Estep", "email" => "jed.estep@mongodb.com" },
           {  "fullname" => "Judah Schvimer", "email" => "judah.schvimer@mongodb.com" },
           {  "fullname" => "Kyle Suarez", "email" => "kyle.suarez@mongodb.com" },
           {  "fullname" => "Maggie Cai", "email" => "maggie.cai@mongodb.com" },
           {  "fullname" => "Maria van Keulen", "email" => "maria.vankeulen@mongodb.com" },
           {  "fullname" => "Matt Cotter", "email" => "matt.cotter@mongodb.com" },
           {  "fullname" => "Matthew Neubauer", "email" => "matthew.neubauer@mongodb.com" },
           {  "fullname" => "Melissa OSullivan", "email" => "melissa.osullivan@mongodb.com" },
           {  "fullname" => "Rahul Dhodapkar", "email" => "rahul.dhodapkar@mongodb.com" },
           {  "fullname" => "Russel Kaplan", "email" => "russel.kaplan@mongodb.com" },
           {  "fullname" => "Stuart Larsen", "email" => "stuart.larsen@mongodb.com" },
           {  "fullname" => "Tianhao Zhang", "email" => "tianhao.zhang@mongodb.com" },
           {  "fullname" => "Waley Chen", "email" => "waley.chen@mongodb.com" },
           {  "fullname" => "Walter Menendez", "email" => "walter.menendez@mongodb.com" },
           {  "fullname" => "Michael Rochlin", "email" => "michael.rochlin@mongodb.com" },
           {  "fullname" => "Jason Hu", "email" => "jason.hu@mongodb.com" },
           {  "fullname" => "Xander Masotto", "email" => "xander.masotto@mongodb.com" },
           {  "fullname" => "Michael Whittaker", "email" => "michael.whittaker@mongodb.com" },
           {  "fullname" => "Clare Paniccia", "email" => "clare.paniccia@mongodb.com" },
           {  "fullname" => "Kenneth George", "email" => "kenneth.george@mongodb.com" },
           {  "fullname" => "Eleanor Morris", "email" => "eleanor.morris@mongodb.com" },
           {  "fullname" => "Jonathan Mason", "email" => "jonathan.mason@mongodb.com" },
           {  "fullname" => "Josh Clapper", "email" => "josh.clapper@mongodb.com" },
           {  "fullname" => "Jennifer Campbell", "email" => "jennifer.campbell@mongodb.com" }
]

# add the players to the database
players.each do |p|
  Player.create(fullname: p['fullname'], email: p['email'])
end

# Link the players into teams
