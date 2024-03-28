class CreateCpus < ActiveRecord::Migration[7.1]
  def change
    create_table :cpus do |t|
      t.string :name
      t.decimal :price
      t.integer :core_count
      t.decimal :core_clock
      t.decimal :boost_clock
      t.string :integrated_graphics
      t.boolean :smt

      t.timestamps
    end
  end
end
