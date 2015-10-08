class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :ticket
      t.string :email
      t.string :name
      t.string :phone
      t.string :org
      t.date :date_start
      t.date :date_end
      t.date :date_submitted
      t.text :info

      t.timestamps null: false
    end
  end
end
