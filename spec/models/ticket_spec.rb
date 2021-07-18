require 'rails_helper'

RSpec.describe Ticket, type: :model do
  context "Company associations" do
    it {should validate_presence_of(:company_id)}
    it {should have_many(:orders)}
  end

  context "Company validations" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:photo)}
    it{should validate_numericality_of(:price)}
    it{should validate_numericality_of(:cashback)}
  end
end
