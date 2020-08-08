require 'pry'
require_relative'../lib/concerns/memorable'
require_relative'../lib/concerns/paramable'

class Song
  
  extend Memorable::ClassMethod
  include Paramable::InstanceMethod
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []
  
  def initialize
    self.class.all << self
  end

  # def initialize
  #   @@songs << self
  # end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

 
end
