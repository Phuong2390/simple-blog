class ChangeColumPassword < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :password, :passwordigest
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
