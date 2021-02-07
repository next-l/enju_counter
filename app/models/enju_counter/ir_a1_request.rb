module EnjuCounter
  class IrA1Request < ApplicationRecord
    has_one :enju_counter_ir_a1_report
  end
end

# == Schema Information
#
# Table name: enju_counter_ir_a1_requests
#
#  id         :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
