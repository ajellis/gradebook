class CreateGuardians < ActiveRecord::Migration
  def change
    create_table :guardians do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :student_id

      t.timestamps null: false
    end
  end
end
