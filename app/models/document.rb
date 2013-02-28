class Document < ActiveRecord::Base
  belongs_to :document_type, :class_name => "DocumentType", :foreign_key => "document_type_id"
  attr_accessible :description, :name, :document_type_id, :document_state_id
end
