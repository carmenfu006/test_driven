require 'rails_helper'

RSpec.describe Member, type: :model do
  context 'association' do
    it { should belong_to(:contact) }
  end

  context 'validation' do
    it { is_expected.to validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_least(5) }
    it { should validate_length_of(:name).is_at_most(15) }
  end

  #or
  
  context 'validation' do
    it 'validates name length' do
      member = Member.create(name: "ben").should_not be_valid
      member = Member.create(name: "Annabelle").should be_valid
      member = Member.create(name: "Grant the Gustin").should_not be_valid
    end
  end
end
