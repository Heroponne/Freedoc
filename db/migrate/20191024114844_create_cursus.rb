class CreateCursus < ActiveRecord::Migration[5.2]
  def change
    create_table :cursus do |t|
      t.string :name

      t.timestamps
    end
  end
end
