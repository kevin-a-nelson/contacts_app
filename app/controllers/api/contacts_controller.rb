class Api::ContactsController < ApplicationController

  def create
  end

  def index
    @contact = Contact.all
    render 'index.json.jb'
  end

  def update
  end

  def destroy
  end
end
