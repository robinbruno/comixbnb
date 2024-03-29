class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :comic

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true
end
