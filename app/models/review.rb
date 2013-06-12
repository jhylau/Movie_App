class Review < ActiveRecord::Base
  attr_accessible :description, :movie_id, :score, :user_id


  validates_presence_of :description
  validates_presence_of :movie_id
  validates_presence_of :score
  validates_presence_of :user_id

  belongs_to :user_id
  belongs_to :movie_id

  has_many :votes, :as => :votable #polymorphic

end
