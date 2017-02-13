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
  

end
