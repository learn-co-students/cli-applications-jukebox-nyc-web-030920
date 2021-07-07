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

def list(songs)
    songs.each_with_index { |song, index| puts "#{index+1}. #{song}\n" }
end

def play(songs)
    puts "Please enter a song name or number:"
    input = gets.strip

    array = []
    array = (1..songs.length).to_a
    array = array.collect { |x| x.to_s }

    if array.include? input
        input = input.to_i
        input -= 1
        puts "Playing #{songs[input]}"
    elsif songs.include? input 
        puts "Playing #{input}"
    else 
        puts "Invalid input, please try again"
    end

end 

def exit_jukebox
    puts "Goodbye"
end 

def run(songs)
    puts "Please enter a command:"
    input = gets.strip
    
    case input 
      when "exit"
          return exit_jukebox
      when "help"
          help 
      when "list"
          list(songs)
      when "play"
          play(songs)
      else 
          puts "Please enter a command:"
          input = gets.strip
      end 
      
    run(songs)
end 