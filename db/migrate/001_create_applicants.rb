class CreateApplicants < ActiveRecord::Migration
  def self.up
    create_table :applicants do |t|
      t.column :phone, :string, :null => false
      t.column :name, :string, :null => false
    end
  end

  def self.down
    drop_table :applicants
  end
end