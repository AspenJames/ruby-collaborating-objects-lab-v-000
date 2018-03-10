require'pry'
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.artist_name=(artist_name)
    a = Artist.find_or_create_by_name(artist_name)
    a.add_song(self)
    self.artist = a
  end

  def self.new_by_filename(filename)
    song = Song.new(filename.split(" - ")[1])
    self.artist_name=(filename.split(" - ")[0])
    song.artist = filename.split(" - ")[0]
    song
  end

end
