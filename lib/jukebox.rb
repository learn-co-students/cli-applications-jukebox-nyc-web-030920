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
  selection = gets.strip
  if songs.include?(selection)
    puts "Playing #{songs.find{|song| song == selection}}"
  elsif songs[selection.to_i - 1] && selection.to_i > 0
    puts "Playing #{songs[selection.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts (index + 1).to_s + ". " + song
  end
end 

def exit_jukebox
  puts "Goodbye."
end

def run(songs)
  while true do
    puts "Please enter a command:"
    selection = gets.strip
    case selection
      when "exit"
        exit_jukebox
        break
      when "list"
        list(songs)
      when "help"
        help
      when "play"
        play(songs)
    end
  end
end