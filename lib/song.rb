require 'pry'
# require_relative '../lib/concerns/memorable.rb'

class Song
  extend Memorable::ClassMethods, Findable
  include Memorable::InstanceMethods, Paramable
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []


  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
