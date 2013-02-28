class AddColumnDocumentStateIdToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :document_state_id, :integer
  end
end
