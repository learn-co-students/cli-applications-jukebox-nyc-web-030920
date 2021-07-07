# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.strip
 
# puts say_hello(users_name)

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

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |value, index|
  puts "#{index + 1}. #{value}" 
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  
  if (1..9).to_a.include?(user_input.to_i)
    puts "Playing #{songs[user_input.to_i-1]}"
    elsif songs.include?(user_input)
    puts "Playing #{user_input}"
  else 
    puts "Invalid input, please try again"
  end 
end 
  

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
   puts "Please enter a command:"
   user_response = gets.strip
   while user_response != exit
     case user_response
       when "help"
         help
       when "list"
         list(songs)
       when "play"
         play(songs)
       when "exit"
        break 
      end 
       exit_jukebox
     end
 end 

