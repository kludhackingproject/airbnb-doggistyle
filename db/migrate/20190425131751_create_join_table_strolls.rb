class CreateJoinTableStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_strolls do |t|
      t.belongs_to :dog, index: true
      t.belongs_to :dogsitter, index: true

      t.timestamps
    end
  end
end
