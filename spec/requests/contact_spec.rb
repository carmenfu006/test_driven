require "rails_helper"

RSpec.describe "Contact", :type => :request do
  describe "responses" do

    it "renders the index template" do
      get contacts_path
      expect(response).to render_template("index")
    end

    it "assigns contact" do
      get "/contacts/new"
      expect(response).to render_template(:new)

      post "/contacts/", :params => { :contact => {:full_name => "carmen"} }
      expect(response).to have_http_status(:ok)
    end

    it "redirects to Contact's page" do
      get @contact
    end

  end
end
