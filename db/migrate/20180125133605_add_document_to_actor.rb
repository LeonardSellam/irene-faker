class AddDocumentToActor < ActiveRecord::Migration[5.1]
  def change
    add_reference :actors, :document, foreign_key: true
  end
end
