class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :post, index: true, foreign_key: true
      t.string :text

      t.timestamps
    end
  end
end
