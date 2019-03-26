class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :email
      t.string :pen_name
      t.string :password_digest
      t.string :location
      t.timestamps
    end
  end
end
