require 'pry'
require_relative '../lib/concerns/memorable.rb'
require_relative '../lib/concerns/findable.rb'
require_relative '../lib/concerns/paramable.rb'
class Song
  extend Memorable::ClassMethods
  extend Findable
  include Memorable::InstanceMethods
  include Paramable
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
