class CreatePoissons < ActiveRecord::Migration
  def change
    create_table :poissons do |t|
      t.string :lambda
      t.string :occurances

      t.timestamps
    end
  end
end
