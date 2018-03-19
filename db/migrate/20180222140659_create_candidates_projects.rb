class CreateCandidatesProjects < ActiveRecord::Migration[5.1]
  def up
    execute <<-SQL
      CREATE VIEW candidates_projects AS
      SELECT candidates_skills.candidate_id,
             projects_skills.project_id,
             COUNT(*) AS matched_skills_no,
             GROUP_CONCAT(skills.name) AS matched_skills,
             SUM(candidates_skills.experience) AS experience
      FROM candidates_skills
      INNER JOIN projects_skills
      ON candidates_skills.skill_id = projects_skills.skill_id
      INNER JOIN skills
      ON candidates_skills.skill_id = skills.id
      GROUP BY candidate_id, project_id
    SQL
  end

  def down
    execute 'DROP view candidates_projects;'
  end
end
