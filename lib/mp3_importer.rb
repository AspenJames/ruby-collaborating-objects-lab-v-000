class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def self.files
    @files =  Dir["#{path}/*.mp3"]
  end

  def self.import
    self.files
    @files.each do |f|
      Song.new_by_filename
    end
  end

end
