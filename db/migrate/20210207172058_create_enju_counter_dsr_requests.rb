class CreateEnjuCounterDsrRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :enju_counter_dsr_requests, id: :uuid do |t|

      t.timestamps
    end
  end
end
