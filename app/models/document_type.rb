class DocumentType < ActiveRecord::Base
  has_many :documents, :class_name => "Document"
  attr_accessible :name, :template, :since_date
end
