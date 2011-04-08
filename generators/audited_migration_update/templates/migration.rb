class <%= class_name %> < ActiveRecord::Migration
  def self.up
    add_column :audits, :comment, :string
    add_column :audits, :association_id, :integer
    add_column :audits, :association_type, :string
    add_column :audits, :remote_address, :string
  end

  def self.down
    remove_column :audits, :comment
    remove_column :audits, :association_id
    remove_column :audits, :association_type
    remove_column :audits, :remote_address
  end
end
