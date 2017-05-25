module ApplicationHelper
  def hidden_div_if(rahil, attributes = {}, &block)
    if rahil
      attributes["style"] = "display: none"
    end
    content_tag("div", attributes, &block)
  end
end
