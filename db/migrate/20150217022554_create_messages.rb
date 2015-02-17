class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :movildestino
      t.string :message
      t.string :movilorigen

      t.timestamps
    end
  end
end
