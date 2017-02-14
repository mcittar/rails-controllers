# == Schema Information
#
# Table name: contacts
#
#  id      :integer          not null, primary key
#  name    :string           not null
#  email   :string           not null
#  user_id :integer          not null
#

class Contact < ActiveRecord::Base
  validates :name, :email, :user_id, presence: true
  validate :duplicate_email

  belongs_to :owner

  has_many :contact_shares

  has_many :shared_users,
    through: :contact_shares,
    source: :user

  def duplicate_email
    duplicate = Contact.find_by(user_id: self.user_id, email: self.email)

    if duplicate
      self.errors[:user] << "Already has a contact with this email"
      return false
    end

    true
  end
end
