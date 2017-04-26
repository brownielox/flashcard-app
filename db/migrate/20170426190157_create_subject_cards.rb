class CreateSubjectCards < ActiveRecord::Migration[5.0]
  def change
    create_table :subject_cards do |t|
      t.integer :subject_id
      t.integer :card_id
    end
  end
end
