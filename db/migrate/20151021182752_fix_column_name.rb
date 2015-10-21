class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column("comments", "topics_id", "topic_id")
  end
end
