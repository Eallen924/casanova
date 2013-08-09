class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to  :user
      t.boolean     :up, default: true
      t.integer     :votable_id
      t.string      :votable_type
      t.timestamps
    end
  end
end
