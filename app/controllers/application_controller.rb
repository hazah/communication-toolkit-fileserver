class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ActionController::MissingFile do
    render file: File.join(Rails.root, 'public/404.html'), status: 404
  end

  layout false

  # Guard the files so that only POE compliant schools have access.
  around_action do |controller, action|
    if Institution.find_by facility_code: params[:facility_code], poe: true
      action.call
    else
      if Institution.find_by facility_code: params[:facility_code]
        render file: File.join(Rails.root, 'public/403.html'), status: 403
      else
        render file: File.join(Rails.root, 'public/404.html'), status: 404
      end
    end
  end

  ## Download actions
  def pdf
    @format = 'pdf'
    @type = 'application/pdf'
    send_file_from_disk
  end

  def indesign
    @format = 'zip'
    @type = 'application/zip'
    send_file_from_disk
  end

  def zip
    @format = 'zip'
    @type = 'application/zip'
    send_file_from_disk
  end

  def email
    @format = 'zip'
    @type = 'application/zip'
    send_file_from_disk
  end

private

  def local_filename
    "#{Rails.root}/app/files/#{params[:controller]}/#{params[:action]}.#{@format}"
  end

  def sent_filename
    "#{params[:controller]}.#{@format}"
  end

  def send_file_from_disk
    send_file local_filename, filename: sent_filename, type: @type, stream: false
  end
end
