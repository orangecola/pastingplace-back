class CreatePastes < ActiveRecord::Migration[5.2]
  def change
    create_table :pastes do |t|
      t.text :content

      t.timestamps
    end
  end
end
