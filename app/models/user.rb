class User < ActiveRecord::Base
  attr_accessible :email, :password, :role, :username

  validates_presence_of :email
  validates_presence_of :username

  has_many :votes, :as => :votable #polymorphic


end
