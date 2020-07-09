# frozen_string_literal: true

class DivisionController < ApplicationController
  def index
    byebug
  end

  def new
    @divison = Division.new
  end
end
