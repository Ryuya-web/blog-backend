class ImagesController < ApplicationController
    def create
        @post = Post.new
        @image = Image.new
        @image = Image.new(image_params)
          if @image.save
          end
    end

    private

    # Only allow a list of trusted parameters through.
    def image_params
      params.require(:image).permit(images:[] )
    end
end
