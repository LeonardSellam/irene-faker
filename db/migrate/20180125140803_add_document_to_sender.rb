class AddDocumentToSender < ActiveRecord::Migration[5.1]
  def change
    add_reference :senders, :document, foreign_key: true
  end
end
