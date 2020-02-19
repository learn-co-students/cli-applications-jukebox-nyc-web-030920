# Add your code here
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
  songs.each_with_index do  |name, index|
    puts "#{index + 1}. #{name}"
  end
end 



def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  
  if (1..9).to_a.include?(user_input.to_i) 
    puts "Playing #{songs[user_input.to_i - 1]}"
  elsif songs.include?(user_input)
    puts "Playing #{user_input}"
  else
    puts "Invalid input, please try again"
  end
end



def exit_jukebox
  puts "Goodbye"
end



def prompt
  puts "Please enter a command: " 
  user_input = gets.chomp
end



def run(my_songs)
  input = prompt
  
  while input != "exit"
    if input == "list"
      list(my_songs)
      input = prompt
    elsif input == "play"
      play(my_songs)
      input = prompt
    elsif input == "help"
      help
      input = prompt
    else
      puts "Invalid command"
      input = prompt
    end
  end
  
  exit_jukebox
end


# def run(songs)
  
#   input = ""
  
#   while input 
#     puts "Please enter a command:"
#     input = gets.strip
#   case input
#     when 
  
  
  
# end



