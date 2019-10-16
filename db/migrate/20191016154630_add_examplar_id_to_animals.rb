class AddExamplarIdToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :exemplar_id, :integer, index: true
  end
end
