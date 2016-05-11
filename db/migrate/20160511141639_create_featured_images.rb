class CreateFeaturedImages < ActiveRecord::Migration
  def change
    create_table :featured_images do |t|
      t.string :url
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
