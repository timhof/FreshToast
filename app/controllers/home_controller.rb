class HomeController < ApplicationController
 require 'builder'


  def index
	@phone_number = '6315551234'
	@body = params.has_key?(:Body) ? params[:Body] : "NA"
	@from = params.has_key?(:From) ? params[:From] : "NA"

	puts twilio_response
  end

  def twilio_response
	xml = Builder::XmlMarkup.new( :indent => 2 )
	xml.instruct! :xml, :encoding => "UTF-8"
	xml.Response do |p|
	  p.Sms "Got it"
	end
  end	

end
