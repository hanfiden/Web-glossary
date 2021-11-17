class CreateKeywords < ActiveRecord::Migration[6.1]
  def change
    create_table :keywords do |t|
      t.string :title
      t.text :definition
      t.text :image_url
      t.text :source_url

      t.timestamps
    end
  end
end
