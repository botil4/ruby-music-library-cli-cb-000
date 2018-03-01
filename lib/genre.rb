class Genre

  attr_accessor :name, :songs, :artists

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    song = Genre.new(name)
    song.save
    song
  end

  def add_song(song)
      @songs << song if !@songs.include?(song)
      song.genre = self if song.genre == nil
      song
  end

end
