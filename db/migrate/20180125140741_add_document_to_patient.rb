class AddDocumentToPatient < ActiveRecord::Migration[5.1]
  def change
    add_reference :patients, :document, foreign_key: true
  end
end
