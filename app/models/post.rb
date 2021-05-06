class Post < ApplicationRecord
  has_one_attached :image
  validates :title, :summary, :body, presence: true

  scope :active, -> { where(active: true) }
  scope :latest, -> { order created_at: :desc }
end
