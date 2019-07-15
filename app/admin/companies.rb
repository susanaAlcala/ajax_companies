ActiveAdmin.register Company do

    permit_params :name

    sidebar "Company Details", only: [:show, :edit] do
        ul do
            li link_to "Claims", admin_company_claims_path(resource)
        end
    end
end
