class AddTagToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :post_tag, :string
  end
end
