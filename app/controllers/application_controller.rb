class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  after_action :add_header
  # protect_from_forgery unless: -> { request.format.json? }
  before_action :authorize
  before_action :authorize_company

  private

  def login(user)
    session[:user_id] = user.id
  end

  def login_company(company)
    session[:company_id] = company.id
  end

  def current_user
    @current_user ||= session[:user_id] && User.find_by(id: session[:user_id])
  end

  def current_company
    @current_company ||= session[:company_id] && Company.find_by(id: session[:company_id])
  end

  def authorize
    head(:unauthorized) unless current_user
  end

  def authorize_company
    head(:unauthorized) unless current_company
  end

  def add_header
    response.header['Access-Control-Allow-Origin'] = 'http://localhost:3001'
    response.header['Access-Control-Allow-Credentials'] = 'true';
    response.header["Access-Control-Allow-Headers"] = "Origin, X-Requested-With, Content-Type, Accept"
  end
end
