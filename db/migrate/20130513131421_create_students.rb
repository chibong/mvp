class CreateStudents < ActiveRecord::Migration
   def change
   create_table :students do |t|
      t.string :firstname
      t.string :lastname
    end
  end
end
