# frozen_string_literal: true

class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params_contact)
    if @contact.save
      redirect_to contact_path(@contact)
    else
      render :new
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params_contact)
      redirect_to @contact
    end
  end

  private

  def params_contact
    params.require(:contact).permit(:full_name, :email, :phone_number, :address)
  end
end
