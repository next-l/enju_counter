class CreateEnjuCounterTrJ3Reports < ActiveRecord::Migration[6.1]
  def change
    create_table :enju_counter_tr_j3_reports do |t|
      t.references :enju_counter_tr_j3_requests, foreign_key: true, null: false, type: :uuid, index: {name: 'index_enju_counter_tr_j3_reports_on_tr_j3_requests_id'}

      t.timestamps
    end
  end
end
