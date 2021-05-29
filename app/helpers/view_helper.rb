module ViewHelper
  def help_icon(title, placement = "right")
    "<i class='far fa-question-circle' data-toggle='tooltip', data-placement='#{placement}', data-html='true', data-title='#{title}', data-animation='true'></i>".html_safe
  end
end