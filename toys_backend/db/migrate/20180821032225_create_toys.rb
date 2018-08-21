class CreateToys < ActiveRecord::Migration[5.2]
  def change
    create_table :toys do |t|
      t.string :name
      t.integer :age
      t.string :tag

      t.timestamps
    end
  end
end

#backend set up almost done, check the error message when run "rails db:create"
