# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Contact, type: :model do
  context 'validation' do
    it { is_expected.to validate_presence_of(:full_name).on(:create) }
    it { is_expected.to validate_presence_of(:email).on(:create) }
    it { is_expected.to validate_presence_of(:phone_number).on(:create) }
    it { is_expected.to validate_presence_of(:address).on(:create) }
  end
  # or
  context 'validation' do
    it 'ensure full name presence' do
      contact = Contact.new(email: 'sample@example.com', phone_number: '123456789', address: 'address').save
      expect(contact).to eq(false)
    end
  end

  context 'association' do
    it { is_expected.to have_many(:members) }
  end
end
