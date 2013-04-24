class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :date
      t.references :image

      t.timestamps
    end
    add_index :projects, :image_id
  end
end
