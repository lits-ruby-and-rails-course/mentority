ActiveAdmin.register User do
  permit_params :email,:banned, :password, :password_confirmation,:first_name,:last_name,:role,
                profile_attributes: [:introduction,:birthday,:user_phone]

  controller do
    def new
       @user = User.new
       @user.build_profile   
    end

    def edit
      @user=User.find(params[:id])
      @user.build_profile if Profile.find_by(user_id: params[:id]).nil?
    end
    end

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    column :role
    column :banned
    actions
  end

  filter :first_name
  filter :last_name
  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at
  filter :banned
  filter :role

  form do |f|
    f.inputs "User Information" do
    f.input :first_name
    f.input :last_name
    f.input :email
    f.input :role
    f.input :banned
    f.has_many :profile, heading: 'User Profile', allow_destroy: true, new_record: false do |a|
      a.input :introduction
      a.input :birthday, start_year: Time.now.year - 90, end_year: Time.now.year-10
      a.input :user_phone
      end
    end
    f.inputs "Set Password" do
    f.input :password
    f.input :password_confirmation
    end
    f.actions
  end

end
