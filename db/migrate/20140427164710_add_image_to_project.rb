class AddImageToProject < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :image
    end
  end
end
