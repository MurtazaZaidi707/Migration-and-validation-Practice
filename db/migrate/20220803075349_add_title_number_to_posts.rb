class AddTitleNumberToPosts < ActiveRecord::Migration[7.0]
  def up
    add_column :posts, :post_number, :string
    add_index :posts, :post_number
  end

  def down
    remove_column :posts, :post_number, :string
    remove_index :posts, :post_number
  end
end
