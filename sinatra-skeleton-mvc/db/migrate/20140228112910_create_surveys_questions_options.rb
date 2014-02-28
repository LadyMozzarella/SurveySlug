class CreateSurveysQuestionsOptions < ActiveRecord::Migration
  def change
    create_table(:surveys) do |t|
      t.string :name, null: false
      t.belongs_to :user
      t.timestamps
    end

    create_table(:questions) do |t|
      t.string :prompt, null: false
      t.belongs_to :survey
      t.timestamps
    end

    create_table(:options) do |t|
      t.string :name, null: false
      t.belongs_to :question
      t.timestamps
    end
  end
end
