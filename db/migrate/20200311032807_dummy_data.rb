class DummyData < ActiveRecord::Migration[6.0]
  def up
    create_table :dummy_data do |t|
      t.string :name
    end
  end

  def down
    drop_table :dummy_data
  end
end
