class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.string :fullname
      t.string :titlt
      t.string :image

      t.timestamps
    end
  end
end
