module ApplicationHelper
  def profile_picture(account, width = 100 )
    thumb = account.avatar.present? ? account.avatar.key : "placeholder.jpg"
    cl_image_tag thumb, width: width, class: "profile-pic image-circle", alt: "profile-pic"
  end

  def flash_notifications
    flash_messages = []

    flash.each do |type, message|
      type = 'success' if type == 'notice'
      type = 'error' if type == 'alert' || type == 'danger'
      text = "toastr[`#{type}`](`#{message}`);"
      flash_messages << text.html_safe unless message.blank?
    end

    "<script>$(function(){ #{ flash_messages.join("/n") }});</script>".html_safe if flash_messages.any?
  end
end
