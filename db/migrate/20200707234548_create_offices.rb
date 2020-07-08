# frozen_string_literal: true

class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.string :name
      t.string :level
      t.string :offical_indices, array: true

      t.timestamps
    end
  end
end
