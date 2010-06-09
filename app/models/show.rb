class Show < ActiveRecord::Base
  validates_presence_of :name
  
  has_many :episodes
end
