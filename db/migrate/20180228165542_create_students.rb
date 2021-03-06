class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :teacher, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
