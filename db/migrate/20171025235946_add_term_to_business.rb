class AddTermToBusiness < ActiveRecord::Migration[5.1]
  def change
    add_column :businesses, :term, :string
  end
end
