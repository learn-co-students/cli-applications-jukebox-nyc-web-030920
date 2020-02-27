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

def help
  
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  
end

def play(songs) 
  
  puts "Please enter a song name or number:"
  input = gets.strip

  i = 0
  result = false
  
  while i < songs.length do
    
    if input.to_s == songs[i] or input.to_i == songs.find_index(songs[i + 1])
      result = true
      puts "Playing #{songs[i]}."
    end
      
    i += 1
   
  end

  if result == false
    puts "Invalid input, please try again."
  end
  
end 


def list(songs)
  
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
  
end

def exit_jukebox
  
    puts "Goodbye"
    
end

def run(songs)
  
  puts "Please enter a command:"
  input = gets.strip
  
  #while user input is not exit, loop through list of commands
  
  while input != "exit" do
    
    case input
      when "list"
        list(songs)
        input = gets.strip
      when "play"
        play(songs)
        input = gets.strip
      when "help"
        help
        input = gets.strip
      else
        puts "Invalid command"
        input = gets.strip
    end
    
  end

  exit_jukebox

end