class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :app_id
      t.string :username
      t.boolean :active
      t.string :to
      t.string :from
      t.string :EncryptedMessage

      t.timestamps
    end
  end
end
