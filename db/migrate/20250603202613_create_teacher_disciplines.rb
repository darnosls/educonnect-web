class CreateTeacherDisciplines < ActiveRecord::Migration[8.0]
  def change
    create_table :teacher_disciplines do |t|
      t.references :user, null: false, foreign_key: true
      t.references :discipline, null: false, foreign_key: true
      t.string :day_of_week
      t.string :period

      t.timestamps
    end
  end
end
