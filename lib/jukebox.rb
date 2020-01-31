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

def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  # outputs each song on a new line with a track number
  # i.e. 1. Phoenix - 1901
  songs.each_with_index do |item, index|
    puts "#{index+1}. #{item}"
  end
end

def play(songs)
  # puts prompt
  puts "Please enter a song name or number:"
  # stores user input
  input = gets.strip
  
  # if track number could exist as index of our array
  if(1..9).to_a.include?(input.to_i)
    puts "Playing #{songs[input.to_i - 1]}"
  # if index of (song name) exists ..
  elsif songs.index(input) != nil
    puts "Playing #{input}"
  # if you typed gibberish
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
  
   while input != "exit"
    if input == "list"
      list(songs)
      input = gets.strip
    elsif input == "play"
      play(songs)
      input = gets.strip
    elsif input == "help"
      help()
      input = gets.strip
    else
      puts "Invalid command"
      help()
      input = gets.strip
    end
  end
  
  exit_jukebox()
end
  

