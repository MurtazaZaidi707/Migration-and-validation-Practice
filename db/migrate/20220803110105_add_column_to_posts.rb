class AddColumnToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :age, :integer
    add_column :posts, :email, :string
  end
end
