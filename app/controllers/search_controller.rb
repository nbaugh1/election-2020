# frozen_string_literal: true

class SearchController < ApplicationController
  def index
    if params['location']
      res = Civics::Search.by_location(params['location'])
      @response = JSON.parse res.body
      if @response
        session.delete(:divisions)
        session[:divisions] ||= []
        @response['divisions'].each do |d|
          division = Division.find_by(name: d[1]['name'])
          if division
            puts division.name.to_s + 'was alaready in the database'
            session[:divisions].push(division.id)
          else
            division = Division.create(name: d[1]['name'], office_indices: d[1]['officeIndices'])
            puts division.name.to_s
            session[:divisions].push(division.id)
          end
        end
      end
      redirect_to division_index_path
    end
  end
end
