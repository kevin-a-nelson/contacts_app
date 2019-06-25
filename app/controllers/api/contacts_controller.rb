class Api::ContactsController < ApplicationController
  def the_contact
    @all_contacts = []
    Contact.all.each do |contact|
      @all_contacts << contact
    end
    render 'contact.json.jb'
  end
end
