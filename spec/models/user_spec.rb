require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:flights) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_uniqueness_of(:phone_number).with_message('Phone number is already associated with another account') }

    it { should validate_presence_of(:phone_number) }

    it { should validate_length_of(:phone_number).is_at_least(7).is_at_most(13) }
      
    end
end
