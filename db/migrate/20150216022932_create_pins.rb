# frozen_string_literal: true

# CreatePins Migration class
class CreatePins < ActiveRecord::Migration[4.2]
  def change
    create_table :pins do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
