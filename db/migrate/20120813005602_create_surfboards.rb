class CreateSurfboards < ActiveRecord::Migration
  def change
    create_table :surfboards do |t|
      t.string :name

      t.timestamps
    end
  end
end
