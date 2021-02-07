class CreateEnjuCounterTrJ4Requests < ActiveRecord::Migration[6.1]
  def change
    create_table :enju_counter_tr_j4_requests, id: :uuid do |t|

      t.timestamps
    end
  end
end
