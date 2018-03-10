class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.artist_name=(artist_name)
    Artist.find_or_create_by_name(artist_name)
    Artist.add_song(self)
  end

  def self.new_by_filename(filename)
    song = Song.new(filename.split(" - ")[0])
  end

end
