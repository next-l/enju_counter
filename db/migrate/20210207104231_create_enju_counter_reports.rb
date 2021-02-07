class CreateEnjuCounterReports < ActiveRecord::Migration[6.1]
  def change
    create_table :enju_counter_reports, id: :uuid do |t|
      t.references :enju_counter_request, null: false, foreign_key: true, type: :uuid
      t.references :report, polymorphic: true, index: true, type: :uuid
      t.jsonb :response, default: {}, null: false

      t.timestamps
    end
  end
end
