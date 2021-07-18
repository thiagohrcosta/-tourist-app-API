class Order < ApplicationRecord
  belongs_to :ticket
  belongs_to :user

  has_many :tickets

  validates :user_id, :ticket_id, :quantity, presence: true
  validates :quantity, numericality: true
end
