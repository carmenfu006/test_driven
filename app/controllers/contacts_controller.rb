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


  private
  def params_contact
    params.require(:contact).permit(:full_name, :email, :phone_number, :address)
  end

end
