require './db/config'

class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.timestamps
    end
  end
end
