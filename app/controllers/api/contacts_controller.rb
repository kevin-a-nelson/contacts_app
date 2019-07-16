class Api::ContactsController < ApplicationController
  def show
    @contact = Contact.all.find_by(id: params['id'])
    render 'show.json.jb'
  end

  def index
    if current_user
      @contacts = current_user.contacts
    else
      @contacts = []
    end
    render 'index.json.jb'
  end

  def create
    @contact = Contact.new(
      first_name: params['first_name'],
      last_name: params['last_name'],
      middle_name: params['middle_name'],
      phone_number: params['phone_number'],
      email: params['email'],
      bio: params['bio'],
      user_id: current_user.id
    )
    if @contact.save
      render 'show.json.jb'
    else
      render 'errors.json.jb'
    end
  end

  def update
    @contact = Contact.all.find_by(id: params['id'])
    if @contact.update(
      first_name: params[:first_name] || @contact.first_name,
      last_name: params[:last_name] || @contact.last_name,
      middle_name: params[:middle_name] || @contact.middle_name,
      bio: params[:bio] || @contact.bio,
      email: params[:email] || @contact.email,
      phone_number: params[:phone_number] || @contact.phone_number
    )
      render 'show.json.jb'
    else
      render 'errors.json.jb'
    end
  end

  def destroy
    @contact = Contact.all.find_by(id: params['id'])
    @contact.destroy
    render 'show.json.jb'
  end
end
