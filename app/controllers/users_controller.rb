class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def send_details_mail
    respond_to do |format|
      format.json do
        WelcomeMailer.sender(params[:to], params[:subject], params[:body]).deliver_now
        render json: { status: 200, message: 'Got' }
      end
    end
  end
end
