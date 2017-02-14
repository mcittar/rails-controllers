# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  username   :text             not null
#

class User < ActiveRecord::Base
  validates :username, presence: true

  has_many :contacts

  has_many :contact_shares

  has_many :shared_contacts,
    through: :contact_shares,
    source: :contact
end
