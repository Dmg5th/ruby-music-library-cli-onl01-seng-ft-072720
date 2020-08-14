require 'pry'

class Song
  
  attr_accessor :name, :artist, :genre 
  
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name 
    self.genre = genre if genre != nil 
    self.artist = artist if artist != nil
    save 
  end 
  
  def self.all
    @@all.uniq 
  end 
  
  def self.destroy_all
    @@all.clear   
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.create(name)
    new_song = self.new(name)
    new_song.save 
    new_song
  end 
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
  
 def genre=(genre)
    @genre = genre
    if !(genre.songs.include?(self))
      genre.songs << self
    end
  end
  
  def self.find_by_name(name)
      self.all.detect do |songs| 
      songs.name == name 
     end 
  end 
  
  def self.find_or_create_by_name(song)
    find_by_name(song) || create(song)
  end
  
  def self.new_from_filename(filename)
  file = filename.split(" - ")[1]
  end 
  
  
end 

# binding.pry 

  
 




  


  
  
  
  

  
  
  
  
