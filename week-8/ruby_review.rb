# Pseudocode
# Create classes based off driver code Song & Playlist
	#1. Make A Song Class and Playlist Class
# Create methods that are called in driver code
	#1. initialize, play, initialize, add, num_of_tracks, remove, includes, play_all & display
		# initialize method=assign variables
		# add method = adds new songs to array
		# number_of_tracks = number of tracks in array
		# play method = print what is playing
		# remove method- delete a song
		# includes? method - include?(song) to return true or false
		# play_all method- list all songs
		# display - print all songs 
		# Initial Solution
class Song
	attr_reader :title, :artist
	def initialize(title, artist)
		@title=title
		@artist=artist
	end	
	def play
		puts "Now playing #{title} by #{artist}"
	end	

end
class Playlist	
	def initialize(*song)
		@songs_new=[]
		song.each{|song| @songs_new << song}
	end		
	def add(*song)
		song.each{|song| @songs_new << song} #concated
	end
	def num_of_tracks	
		p @songs_new.length
	end
	def remove(song)
		@songs_new.delete(song)
	end
	def includes?(song)
		@songs_new.include?(song)
	end
	def play_all
		@songs_new.map{|song| puts "#{song.title},#{song.artist}"}
	end
	def display
		@songs_new.map{|song| puts "#{song.title},#{song.artist}"}
	end	
end





# Refactored Solution
#same
# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display
#Reflection:
# What concepts did you review or learn in this challenge?
# I had read about the splat operator but hadnt used it yet in Ruby. It takes in any about of arguments. This was good review on classes, instance variables and attribute methods.
# What is still confusing to you about Ruby?
# This challenge was pretty straight forward. It was more getting my bairings again after not using Ruby for two weeks. It is a little scary how quickly you can forget things when not using it for a little bit.
# What are you going to study to get more prepared for Phase 1?
# I plan to go through all the practice challenges and re-read parts of WRG that match up to anything I struggled with during the challenges.