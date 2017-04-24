class Card < ActiveRecord::Base
  validates_presence_of :title, :fortune_1, :fortune_2, :fortune_3, :points, :multiplier
  validates_uniqueness_of :title

  belongs_to :game
end
