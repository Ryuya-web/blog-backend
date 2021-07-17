class UploadController < ApplicationController
  def image
    file = params[:asset][:file]
    blob = ActiveStorage::Blob.create_after_upload!(
      io: file,
      filename: file.original_filename,
      content_type: file.content_type
    )

    render json: { filename: url_for(blob) }
  end
end
