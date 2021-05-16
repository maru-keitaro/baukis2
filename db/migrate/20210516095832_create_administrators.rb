class CreateAdministrators < ActiveRecord::Migration[6.1]
  def change
    create_table :administrators do |t|
      t.string :email, null: false # メールアドレス
      t.string :hashed_password 
      t.boolean :suspended, null: false, default: false # 無効フラグ
      t.timestamps
    end
    
    add_index :administrators, :email, unique: true # LOWERは大文字のアルファベットを小文字のアルファベットに変換、カラムemailにunique制約(一意性制約)
  end
end
