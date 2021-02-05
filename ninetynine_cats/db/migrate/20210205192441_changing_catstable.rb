class ChangingCatstable < ActiveRecord::Migration[5.2]
  def change
    rename_column :cats, :descrption, :description
  end
end
