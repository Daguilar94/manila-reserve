class CreateJoinTableUsersTours < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :tours do |t|
      t.references :user, foreign_key: { on_delete: :cascade }
      t.references :tour, foreign_key: { on_delete: :cascade }
    end
  end
end
