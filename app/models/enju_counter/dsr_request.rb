module EnjuCounter
  class DsrRequest < ApplicationRecord
    has_one :enju_counter_dsr_report
  end
end
