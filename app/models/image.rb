class Image < ApplicationRecord
    has_many_attached :images
    def url
        helpers = Rails.application.routes.url_helpers
        helpers.rails_representation_url(file.variant({}), only_path: true)
    end
end
