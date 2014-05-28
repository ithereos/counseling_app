class AddAppendicesAndProofsToRequestsPaperclip < ActiveRecord::Migration
  def change
  	add_attachment :requests, :appendices
  	add_attachment :requests, :proofs
  end
end
