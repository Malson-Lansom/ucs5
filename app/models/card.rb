class Card < ActiveRecord::Base
  validates :omote, presence: true
  validates :ura, presence: true

end