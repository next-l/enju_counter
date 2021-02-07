class CreateEnjuCounterIrM1Reports < ActiveRecord::Migration[6.1]
  def change
    create_table :enju_counter_ir_m1_reports do |t|
      t.references :enju_counter_ir_m1_requests, foreign_key: true, null: false, type: :uuid, index: {name: 'index_enju_counter_ir_m1_reports_on_ir_m1_requests_id'}

      t.timestamps
    end
  end
end
