class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.column :description, :string

      t.timestamps
    end
  end
end
