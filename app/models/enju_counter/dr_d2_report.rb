module EnjuCounter
  class DrD2Report < ApplicationRecord
    belongs_to :enju_counter_dr_d2_request
  end
end

# == Schema Information
#
# Table name: enju_counter_dr_d2_reports
#
#  id                             :bigint           not null, primary key
#  enju_counter_dr_d2_requests_id :uuid             not null
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#
