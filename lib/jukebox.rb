require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# Add your code here
# def say_hello(name)
#   "Hi #{name}!"
# end 

# puts "Enter your name:"
# users_name = gets.strip 

# puts say_hello(users_name)

def help 
  puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |song , index|
    index = index + 1 
    puts "#{index}. #{song}"
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
    if choice.to_i >= 1 && choice.to_i <= songs.length
    puts "Playing #{songs[choice.to_i-1]}"
  elsif songs.include?(choice)
    puts "Playing #{songs.find{|song| song == choice}}"
  else 
    puts "Invalid input, please try again"
end 
end 


def exit_jukebox 
  puts "Goodbye"
end 

def run(songs)
  while true  
  puts "Please enter a command:"
  command = gets.strip
  if command == "exit"
    exit_jukebox
    break 
    elsif command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "help"
     help 
   else puts "Invalid entry"
    end
end 
end 

