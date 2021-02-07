module EnjuCounter
  class TrB2Report < ApplicationRecord
    belongs_to :enju_counter_tr_b2_request
  end
end

# == Schema Information
#
# Table name: enju_counter_tr_b2_reports
#
#  id                             :bigint           not null, primary key
#  enju_counter_tr_b2_requests_id :uuid             not null
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#
