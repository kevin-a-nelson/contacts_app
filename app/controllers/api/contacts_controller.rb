class Api::ContactsController < ApplicationController

  def show
    @contact = Contact.all.find_by(id: params['id'])
    render 'show.json.jb'
  end

  def index
    render 'index.json.jb'
  end

  def create
    @contact = Contact.new(
      first_name: params['first_name'],
      last_name: params['last_name'],
      phone_number: params['phone_number'],
      email: params['email']
    )
    @contact.save
    render 'show.json.jb'
  end

  def update
    @contact = Contact.all.find_by(id: params['id'])
    @contact.update(
      first_name: params[:first_name] || @contact.first_name,
      last_name: params[:last_name] || @contact.last_name,
      email: params[:email] || @contact.email,
      phone_number: params[:phone_number] || @contact.phone_number
    )
    render 'show.json.jb'
  end

  def destroy
    @contact = Contact.all.find_by(id: params['id'])
    @contact.destroy
    render 'show.json.jb'
  end
end
