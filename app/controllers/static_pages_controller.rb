class StaticPagesController < ApplicationController
	def home
		@active = 'home'
	end

	def motivation
		@active = 'motivation'
	end

end