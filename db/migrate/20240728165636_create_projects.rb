class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :body
      t.string :project_url
      t.string :stack
      t.string :image_url

      t.timestamps
    end
  end
end
