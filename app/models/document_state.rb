class DocumentState < ActiveRecord::Base
  belongs_to :document_state_prev, :class_name => "DocumentState", :foreign_key => "document_state_prev_id"

  attr_accessible :document_state_prev_id, :name

end
