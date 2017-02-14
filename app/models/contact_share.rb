# == Schema Information
#
# Table name: contact_shares
#
#  id         :integer          not null, primary key
#  contact_id :integer          not null
#  user_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class ContactShare < ActiveRecord::Base
  validates :contact_id, :user_id, presence: true
  validate :duplicate_share

  belongs_to :contact

  belongs_to :user

  def duplicate_share
    duplicate = ContactShare.find_by(
      user_id: self.user_id,
      contact_id: self.contact_id
    )

    if duplicate
      self.errors[:email] << "Already shared for this user"
      return false
    end

    true
  end
end
