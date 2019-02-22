require 'pry'
require_relative './song.rb'

# code goes here!

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
lucifer = Song.new("Lucifer", "Jay-Z", "rap" )
hit_me_baby_one_more_time = Song.new("hit me baby one more time", "Brittany Spears", "pop")

binding.pry
puts "Mischief managed!"
