class Vote < ActiveRecord::Base
  attr_accessible :user_id, :votable_id, :votable_type

  validates_presence_of :user_id
  validates_presence_of :votable_id
  validates_presence_of :votable_type

  belongs_to :user 
  belongs_to :review
  belongs_to :votable, :polymorphic => true  #not sure if this polymorphic association is correct

end
