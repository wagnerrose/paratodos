class Site::HomeController < ApplicationController

	layout "site"
  def index
  end

  def analyze
    @county = County.all
  end

end
