# frozen_string_literal: true

# require 'rails_helper'
#
# RSpec.describe ContactsController, type: :controller do
#   describe 'GET contacts#index' do
#     it "show all the saved contacts" do
#       get :index
#       assert_response :success
#     end
#   end
#
#   describe 'GET contacts#new' do
#     it "assigns fullname, email, phone number and address to new contact" do
#       get :new
#       expect(:contact).to have_content(:contact)
#     end
#   end
#
#   describe 'GET contacts#create' do
#     let(:contact_attributes) { attributes_for(:contact) }
#
#     context "with valid attributes" do
#       it "save new contact to database" do
#         expect do
#           post :create, params: { contact: contact_attributes }, session: {}
#         end.to change(Contact, :count).by(1)
#       end
#
#       it "redirects to contact show page" do
#         post :create, params: { contact: contact_attributes }
#         expect(response).to redirect_to contact_path(assigns(:contact))
#       end
#     end
#
#     context "with invalid attributes" do
#       it "does not save new contact to database" do
#         expect { post :create, :params => {contact: attributes_for(:contact, :invalid)}}.not_to change(Contact, :count)
#       end
#
#       it "re-renders the :new template" do
#         post :create, :params => {contact: attributes_for(:contact, :invalid)}
#         expect(response).to render_template :new
#       end
#     end
#   end
#
#   describe 'GET contacts#show' do
#     it "assigns the requested contact to @contact" do
#       contact = create(:contact)
#       get :show, params: { id: contact.id }, session: {}
#       expect(assigns(:contact)).to eq contact
#     end
#
#     it "renders the :show template" do
#       contact = create(:contact)
#       get :show, params: { id: contact.id }, session: {}
#       expect(response).to render_template :show
#     end
#   end
#
#   describe 'GET contacts#edit' do
#     it "assigns the requested contact to @contact" do
#       contact = create(:contact)
#       get :edit, params: { id: contact.id }, session: {}
#       expect(assigns(:contact)).to eq contact
#     end
#
#     it "renders the :edit template" do
#       contact = create(:contact)
#       get :edit, params: { id: contact.id }, session: {}
#       expect(response).to render_template :edit
#     end
#   end
#
#   describe 'PATCH contact#update' do
#
#     let!(:contact) { create(:contact) }
#     let(:update_attributes) do {
#         full_name: 'Larry',
#         email: 'sample@example.com',
#         phone_number: 12345678,
#         address: 'abcdefg'}
#       end
#
#       it "locates the requested @contact" do
#         expect do
#           patch :update, params: { id: contact.id, contact: update_attributes }, session: {}
#         end.to change(Contact, :count).by(0)
#       end
#
#       it "updates updated article" do
#         patch :update, params: { id: contact.id, contact: update_attributes }, session: {}
#         contact.reload
#         expect(update_attributes[:full_name]).to eq('Larry')
#         expect(update_attributes[:email]).to eq('sample@example.com')
#         expect(update_attributes[:phone_number]).to eq(12345678)
#         expect(update_attributes[:address]).to eq('abcdefg')
#       end
#
#       it "redirects the :create template" do
#         patch :update, params: { id: contact.id, contact: update_attributes }, session: {}
#         contact = Contact.last
#         expect(response).to redirect_to(contact_path(contact))
#       end
#
#     end
#
#   describe 'DELETE #destroy' do
#     let!(:contact) {create(:contact)}
#     it 'deletes the contact' do
#       expect do
#         delete :destroy, params: { id: contact.id }, session: {}
#       end.to change(Contact, :count).by(-1)
#     end
#
#     it 'redirects the :index template' do
#       delete :destroy, params: { id: contact.id }, session: {}
#       expect(response).to redirect_to(contacts_path)
#     end
#   end
#
# end
