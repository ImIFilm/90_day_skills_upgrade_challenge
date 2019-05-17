class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
      t.string "name", :limit => 20
      t.string "email", :limit => 30
      t.timestamps
    end
    add_index("users", "user")
  end

  def down
    drop_table :users
  end
end
