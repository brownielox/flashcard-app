class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :name
    end


    add_index :cards, :subject_id
  end
end
