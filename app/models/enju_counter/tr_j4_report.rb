module EnjuCounter
  class TrJ4Report < ApplicationRecord
    belongs_to :enju_counter_tr_j4_request
  end
end

# == Schema Information
#
# Table name: enju_counter_tr_j4_reports
#
#  id                             :bigint           not null, primary key
#  enju_counter_tr_j4_requests_id :uuid             not null
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#
