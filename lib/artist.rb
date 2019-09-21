require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  # init with empty array of songs and add instance to @@all
  def initialize
    @@artists << self
    @songs = []
  end

  # find a artist by the artist's name
  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  # return array of all artists
  def self.all
    @@artists
  end

  # clear array @all
  def self.reset_all
    self.all.clear
  end

  # count elements in @@all
  def self.count
    self.all.count
  end

  # ass a song to this artist instance
  def add_song(song)
    @songs << song
    song.artist = self
  end

  # add multiple songs
  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # convert to a parameter
  def to_param
    name.downcase.gsub(' ', '-')
  end
end
