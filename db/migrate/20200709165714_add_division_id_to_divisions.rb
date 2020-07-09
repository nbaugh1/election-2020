class AddDivisionIdToDivisions < ActiveRecord::Migration[6.0]
  def change
    add_column :divisions, :division_id, :string
  end
end
