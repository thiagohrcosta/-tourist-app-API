class Ticket < ApplicationRecord
  belongs_to :company

  has_many :orders

  validates :company_id, :name, :photo, :price, :cashback, presence: true

  validates :price, :cashback, numericality: true
end
