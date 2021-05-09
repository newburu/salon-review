module ViewHelper
  def help_icon(title, placement = "right")
    icon "far", "question-circle", data: {toggle: "tooltip", placement: placement, html: true, title: title, animation: true}
  end
end