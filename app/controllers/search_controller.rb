# frozen_string_literal: true

class SearchController < ApplicationController
  def index
    divisions = []
    if params['location']
      data = Civics::Search.by_location(params['location'])
      data[:divisions].each do |d|
        division = Division.new(division_id: d[0], name: d[1]['name'], office_indices: d[1]['officeIndices'])
        divisions << division
      end
      byebug
    end
    puts @response
  end
end
