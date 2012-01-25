class HomeController < ApplicationController
  def index
	@phone_number = '6315551234'
	@body = params.has_key?(:Body) ? params[:Body] : "NA"
	@from = params.has_key?(:From) ? params[:From] : "NA"

  end
end
