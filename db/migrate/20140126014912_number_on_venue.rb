class NumberOnVenue < ActiveRecord::Migration
  def up
    add_column :venues, :phone_number, :string
    
  end

  def down
  end
end
