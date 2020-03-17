ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end
    
  

    columns do

      column do
        panel "Info" do
          para "Welcome to ActiveAdmin."
        end
      end

      column do
        panel "Users" do
          ul do
            li "Registered Users: #{User.count}"
            li "Registered Admins: #{AdminUser.count}"
          end
        end
      end
      
    end
  
    panel "Chart" do
      render 'shared/chart'
    end

    
   
  end
  
end
