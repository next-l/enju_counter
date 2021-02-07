module EnjuCounter
  class TrJ2Request < ApplicationRecord
    has_one :enju_counter_tr_j2_report
  end
end

# == Schema Information
#
# Table name: enju_counter_tr_j2_requests
#
#  id         :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
