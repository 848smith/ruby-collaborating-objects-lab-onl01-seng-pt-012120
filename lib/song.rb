class Song
  attr_accessor :name, :artist
  @@songs = []
  
  def initialize(name)
    @name = name
  end
  
  def self.all
    @@songs
  end
  
  def self.new_by_filename(file)
     song = file.split(" - ")[1]
     artist = file.split(" - ")[0]
     new_song = self.new(song)
     new_song.artist_name = artist
     @@songs << new_song
     new_song
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end