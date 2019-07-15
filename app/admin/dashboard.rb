ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }
    content title: proc { I18n.t("active_admin.dashboard") } do
      columns do
        column do
          panel "Reclamos creados recientemente" do
            Claim.count
          end
      end
      column do
        panel "Empresas creados recientemente" do
          Company.count
        end
      end
      column do
        panel "Usuarios creados recientemente" do
          User.count
        end
      end
    end
  end # content
end