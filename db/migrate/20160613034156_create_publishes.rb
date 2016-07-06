class CreatePublishes < ActiveRecord::Migration
  def change
    create_table :publishes do |t|
      t.string :publishname
      t.string :address
      t.boolean :cd

      t.timestamps null: false
    end
  end
end
