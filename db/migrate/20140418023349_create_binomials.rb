class CreateBinomials < ActiveRecord::Migration
  def change
    create_table :binomials do |t|
      t.integer :trials
      t.integer :successes
      t.float :chances
      t.float :answer

      t.timestamps
    end
  end
end
