require 'pry'
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  binding.pry
  if user_input.to_i >= 1 && user_input.to_i <= songs.length
    puts "Playing #{songs[user_input.to_i]}"
  elsif songs.include?(user_input)
    puts "Playing #{songs.find {|song_title| song_title == user_input}}"
  else 
    puts "Invalid input, please try again"
  end
end




