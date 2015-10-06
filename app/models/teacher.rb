class Teacher < ActiveRecord::Base
  has_many :students

  validates :name, presence: true
  validates :email, presence: true
  validates :password_digest, presence: true
end
