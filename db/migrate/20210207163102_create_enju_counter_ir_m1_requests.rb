class CreateEnjuCounterIrM1Requests < ActiveRecord::Migration[6.1]
  def change
    create_table :enju_counter_ir_m1_requests, id: :uuid do |t|

      t.timestamps
    end
  end
end
