class MusicImporter

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(@path)
    files.collect(/.*.mp3/)
  end

  def import

  end

end
