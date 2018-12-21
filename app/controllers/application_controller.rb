class ApplicationController < ActionController::Base

layout :layout_by_resource

after_action :set_access_control_headers

def set_access_control_headers
  headers['Access-Control-Allow-Origin'] = '*'
end

  # Layout per resource_name
  private
  # usado no devise pra selecionar o layout deste
  def layout_by_resource
    if devise_controller? && resource_name == :admin
      "application_devise"
    else
      "application"
    end
  end
end
