class Removetablequantite < ActiveRecord::Migration[6.0]
  def change
    drop_table :quantites
  end
end
