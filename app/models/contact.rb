class Contact < ApplicationRecord
   validates_presence_of :full_name, :email, :phone_number, :address, presence: true
end
