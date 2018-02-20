class RecordingController < ApplicationController
	def create
		@location = Location.find(params[:location_id])
		@recording = @location.recording.create(recording_param)
		redirect_to location_path(@location)
	end

	private
		def recording_params
			params.require(:recording).permit(:temp, :status)
		end
end
