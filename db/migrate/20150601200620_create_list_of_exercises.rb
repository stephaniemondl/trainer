class CreateListOfExercises < ActiveRecord::Migration
  def change
    create_table :list_of_exercises do |t|
      t.string :exercise_category
      t.integer :_of_sets
      t.integer :user_id
      t.integer :reps
      t.integer :time_in_minutes
      t.text :day_of_week
      t.text :exercise_name

      t.timestamps

    end
  end
end
