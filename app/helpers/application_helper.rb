module ApplicationHelper
  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to 'Register', new_user_registration_path) +
      "<br>".html_safe +
      (link_to 'Login', new_user_session_path)
    else
      link_to 'Logout', destroy_user_session_path, method: :delete
    end
  end

  def sample_helper(content)
    content_tag :p, class: 'akhfbsjdbcj' do
      content
    end
  end

  def source_helper(layout_name)
    greeting = "Thanks for visiting from #{session[:source]} and you are on the #{layout_name} layout"
    content_tag(:p, greeting, class: 'source-greeting') if session[:source]
  end

  def copyright_generator
    VantonyViewTool::Renderer.copyright('Vishal Antony', "All rights reserved")
  end
end
