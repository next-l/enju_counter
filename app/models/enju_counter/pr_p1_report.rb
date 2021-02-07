module EnjuCounter
  class PrP1Report < ApplicationRecord
    belongs_to :enju_counter_pr_p1_request
  end
end

# == Schema Information
#
# Table name: enju_counter_pr_p1_reports
#
#  id                             :bigint           not null, primary key
#  enju_counter_pr_p1_requests_id :uuid             not null
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#
