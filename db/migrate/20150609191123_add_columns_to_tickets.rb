class AddColumnsToTickets < ActiveRecord::Migration
  def change
    rename_column :tickets, :underwriter, :uw_name
    add_column :tickets, :loan_number, :integer, :limit => 8, :precision => 11
    add_column :tickets, :notes, :text
    add_column :tickets, :second_signature, :boolean, :default => false
  end
end
