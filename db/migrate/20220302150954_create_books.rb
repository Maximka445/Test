class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.integer :user_id, index: true
      t.text :name_book

      t.timestamps
    end
  end
end
