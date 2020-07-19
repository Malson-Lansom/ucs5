class Panel < ApplicationRecord
  belongs_to :group
  belongs_to :user

  validates :question, presence: true
  validates :answer, presence: true
end
