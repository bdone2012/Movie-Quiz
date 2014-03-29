class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :picture_url
      t.string :email
      t.string :password_digest
      t.timestamps
    end
  end
end
