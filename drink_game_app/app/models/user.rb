# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  age             :string(255)
#  gender          :string(255)
#  picture_url     :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base

  has_secure_password

  has_many :answers
  has_many :questions, through: :answers

  validates(:name, { presence: true })
  validates(:email, { uniqueness: {case_sensitive: false}})
end


