class CreateEnjuCounterDsrReports < ActiveRecord::Migration[6.1]
  def change
    create_table :enju_counter_dsr_reports, id: :uuid do |t|
      t.references :enju_counter_dsr_request, foreign_key: true, null: false, type: :uuid

      t.timestamps
    end
  end
end
