class CreateOks < ActiveRecord::Migration
  def change
    create_table :oks do |t|
      t.string :name

      t.timestamps
    end
  end
end
