class Bdc < ApplicationRecord
  belongs_to :group
  belongs_to :user
  belongs_to :panel
  validates :color, presence: true
end
