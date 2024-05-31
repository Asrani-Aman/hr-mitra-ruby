class AddColumnsToEmployees < ActiveRecord::Migration[7.1]
  def change
    # The `add_column` method is a built-in method in Ruby on Rails that allows you to add a new column to a database table.
    # The `add_column` method takes three arguments: 
    # first, the name of the table to which you want to add the column; 
    # second, the name of the column you want to add; 
    # and third, the data type of the column.

    add_column :employees, :date_of_birth, :date
    add_column :employees,:job_title, :string
  end
end
