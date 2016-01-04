class WelcomeController < ApplicationController
  def index
  	@education = Education.all.order("end DESC")
  end
end
