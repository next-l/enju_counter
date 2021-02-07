class CreateEnjuCounterRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :enju_counter_requests, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true
      t.json :response, default: {}, null: false
      t.references :request, polymorphic: true, index: true, type: :uuid

      t.timestamps
    end
  end
end
