class Property < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  validates :name, :address, :price, :rooms, :bathrooms, :photo, :parking_spaces, :details, :for_sale, :available_date, :status, presence: true

  scope :latest, -> { order created_at: :desc }

  scope :sold, -> { where(for_sale: true, status: "sold") }
  scope :for_sale, -> { where(for_sale: true, status: "available") }
  scope :leased, -> { where(for_sale: false, status: "leased") }
  scope :for_sale, -> { where(for_sale: false, status: "available") }
end
