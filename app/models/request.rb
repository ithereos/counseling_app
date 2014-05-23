class Request < ActiveRecord::Base
	belongs_to :requested, class_name: "Client"
 	belongs_to :requester, class_name: "Client"
 	validates :requester_id, presence: true
    validates :requested_id, presence: true
    validates :details, presence: true
end