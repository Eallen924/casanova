class CreateQuestionTags < ActiveRecord::Migration
  def change
    create_table :question_tags do |t|
      t.belongs_to :tag
      t.belongs_to :question
      t.timestamps
    end
  end
end
