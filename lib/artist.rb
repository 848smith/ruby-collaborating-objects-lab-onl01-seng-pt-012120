require 'pry'

class Artist
  attr_accessor :name
  @@artist = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@artist << artist
  end
  
  def add_song(song)
    @songs << song
  end
  
  def songs
    @songs
  end
  
  def self.find(name)
    @@artist.find do |artist|
      artist.name == name
    end
  end
  
  def self.create(name)
    artist = self.new(name)
    @@artist << artist
    artist
  end
  
  def self.all
    @@artist
  end
  
  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end
  
  def print_songs
    puts @songs.collect {|x| x.name}
  end
end