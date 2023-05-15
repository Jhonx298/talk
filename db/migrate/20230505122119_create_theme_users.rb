class CreateThemeUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :theme_users do |t|
      t.references :theme, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
