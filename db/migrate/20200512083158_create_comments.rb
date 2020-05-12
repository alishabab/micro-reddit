class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body

      t.timestamps
      t.belongs_to :user
      t.belongs_to :post
    end
  end
end
