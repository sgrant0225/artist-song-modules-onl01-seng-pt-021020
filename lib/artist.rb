require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  extend Memorable::ClassMethods
  extend Findable
  include Memorable::InstanceMethods
  include Paramable
  
  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  # def self.find_by_name(name) #redefined this in the findable module
  #   @@artists.detect{|a| a.name == name}
  # end

  def self.all
    @@artists
  end

  # def self.reset_all #added this method to memorable module
  #   self.all.clear
  # end

  # def self.count ##added this method to memorable module
  #   self.all.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
