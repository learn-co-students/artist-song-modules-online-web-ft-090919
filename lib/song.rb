require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
extend  Memorable
extend Findable
include Paramable
  @@songs = []

  def initialize
    @@songs << self
  end

  

  def self.all
    @@songs
  end

 extend  Memorable
  def artist=(artist)
    @artist = artist
  end

 # def to_param
  #  name.downcase.gsub(' ', '-')
  #end
end
