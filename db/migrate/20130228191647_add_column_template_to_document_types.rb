class AddColumnTemplateToDocumentTypes < ActiveRecord::Migration
  def change
    add_column :document_types, :template, :text
    add_column :document_types, :since_date, :date
  end
end
