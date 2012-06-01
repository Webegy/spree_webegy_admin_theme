Deface::Override.new(:virtual_path => 'spree/layouts/admin/_login_nav',
                     :name => 'admin_logout_fix',
                     :replace => "code[erb-loud]:contains('t(:logout)')",
                     :text => '<li><%= link_to t(:logout), spree.destroy_user_session_path %></li>')