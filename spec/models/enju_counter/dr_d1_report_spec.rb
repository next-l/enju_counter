require 'rails_helper'

module EnjuCounter
  RSpec.describe DrD1Report, type: :model do
    pending "add some examples to (or delete) #{__FILE__}"
  end
end

# == Schema Information
#
# Table name: enju_counter_dr_d1_reports
#
#  id                             :bigint           not null, primary key
#  enju_counter_dr_d1_requests_id :uuid             not null
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#
