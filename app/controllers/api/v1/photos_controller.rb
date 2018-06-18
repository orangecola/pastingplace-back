class Api::V1::PhotosController < ApplicationController

  def upload
    blob = ActiveStorage::Blob.create_after_upload!(
      io: params[:file],
      filename: params[:file].original_filename,
      content_type: params[:file].content_type
    )
    s = url_for(blob)[22..-1]
    render json: { location: s }
  end

end
