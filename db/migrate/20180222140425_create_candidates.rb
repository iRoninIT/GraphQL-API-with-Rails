class CreateCandidates < ActiveRecord::Migration[5.1]
  def change
    create_table :candidates do |t|
      t.string :fullname

      t.timestamps
    end
  end
end
