array = [
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
puts 'I accept the following commands:'
puts '- help : displays this help message'
puts '- list : displays a list of songs you can play'
puts '- play : lets you choose a song to play'
puts '- exit : exits this program'
end

def list(songs)
songs.each_with_index {|item,index|
  puts "#{index+1}. #{songs[index] = item}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  song = "Invalid input, please try again"
  input = gets.strip
  songs.each_with_index do |item,index|
    if input == songs[index]
       song = "Playing #{input}"
    elsif input.to_i == index+1
       song = "Playing #{songs[input.to_i-1]}"
    end
  end
  puts song
end

def exit_jukebox()
  puts 'Goodbye'
end

def run(songs)
  puts "Please enter a command:"
  until (input = gets.chomp) == 'exit'
    if input == 'help'
      help()
    elsif input == 'list'
      list(songs)
    elsif input == 'play'
      play(songs)
      end
    end
    if input.to_s == 'exit'
      exit_jukebox()
  end
end
