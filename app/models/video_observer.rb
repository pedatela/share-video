class VideoObserver < ActiveRecord::Observer
    def before_save(resource)
      video = Yt::Video.new url: resource.link
      resource.uid = video.id
      resource.title = video.title
      resource.video_likes = video.like_count
      resource.video_dislikes = video.dislike_count
      resource.description = video.description
      resource.published_at = video.published_at
    rescue Yt::Errors::NoItems
      resource.title = ''
    end
  end