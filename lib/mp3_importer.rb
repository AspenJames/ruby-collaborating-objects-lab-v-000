require'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = []
  end

  def files
    @files =  Dir["#{path}/*.mp3"]
    binding.pry
  end

  def import
    files
    @files.each do |f|
      Song.new_by_filename
    end
  end

end
