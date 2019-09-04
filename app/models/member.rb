class Member < ApplicationRecord
  belongs_to :contact, optional: true

  validates :name, presence: true, uniqueness: true, length: {minimum: 5, maximum: 15}
end
