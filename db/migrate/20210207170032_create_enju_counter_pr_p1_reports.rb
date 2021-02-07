class CreateEnjuCounterPrP1Reports < ActiveRecord::Migration[6.1]
  def change
    create_table :enju_counter_pr_p1_reports do |t|
      t.references :enju_counter_pr_p1_requests, foreign_key: true, null: false, type: :uuid, index: {name: 'index_enju_counter_pr_p1_reports_on_pr_p1_requests_id'}

      t.timestamps
    end
  end
end
