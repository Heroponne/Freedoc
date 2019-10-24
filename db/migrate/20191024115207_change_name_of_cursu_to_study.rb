class ChangeNameOfCursuToStudy < ActiveRecord::Migration[5.2]
  def change
  	rename_table :cursus, :study
  end
end
