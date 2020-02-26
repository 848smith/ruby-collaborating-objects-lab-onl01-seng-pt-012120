class MP3Importer
  attr_reader :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(self.path).select {|files| files}
  end
  
  def import
    
  end
end