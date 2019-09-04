# frozen_string_literal: true

class Contact < ApplicationRecord
  has_many :members, dependent: :destroy

  validates_presence_of :full_name, :email, :phone_number, :address, presence: true
end
