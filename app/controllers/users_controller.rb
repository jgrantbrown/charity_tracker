class UsersController < ApplicationController
  def show
      @user = User.find(params[:id])
      Teacher.find_by(user_id: @user.id)
      Student.find_by(user_id: @user.id)

    end

    def index
       @users = User.all
    end

    def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.name = auth.info.name   # assuming the user model has a name
        user.image = auth.info.image # assuming the user model has an image
        # If you are using confirmable and the provider(s) you use validate emails,
        # uncomment the line below to skip the confirmation emails.
        # user.skip_confirmation!
      end
    end





end
