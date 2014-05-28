class RemoveAppendicesAndProofsFromRequests < ActiveRecord::Migration
  def change
    remove_column :requests, :appendices, :binary
    remove_column :requests, :proofs, :binary
  end
end
