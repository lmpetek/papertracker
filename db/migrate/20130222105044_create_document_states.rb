class CreateDocumentStates < ActiveRecord::Migration
  def change
    create_table :document_states do |t|
      t.string :name
      t.integer :document_state_prev_id

      t.timestamps
    end
  end
end
