class User < ActiveRecord::Base

  has_secure_password

  has_many :answers
  has_many :questions, through: :answers

  validates(:name, { presence: true })
  validates(:email, { uniqueness: {case_sensitive: false}})
end

