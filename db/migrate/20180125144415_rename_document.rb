class RenameDocument < ActiveRecord::Migration[5.1]

    def self.up
      rename_table :documents, :document_references
      rename_column :actors, :document_id, :document_reference_id
      rename_column :senders, :document_id, :document_reference_id
      rename_column :patients, :document_id, :document_reference_id
      
    end
  
    def self.down
      rename_table :document_references, :documents
      rename_column :actors, :document_reference_id, :document_id
      rename_column :senders, :document_reference_id, :document_id
      rename_column :patients, :document_reference_id, :document_id
    end

end
