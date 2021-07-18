require 'rails_helper'

RSpec.describe Company, type: :model do

    context 'Company validation' do
      it 'Company is valid if has a User_id valid' do

      User.create(
        id: 1,
        email: "admin@admin.com",
        password: "123456"
        )

      company = Company.new(
        user_id: 1,
        name: "Company 1",
        logo: "http://company1.com/img/logo.png"
        )
        expect(company).to be_valid
      end

      it 'Is not valid without a User_id' do
      company = Company.new(
        user_id: "",
        name: "Company 1",
        logo: "http://company1.com/img/logo.png"
        )
        expect(company).to_not be_valid
      end

      it 'Is not valid without a name' do
        User.create(
          id: 1,
          email: "admin@admin.com",
          password: "123456"
         )

        company = Company.new(
          user_id: 1,
          name: "",
          logo: "http://company1.com/img/logo.png"
        )
        expect(company).to_not be_valid
      end

      it 'Is not valid without a logo' do
        User.create(
          id: 1,
          email: "admin@admin.com",
          password: "123456"
         )

        company = Company.new(
          user_id: 1,
          name: "Company 1",
          logo: ""
        )
        expect(company).to_not be_valid
      end
    end

    context "Company associations" do
      it {should validate_presence_of(:user_id)}
      it {should have_many(:tickets)}
    end
end
