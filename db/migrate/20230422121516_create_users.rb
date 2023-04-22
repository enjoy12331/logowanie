class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.name :name
      t.surname :surname
      t.email :email
      t.timestamps
    end
  end
end
