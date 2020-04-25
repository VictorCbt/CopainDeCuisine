class ChangeColumnTypetorecette < ActiveRecord::Migration[6.0]
  def change
    rename_column :recettes, :type, :typeplat
  end
end
