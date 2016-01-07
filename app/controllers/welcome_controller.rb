class WelcomeController < ApplicationController
  def index
  	@education = Education.all.order("start ASC")
  end
end
