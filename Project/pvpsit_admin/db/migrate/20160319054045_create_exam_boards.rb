class CreateExamBoards < ActiveRecord::Migration
  def change
    create_table :exam_boards do |t|
      t.string :title
      t.string :url

      t.timestamps null: false
    end
  end
end
