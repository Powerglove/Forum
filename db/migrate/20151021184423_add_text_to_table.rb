class AddTextToTable < ActiveRecord::Migration
  def change
    add_column("topics", "text", :text)
  end
en
