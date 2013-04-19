class CreateMissionmakers < ActiveRecord::Migration
  def change
    create_table :missionmakers do |t|
      t.string :name
      t.string :description
      t.string :tools
      t.string :element
      t.string :participation

      t.timestamps
    end
  end
end
