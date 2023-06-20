class AddForeingKeyToBookmarks < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :bookmarks, :books, on_delete: :cascade
  end
end
