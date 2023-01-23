class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :gender
      t.date :date_of_birth
      t.references :level, null: false, foreign_key: true

      t.timestamps
    end
  end
end
