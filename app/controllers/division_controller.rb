# frozen_string_literal: true

class DivisionController < ApplicationController
  def index
    @divisions = []
    session[:divisions].each do |d|
      div = Division.find_by(id: d)
      @divisions.push(div)
    end
  end

  def new
    @divison = Division.new
  end
end
