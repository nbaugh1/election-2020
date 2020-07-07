# frozen_string_literal: true

class SearchController < ApplicationController
  def index
    if params['location']
      res = Civics::Search.by_location(params['location'])
      @response = JSON.parse res.body
    end
  end
end
