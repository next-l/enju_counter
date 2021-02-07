class CreateEnjuCounterPrP1Requests < ActiveRecord::Migration[6.1]
  def change
    create_table :enju_counter_pr_p1_requests, id: :uuid do |t|

      t.timestamps
    end
  end
end
