class CreateExcels < ActiveRecord::Migration
  def change
    create_table :excels do |t|

      t.timestamps
    end
  end
end
