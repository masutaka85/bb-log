class CreateFielders < ActiveRecord::Migration[6.0]
  def change
    create_table :fielders do |t|
      t.integer     :daseki
      t.integer     :hit
      t.integer     :two_base_hit
      t.integer     :three_base_hit
      t.integer     :homerun
      t.integer     :daten
      t.integer     :run
      t.integer     :strike_out
      t.integer     :walk_dead
      t.integer     :sacrifice
      t.integer     :steal
      t.integer     :error
      t.references  :user,          null: false,  foreign_key: true
      t.references  :stat,          null: false,  foreign_key: true
      t.timestamps
    end
  end
end
