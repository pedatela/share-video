class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :link
      t.string :title
      t.string :description
      t.datetime :published_at
      t.integer :video_likes
      t.integer :video_dislikes
      t.string :uid

      t.timestamps
    end
    add_index :videos, :uid
  end
end
