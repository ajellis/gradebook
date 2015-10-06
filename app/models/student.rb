class Student < ActiveRecord::Base
  belongs_to :teacher
  has_many :guardians
  has_many :grades

  validates :name, presence: true
  validates :email, presence: true
  validates :password_digest, presence: true
  validates :teacher_id, presence: true
end
