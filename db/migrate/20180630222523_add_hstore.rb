# add_hstore migration: Enable hstore
class AddHstore < ActiveRecord::Migration[5.2]
  # Migration applied.
  def up
    enable_extension :hstore
  end

  # Rollback.
  def down
    disable_extension :hstore
  end
end
