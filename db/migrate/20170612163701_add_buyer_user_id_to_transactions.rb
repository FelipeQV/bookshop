class AddBuyerUserIdToTransactions < ActiveRecord::Migration[5.0]
  def change
    add_column :transactions, :buyer_user_id, :integer
  end
end
