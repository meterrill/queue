class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.column :underwriter, :string

      t.timestamps
    end
  end
end
