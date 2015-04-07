class StaticPagesController < ApplicationController
	def home
		@active = 'home'
	end

	def motivation
		@active = 'motivation'
		@motivation_quote = Quote.motivation_quotes.shuffle
	end

end