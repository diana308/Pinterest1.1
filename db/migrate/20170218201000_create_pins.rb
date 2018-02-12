class CreatePins < ActiveRecord::Migration[5.0]
  def change
    create_table :pins do |t|
      t.string :photo
      t.string :description

      t.timestamps
    end
  end
end
