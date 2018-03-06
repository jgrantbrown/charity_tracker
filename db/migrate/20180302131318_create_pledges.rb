class CreatePledges < ActiveRecord::Migration[5.1]
  def change
    create_table :pledges do |t|
      t.belongs_to :user, index: true
      t.belongs_to :studentcharity, index: true
      t.integer :amount
      t.timestamps
    end
  end
end
