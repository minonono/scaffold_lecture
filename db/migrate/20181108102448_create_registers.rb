class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
