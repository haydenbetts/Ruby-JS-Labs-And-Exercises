class CreateGrowingThings < ActiveRecord::Migration[5.1]
  def change
    create_table :growing_things do |t|

      t.timestamps
    end
  end
end
