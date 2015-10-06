class Guardian < ActiveRecord::Base
 belongs_to :student 

  validates :name, presence: true
  validates :email, presence: true
  validates :password_digest, presence: true
  validates :student_id, presence: true
end
