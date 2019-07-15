ActiveAdmin.register Claim do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
belongs_to :company

# permit_params :list, :of, :attributes, :on, :model
#
# or
permit_params :user_id, :content
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

index do
   column :id
   column :author do |claim|
     claim.user.email
   end
   column:claims do |claim|
      claims.count
    end
    actions
end

form do |f|
  inputs 'Agregar nuevo reclamo' do
      f.input:user_id,
        label: 'Author',
           as: :select,
   collection: User.pluck(:email, :id)
        input:content
  end
  actions
end

filter:created_at

end