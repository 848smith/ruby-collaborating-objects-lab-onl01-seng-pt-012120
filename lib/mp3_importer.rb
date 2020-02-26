class MP3Importer
  attr_reader :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(self.path).select {|file| file.end_with?(".mp3")}
  end
  
  def import
    self.files
  end
end