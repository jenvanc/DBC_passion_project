class CreateUrls < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :imageUrl, null: false, unique: true

      t.timestamps(null: false)
    end
  end
end
