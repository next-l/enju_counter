module EnjuCounter
  class DsrReport < ApplicationRecord
    belongs_to :enju_counter_dsr_request

    def report
      response['report']['report-datasets']
    end
  end
end

# == Schema Information
#
# Table name: enju_counter_dsr_reports
#
#  id                         :uuid             not null, primary key
#  enju_counter_dsr_report_id :uuid             not null
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#
