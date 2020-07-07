# frozen_string_literal: true

module Civics
  class Search
    def self.by_location(location)
      res = Faraday.get do |req|
        req.url 'https://www.googleapis.com/civicinfo/v2/representatives'
        req.params['key'] = ENV['GOOGLE_API_KEY']
        req.params['address'] = location
      end
      res
    end
  end
end
