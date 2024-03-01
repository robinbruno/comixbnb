class Comic < ApplicationRecord
  belongs_to :user

  validates :genre, presence: true
  validates :title, presence: true
  validates :author, presence: true

  # geocoded_by :address
  # after_validation :geocode, if: :will_save_change_to_address?

end
