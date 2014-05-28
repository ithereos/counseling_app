class Request < ActiveRecord::Base
	belongs_to :requested, class_name: "Client"
 	belongs_to :requester, class_name: "Client"
 	validates :requester_id, presence: true
    validates :requested_id, presence: true
    validates :details, presence: true
    has_attached_file :appendices, :url => "/files/:id/appendices"
    has_attached_file :proofs, :url => "/files/:id/proofs"
    do_not_validate_attachment_file_type :proofs
    do_not_validate_attachment_file_type :appendices
end
