class CreatePostts < ActiveRecord::Migration
  def change
    create_table :postts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
