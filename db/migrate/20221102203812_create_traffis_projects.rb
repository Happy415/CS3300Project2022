class CreateTraffisProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :traffis_projects do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
