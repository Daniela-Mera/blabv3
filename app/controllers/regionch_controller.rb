class RegionchController < ApplicationController
  def index
        @regionchs = Regionch.all

  end
end
