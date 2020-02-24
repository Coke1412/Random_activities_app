class RemoveImageFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :image, :string
  end
end
