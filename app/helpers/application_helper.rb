module ApplicationHelper

  def request_path_include?(string)
    request.path.include?(string.to_s)
  end

  def link_to_if_with_block(condition, options = nil, html_options = nil, &block)
    if condition
      link_to(options, html_options, &block)
    else
      capture(&block)
    end
  end

end
