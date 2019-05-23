class CreateDocument < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :document_name
      t.string :document_url
      t.string :document_description

      t.timestamps
    end
  end
end
