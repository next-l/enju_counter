require 'rails_helper'

module EnjuCounter
  RSpec.describe Client, type: :model do
    it 'should respond to report_items' do
      client = EnjuCounter::Client.new(File.expand_path('./spec/fixtures/files/sushi_simple.json'))
      expect(client.report_items.size).to eq 1
    end
  end
end
