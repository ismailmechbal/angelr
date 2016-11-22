module StylesheetHelper
  def css_class_name
    controller_name + "--" + action_name
  end
end
