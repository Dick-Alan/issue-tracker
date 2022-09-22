class AddIpToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :IP, :string
  end
end
