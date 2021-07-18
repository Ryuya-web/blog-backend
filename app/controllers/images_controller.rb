class ImagesController < ApplicationController
    def create
        @image = Image.new
        @image_new = Image.new(image_params)
        if @image_new.save
          @image_new = Image.find(Image.count)
          @image_tag = '<a href="http://example.com">book store</a>'
          redirect_to new_post_path(title: params["title"], content: params["content"])
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
