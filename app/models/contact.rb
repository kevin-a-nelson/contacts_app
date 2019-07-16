class Contact < ApplicationRecord
  belongs_to :user
  has_many :groups, through: :group_contacts

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end
end
