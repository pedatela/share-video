class LikesController < ApplicationController
    before_action :find_video
    def create
        @video.likes.create(user_id: current_user.id)
        redirect_to video_path(@video)
    end
    private
    def find_video
        @video = Post.find(params[:video_id])
    end
end
