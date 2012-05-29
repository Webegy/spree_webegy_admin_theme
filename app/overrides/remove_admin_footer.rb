Deface::Override.new(:virtual_path => 'spree/layouts/admin',
                     :name => 'remove_admin_footer',
                     :remove => '#footer')

Deface::Override.new(:virtual_path => 'spree/layouts/admin/_login_nav',
                     :name => 'remove_admin_logout',
                     :replace => "code[erb-loud]:contains('t(:logout)')",
                     :text => '<li><%= link_to t(:logout), spree.destroy_user_session_path %></li>')
