class AddIpToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :IP, :string
  end
end
