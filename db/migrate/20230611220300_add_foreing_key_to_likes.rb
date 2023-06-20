class AddForeingKeyToLikes < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :likes, :books, on_delete: :cascade
  end
end
