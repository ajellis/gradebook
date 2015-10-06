class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :name
      t.date :date
      t.integer :student_id
      t.string :grade

      t.timestamps null: false
    end
  end
end
