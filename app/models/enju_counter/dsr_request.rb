module EnjuCounter
  class DsrRequest < ApplicationRecord
    has_one :enju_counter_dsr_report
  end
end

# == Schema Information
#
# Table name: enju_counter_dsr_requests
#
#  id         :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
