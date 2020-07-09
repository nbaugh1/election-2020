# frozen_string_literal: true

module Civics
  class Search
    def self.by_location(location)
      res = Faraday.get do |req|
        req.url 'https://www.googleapis.com/civicinfo/v2/representatives'
        req.params['key'] = ENV['GOOGLE_API_KEY']
        req.params['address'] = location
      end
      @response = JSON.parse res.body
      divisions = []
      @response['divisions'].each do |_d|
        divisions << _d
      end
      offices = []
      @response['offices'].each do |_o|
        offices << _o
      end
      officials = []
      @response['officials'].each do |_o|
        officials << _o
      end
      return data = { divisions: divisions, offices: offices, officials: officials }
    end
  end
end
