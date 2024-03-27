class AddCoreCountToCpus < ActiveRecord::Migration[7.1]
  def change
    add_column :cpus, :core_count, :integer
  end
end
