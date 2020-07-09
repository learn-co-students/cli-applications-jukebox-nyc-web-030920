# Add your code here


# #prompt user for their name - just for practice according to the lab
# def say_hello(name)
#     "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip

# puts say_hello(users_name)

#make four methods for the app's commands:
#   help - outputs instructions on how to use the app
#   list - outputs the list of songs
#   play - asks the user to input a song name or track number
#   exit - says goodbye and program shuts down

def run(songs)
    puts "Please enter a command: "
    prompt(songs)
end

def prompt(songs)
    user_input = gets.strip

    while user_input != "exit"
        case user_input
        when "help"
            help
            user_input = gets.strip
        when "list"
            list(songs)
            user_input = gets.strip
        when "play"
            play(songs)
            user_input = gets.strip
        else
            help
            user_input = gets.strip
        end
    end

    exit_jukebox

    # if user_input == "exit"
    #     return "Goodbye"
    # end
end

def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs)
    songs.each_with_index{|song, index|
        puts "#{index + 1}. #{song}\n"
    }
end

def play(songs)
    puts "Please enter a song name or number:"

    user_input = gets.strip

    if user_input.is_a?(String) && songs.include?(user_input)
        puts "Playing #{songs[songs.index(user_input)]}"
    elsif user_input.to_i <= songs.length && user_input.to_i != 0
        puts "Playing #{songs[user_input.to_i - 1]}"
    else
        puts "Invalid input, please try again"
    end
end

def exit_jukebox
    puts "Goodbye"
end