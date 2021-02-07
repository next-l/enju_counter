module EnjuCounter
  class Report < ApplicationRecord
    belongs_to :enju_counter_request
  end
end

# == Schema Information
#
# Table name: enju_counter_reports
#
#  id                      :uuid             not null, primary key
#  enju_counter_request_id :uuid             not null
#  report_type             :string
#  report_id               :uuid
#  response                :jsonb            not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
