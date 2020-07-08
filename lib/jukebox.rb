# Add your code here

# song names for our Jukebox to display
song = [
    "Phoenix - 1901",
    "Tokyo Police Club - Wait Up",
    "Sufjan Stevens - Too Much",
    "The Naked and the Famous - Young Blood",
    "(Far From) Home - Tiga",
    "The Cults - Abducted",
    "Phoenix - Consolation Prizes",
    "Harry Chapin - Cats in the Cradle",
    "Amos Lee - Keep It Loose, Keept It Tight"
]


#prompt user for their name
def say_hello(name)
    "Hi #{name}!"
end

puts "Enter your name:"
users_name = gets.strip

puts say_hello(users_name)
