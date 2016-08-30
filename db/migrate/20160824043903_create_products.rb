class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.belongs_to :user, index: true
      t.belongs_to :category, index: true
      t.string :name
      t.string :description
      t.float :value
      t.timestamps
    end
  end
end
