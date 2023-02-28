class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :listings, :place_type, :title
  end
end
