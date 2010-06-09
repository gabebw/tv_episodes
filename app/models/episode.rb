class Episode < ActiveRecord::Base
  validates_presence_of :season, :number, :name
  validates_numericality_of :season, :number
  belongs_to :show
end