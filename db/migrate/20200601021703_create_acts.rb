class CreateActs < ActiveRecord::Migration[6.0]
  def change
    create_table :acts do |t|
      t.string :who
      t.string :title
      t.string :link
      t.date :when

      t.timestamps
    end
  end
end
