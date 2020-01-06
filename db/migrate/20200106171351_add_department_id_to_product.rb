class AddDepartmentIdToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :department_id, :integer
  end
end
