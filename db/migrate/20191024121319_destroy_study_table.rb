class DestroyStudyTable < ActiveRecord::Migration[5.2]
  def change
  	drop_table :study
  end
end
