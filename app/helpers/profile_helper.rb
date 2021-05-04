module ProfileHelper
  def cover_image_url(user)
    img = user.cover_image.present? ? user.cover_image.key : asset_url("placeholder.jpg")
    cl_image_tag img, class: "property-photo", height: 300, width: 400, crop: :fill
  end
end
