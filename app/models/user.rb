class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
  has_many :pledges
  has_many :comments
  has_many :teachers
  has_many :students
    # helper_method :student_users
    # def student_users
    #   User.where(:type == "student")
    # end

    def user_role?
      if self.is_teacher?
       '<p>Teacher</p>'.html_safe
      elsif self.is_student?
        '<p>Student</p>'.html_safe
      else
        '<p>Guest</p>'.html_safe
      end
    end

    def is_teacher?
      Teacher.find_by(user_id: self.id)
    end

    def is_student?
      Student.find_by(user_id: self.id)
    end


    def self.new_with_session(params, session)
     super.tap do |user|
       if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
         user.email = data["email"] if user.email.blank?
     end
      end
    end


    def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
      end
  end

end
