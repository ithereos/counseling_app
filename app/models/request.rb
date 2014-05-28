class Request < ActiveRecord::Base
	belongs_to :requested, class_name: "Client"
 	belongs_to :requester, class_name: "Client"
 	validates :requester_id, presence: true
    validates :requested_id, presence: true
    validates :details, presence: true
    has_attached_file :appendices, :url => "/files/:id/appendices.pdf"
    has_attached_file :proofs, :url => "/files/:id/proofs.pdf"
    
    validates_attachment_content_type :proofs, :content_type => 'application/pdf'
    validates_attachment_content_type :appendices, :content_type => 'application/pdf'
end
