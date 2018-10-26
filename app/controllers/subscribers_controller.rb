class SubscribersController < ApplicationController

  http_basic_authenticate_with name: "corgi", password: "grumbo", except: :create


  def index
    @subscribers = Subscriber.all
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      cookies[:saved_lead] = true
      redirect_to root_path
#      redirect_to root_path, notice: "Saved!"
    else
      redirect_to root_path
#      redirect_to root_path, notice: "Failed!"
    end
  end

  private

    def subscriber_params
      params.require(:subscriber).permit(:email)
    end
end
