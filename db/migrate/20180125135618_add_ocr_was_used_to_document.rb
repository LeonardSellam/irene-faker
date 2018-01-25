class AddOcrWasUsedToDocument < ActiveRecord::Migration[5.1]
  def change
    add_column :documents, :ocr_was_used, :integer
  end
end
