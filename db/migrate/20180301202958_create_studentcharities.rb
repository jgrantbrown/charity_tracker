class CreateStudentcharities < ActiveRecord::Migration[5.1]
  def change
    create_table :studentcharities do |t|
      t.belongs_to :charity, index: true
      t.belongs_to :student, index: true
      t.timestamps
    end
  end
end
