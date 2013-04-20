class CreateSnames < ActiveRecord::Migration
  def change
    create_table :snames do |t|
      t.string :name

      t.timestamps
    end
  end
end
