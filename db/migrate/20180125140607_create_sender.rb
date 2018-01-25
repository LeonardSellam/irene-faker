class CreateSender < ActiveRecord::Migration[5.1]
  def change
    create_table :senders do |t|
      t.float :confidence
      t.string :first_name
      t.string :last_name
      t.string :reference
      t.string :role
    end
  end
end
