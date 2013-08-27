class <%= migration_class_name %> < ActiveRecord::Migration
  def change
    create_table :<%= table_name %> do |t|
      t.references :favoriter, :polymorphic => true
      t.references :favoritable, :polymorphic => true
      t.timestamps
    end
    add_index :<%= table_name %>, [:favoriter_id, :favoriter_type]
    add_index :<%= table_name %>, [:favoritable_id, :favoritable_type]
  end
end