class CreateEnjuCounterDrD2Reports < ActiveRecord::Migration[6.1]
  def change
    create_table :enju_counter_dr_d2_reports do |t|
      t.references :enju_counter_dr_d2_requests, foreign_key: true, null: false, type: :uuid, index: {name: 'index_enju_counter_dr_d2_reports_on_dr_d2_requests_id'}

      t.timestamps
    end
  end
end
