class CreateUserpages < ActiveRecord::Migration
  def change
    create_table :userpages do |t|
      t.references :user, index: true
      t.references :page, index: true
      t.string :role

      t.timestamps
    end
  end
end
