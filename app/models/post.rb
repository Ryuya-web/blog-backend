class Post < ApplicationRecord
    include Rails.application.routes.url_helpers
    has_one_attached :thumbnail_image
    has_many_attached :images
    def thumbnail_image_url
        # 紐づいている画像のURLを取得する
        thumbnail_image.attached? ? url_for(thumbnail_image) : nil
    end
end
