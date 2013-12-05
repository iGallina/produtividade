class CreateNotasTecnicas < ActiveRecord::Migration
  def change
    create_table :notas_tecnicas do |t|
      t.string :exit

      t.timestamps
    end
  end
end
