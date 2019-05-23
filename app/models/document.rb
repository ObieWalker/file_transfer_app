class Document < ApplicationRecord
  mount_uploader :document, DocumentUploader  
    # validates :document_name, presence: true 
    # validates :document_url, presence: true 
end
