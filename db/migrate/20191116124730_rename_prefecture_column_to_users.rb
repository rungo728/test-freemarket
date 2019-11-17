class RenamePrefectureColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :prefecture, :prefecture_id
  end
end
