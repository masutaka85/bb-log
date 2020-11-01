class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.date       :date,             null: false
      t.string     :text,             null: false
      t.integer    :position_id
      t.integer    :batting_order_id
      t.integer    :kiyou_id,         null: false
      t.timestamps
    end
  end
end
