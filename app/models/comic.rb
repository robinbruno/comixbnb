class Comic < ApplicationRecord
  belongs_to :user

  validates :genre, presence: true
  validates :title, presence: true
  validates :author, presence: true
end
