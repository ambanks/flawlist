class QuotesController < ApplicationController

	def new
		@active = 'quotes'
		@quote = Quote.new
end