class CreateFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :files do |t|
      t.string :file_name
      t.string :file_url
    end
  end
end
