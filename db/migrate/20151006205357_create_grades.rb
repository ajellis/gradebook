class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :assignment_name
      t.date :date
      t.integer :sutdent_id
      t.string :grade

      t.timestamps null: false
    end
  end
end
