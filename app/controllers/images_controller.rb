class ImagesController < ApplicationController
    def create
        @image = Image.new
        @image_new = Image.new(image_params)
        if @image_new.save
          if Image.count != 0
            @image_new = Image.order(created_at: :desc).first
          end
          @image_tag = '<img src="" width="200">'
          if params["post_id"].present?
            redirect_to edit_post_path(id: params["post_id"], title: params["title"], content: params["content"])
          else
            redirect_to new_post_path(title: params["title"], content: params["content"])
          end
        end
    end

    private
    def title
      params["title"]
    end

    def content
      params["content"]
    end
    # Only allow a list of trusted parameters through.
    def image_params
      params.require(:image).permit(images:[] )
    end
end
