class VideosController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def index
			@videos = Video.order('created_at DESC')
	end
	
	def new
		@video = Video.new
	end

	def create
		@video = Video.new(video_params)
		@video.user_id = current_user.id
		if @video.save
			flash[:success] = 'Video added!'
			redirect_to root_url
		else
			render :new
		end
	end
		
	private
	
	def video_params
		params.require(:video).permit(:link)
	end
end
