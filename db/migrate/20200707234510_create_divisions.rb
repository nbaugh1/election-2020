# frozen_string_literal: true

class CreateDivisions < ActiveRecord::Migration[6.0]
  def change
    create_table :divisions do |t|
      t.string :name
      t.string :scope
      t.string :office_indices, array: true

      t.timestamps
    end
  end
end
