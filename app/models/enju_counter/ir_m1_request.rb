module EnjuCounter
  class IrM1Request < ApplicationRecord
    has_one :enju_counter_ir_m1_report
  end
end
