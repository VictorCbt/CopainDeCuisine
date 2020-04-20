class CreateQuantites < ActiveRecord::Migration[6.0]
  def change
    create_table :quantites do |t|
      t.text :nom
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
