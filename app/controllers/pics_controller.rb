class PicsController < ApplicationController
	def index
		@pics = Pic.all 
	end

	def new
		@pic = Pic.new
	end

	def create
		# Pic.create(:hour => 1,
		# :emotion => "Stoked",
		# :learned => "HTML and CSS ROcks!")
		Pic.create(pics_params) #this will shove the user input into our database
		redirect_to pics_path #this tells you where to 'bounce' the user to once they click submit
	end

	private
	def pics_params
		params.require(:pic).permit(
				:hour, :emotion, :learned)
	end
end