require'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files =  Dir["#{path}/*.mp3"]
    @files.collect{|f| f.split("mp3s/")[1]}
  end

  def import
    self.files
    @files.each do |f|
      Song.new_by_filename
    end
  end

end
