class CreateGuilles < ActiveRecord::Migration
  def change
    create_table :guilles do |t|
      t.string :name
      t.string :content
      t.string :edad

      t.timestamps
    end
  end
end
