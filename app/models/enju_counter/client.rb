module EnjuCounter
  class Client
    def initialize(file)
      response = JSON.parse(File.open(file).read)
      @result = response.deep_transform_keys { |key| key.to_s.underscore }
    end

    def report_items
      @result['report_items'].map{|item|
        ReportItem.new(item)
      }
    end
  end
end
