class CreateCandidatesSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :candidates_skills do |t|
      t.references :candidate, foreign_key: true
      t.references :skill, foreign_key: true
      t.integer :experience, null: false
    end

    add_index :candidates_skills, %i[candidate_id skill_id], unique: true
  end
end
