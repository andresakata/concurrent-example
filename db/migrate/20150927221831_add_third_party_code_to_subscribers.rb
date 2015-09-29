class AddThirdPartyCodeToSubscribers < ActiveRecord::Migration
  def change
    add_column :subscribers, :third_party_code, :string
  end
end
