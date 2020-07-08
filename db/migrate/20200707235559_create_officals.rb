# frozen_string_literal: true

class CreateOfficals < ActiveRecord::Migration[6.0]
  def change
    create_table :officals do |t|
      t.string :name
      t.string :address, array: true
      t.string :party
      t.string :urls, array: true
      t.string :photo_url
      t.string :channels, array: true

      t.timestamps
    end
  end
end
