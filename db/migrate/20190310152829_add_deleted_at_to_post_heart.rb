class AddDeletedAtToPostHeart < ActiveRecord::Migration[5.2]
  def change
    add_column :post_hearts, :deleted_at, :datetime
    add_index :post_hearts, :deleted_at
  end
end
