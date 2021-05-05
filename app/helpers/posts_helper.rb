module PostsHelper
  def post_thumbnail_key(post)
    img = post.image.present? ? post.image.key : "placeholder.jpg"
    cl_image_tag img, class: "float-right mb-4 ml-4", height: 300, width: 400, crop: :fill
  end
end
