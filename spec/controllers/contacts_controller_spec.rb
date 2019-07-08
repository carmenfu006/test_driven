require 'rails_helper'

RSpec.describe ContactsController, type: :controller do

  describe 'GET contacts#index' do
    it 'show all the saved contacts' do
      get :index
       assert_response :success
    end
  end

  describe 'GET contacts#new' do
    it 'assigns fullname, email, phone number and address to new contact' do
      get :new
      expect(:contact).to have_content(:contact)
    end
  end

  describe 'GET contacts#create' do
    let(:contact_attributes) { attributes_for(:contact) }

    context 'with valid attributes' do
      it 'save new contact to database' do
        expect do
          post :create, params: { contact: contact_attributes }, session: {}
        end.to change(Contact, :count).by(1)
      end

      it 'redirects to contact show page' do
        post :create, params: { contact: contact_attributes }
          expect(response).to redirect_to contact_path(assigns(:contact))
      end
    end

    context 'with invalid attributes' do
      it 'does not save new contact to database'
      it 're-renders the :new template'
    end
  end

end
