require "rails_helper"

RSpec.describe "contacts/index" do
  it "can render" do
    assign(:contacts, [
        Contact.create!(:full_name => "slicer", :email => "slicer@examplecom", :phone_number => 12345678, :address => "abcd")
      ])
    render

    expect(rendered).to match /slicer/
  end
end
