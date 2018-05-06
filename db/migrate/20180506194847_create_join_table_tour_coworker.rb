class CreateJoinTableTourCoworker < ActiveRecord::Migration[5.2]
  def change
    create_join_table :tours, :coworkers do |t|
      t.references :tour, foreign_key: { on_delete: :cascade }
      t.references :coworker, foreign_key: { on_delete: :cascade }
    end
  end
end
