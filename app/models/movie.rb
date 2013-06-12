class Movie < ActiveRecord::Base
  attr_accessible :synopsis, :title

  validates_presence_of :title
  validates_presence_of :synopsis

  has_many :votes, :as => :votable #polymorphic, needs to be checked
  has_many :reviews


end
