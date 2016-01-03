class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :key
      t.string :value
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
