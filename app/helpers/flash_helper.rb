module FlashHelper
  include ActionView::Helpers::TagHelper
  include ActionView::Context

  def flash_messages(opts = {})
    content_tag(:div, id: "flash-messages") do
      flash.map { |msg_type, message|
        flash_message(message, msg_type)
      }.join.html_safe
    end
  end

  def flash_message(message, msg_type=:notice)
    content_tag(:div, class: "alert alert-#{bootstrap_class_for(msg_type)}") {
      message
    }.html_safe
  end

  private
  def bootstrap_class_for(flash_type)
    {
     success: "success",
     error:   "danger",
     alert:   "warning",
     notice:  "info"
    }[flash_type.to_sym] || flash_type.to_s
  end

  def js_flash(text, msg_type=:notice)
    t = flash_message(text, msg_type)
    { text: "$('#flash-messages').html('#{t}');" }
  end
end
