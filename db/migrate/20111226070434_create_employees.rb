class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.integer :ref_no
      t.string :fname
      t.string :lname
      t.integer :age

      t.timestamps
    end
  end
end
