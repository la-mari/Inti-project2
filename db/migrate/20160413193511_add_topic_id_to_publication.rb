class AddTopicIdToPublication < ActiveRecord::Migration
  def change
    add_reference :publications, :topic, index: true, foreign_key: true
  end
end
