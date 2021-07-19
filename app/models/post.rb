class Post < ApplicationRecord
    include Rails.application.routes.url_helpers
    has_one_attached :thumbnail_image
    has_many_attached :images
    def thumbnail_image_url
        # 紐づいている画像のURLを取得する
        thumbnail_image.attached? ? url_for(thumbnail_image).gsub('http:/localhost:3000','https://koddaku-backend.herokuapp.com') : nil
    end
    def url
        helpers = Rails.application.routes.url_helpers
        helpers.rails_representation_url(file.variant({}), only_path: true)
    end
end
