class JsonAuthenticationFailure < Devise::FailureApp
  def respond
    if request.headers.env['HTTP_ACCEPT'].include?('html')
      redirect and return
    end

    if request.headers.env['HTTP_ACCEPT'].include?('json') || request.headers.env['HTTP_ACCEPT'].include?('*/*')
      self.status = 401
      self.content_type = 'json'
      self.response_body = i18n_message
    end
  end
end
