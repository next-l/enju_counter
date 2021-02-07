class CreateEnjuCounterRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :enju_counter_requests do |t|
      t.references :user, null: false, foreign_key: true
      t.json :response, default: {}, null: false

      t.timestamps
    end
  end
end
