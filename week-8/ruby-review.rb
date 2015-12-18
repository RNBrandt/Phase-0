# Create a Playlist from Driver Code
​
# I worked on this challenge [with: Luis De Castro].
# I spent [2] hours on this challenge.
​
​
# Pseudocode
​Create a new song CLASS INPUTS will include songe title and artist.

Add a play method which will "play" a song (INPUT) will be a song title.

Create a playlist CLASS INPUTS will include song title.

​
​
# Initial Solution
class Song
  attr_accessor :song
  attr_accessor :artist
​
    def initialize(song, artist)
      @song = song
      @artist = artist
    end
    def play
      p "#{@song} is playing"
    end

  end
​
class Playlist
​
  def initialize(*tune)
    @playlist = []
     tune.each{ |tune| @playlist.push(tune.song)}
  end
  def add(*tune)
    tune.each {|tune| @playlist.push(tune.song)}
    p @playlist
  end
  def num_of_tracks
    @playlist.length
  end
  def remove(tune)
    @playlist.delete(tune.song)
    p @playlist
  end
  def includes?(tune)
    @playlist.include?(tune.song)
  end
  def play_all
    @playlist.each{|tune| p "#{tune} is playing"}
  end
  def display
    @playlist.each{|tune| puts tune}
  end
end
​
# Refactored Solution
​class Song
  attr_accessor :song
  attr_accessor :artist
​
    def initialize(song, artist)
      @song = song
      @artist = artist
    end
    def play
      p "#{@song} is playing"
      sleep(3)
    end

  end
​
class Playlist
​
  def initialize(*tune)
    @playlist = []
     tune.each{ |tune| @playlist.push(tune.song)}
  end
  def add(*tune)
    tune.each {|tune| @playlist.push(tune.song)}
    p @playlist
  end
  def num_of_tracks
    @playlist.length
  end
  def remove(tune)
    @playlist.delete(tune.song)
    p @playlist
  end
  def includes?(tune)
    @playlist.include?(tune.song)
  end
  def play_all
    @playlist.each{|tune|  p "#{tune} is playing" sleep(3)}
  end
  def display
    @playlist.each{|tune| puts tune}
  end
end
​
​
​
​
​
# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")
​
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
​
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display
​