require 'rails_helper'

module EnjuCounter
  RSpec.describe ReportItem, type: :model do
    before(:each) do
      client = EnjuCounter::Client.new(File.expand_path('./spec/fixtures/files/sushi_simple.json'))
      @item = client.report_items.first
    end

    it 'should respond to title' do
      expect(@item.title).to eq 'Journal of fake data'
    end

    it 'should respond to print_issn' do
      expect(@item.print_issn).to eq "0737-1764"
    end

    it 'should respond to online_issn' do
      expect(@item.online_issn).to eq "1234-5678"
    end

    it 'should respond to proprietary_id' do
      expect(@item.proprietary_id).to eq "journ.fake.data"
    end

    it 'should respond to doi' do
      expect(@item.doi).to eq "some.fake.doi"
    end
  end
end
