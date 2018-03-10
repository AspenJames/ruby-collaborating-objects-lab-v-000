class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def self.find_or_create_by_name(name)
    self.all.detect{|a| a.name == name} || Artist.new(name)
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    self.songs.each do |s|
      puts s.name
    end
  end

end
