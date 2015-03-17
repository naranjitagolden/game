class RenamePointColumnToPoints < ActiveRecord::Migration
  def change
  	rename_column :players, :point, :points
  end
end
