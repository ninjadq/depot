class StoreController < ApplicationController
  skip_before_action :authorize
	include CurrentCart
	before_action :set_cart
	before_action :set_counter, only: [:index]

	def index
    if params[:set_locale]
      redirect_to store_url(locale: params[:set_locale])
    else
  		@products = Product.order(:title)
    end
  	@counter = session[:counter] += 1
  end
  	private

  	def set_counter
  		session[:counter] = 0 if session[:counter].nil?
    end
end
