class RegistrationsController < Devise::RegistrationsController
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable

  def create
    super do
      User.create(registration_id: resource.id)
    end
  end

  protected

  def after_sign_up_path_for(resource)
      profile_path
  end
end
