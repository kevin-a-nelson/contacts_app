class Api::ContactsController < ApplicationController
  def the_contact
    @contact = Contact.first
    render 'contact.json.jb'
  end

  def all
    @contacts = Contact.all
    render 'all_contacts.json.jb'
  end
end
