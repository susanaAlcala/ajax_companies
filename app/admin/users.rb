ActiveAdmin.register User do
    
    permit_params :email, :password
    
    index do
        column :id
        column :email
        actions
    end
    
  
    form do |f|
        inputs 'Agregar un nuevo usuario' do
            input :email
            input :password
        end
        actions
    end

    controller do
        def update
            if (params[:user][:password].blank? && params[:user][:password_confirmation].blank?)
                params[:user].delete("password")
                params[:user].delete("password_confirmation")
            end
        super
        end
    end

end