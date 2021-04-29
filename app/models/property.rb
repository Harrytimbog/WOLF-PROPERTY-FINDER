class Property < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  scope :latest, -> { order created_at: :desc }
end
