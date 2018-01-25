class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string :category
      t.string :first_name
      t.string :last_name
      t.string :lifen_uuid
      t.string :reference
      t.string :confidence
    end
  end
end
