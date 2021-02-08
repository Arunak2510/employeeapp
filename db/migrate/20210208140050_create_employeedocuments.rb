class CreateEmployeedocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :employeedocuments do |t|
      t.string :first_name
      t.string :last_name
      t.string :age
      t.string :gender
      t.string :designation

      t.timestamps
    end
  end
end
