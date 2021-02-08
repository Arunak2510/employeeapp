class CreateEmployeedetails < ActiveRecord::Migration[6.1]
  def change
    create_table :employeedetails do |t|
      t.string :first_name
      t.string :last_string
      t.string :age
      t.string :gender
      t.string :designation

      t.timestamps
    end
  end
end
