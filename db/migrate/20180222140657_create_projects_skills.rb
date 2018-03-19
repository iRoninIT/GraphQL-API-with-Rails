class CreateProjectsSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :projects_skills do |t|
      t.references :project, foreign_key: true
      t.references :skill, foreign_key: true
    end

    add_index :projects_skills, %i[project_id skill_id], unique: true
  end
end
