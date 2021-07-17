class Order < ApplicationRecord
  belongs_to :ticket
  belongs_to :user

  has_many :tickets
end
