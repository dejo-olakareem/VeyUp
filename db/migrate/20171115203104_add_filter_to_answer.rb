class AddFilterToAnswer < ActiveRecord::Migration[5.1]
  def change
    add_column :answers, :filter, :string
  end
end
