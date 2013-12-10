class CreateRenomears < ActiveRecord::Migration
  def change
    create_table :renomears do |t|
      t.string :tipo
      t.string :assunto
      t.datetime :data
      t.string :cprod
      t.boolean :sem_cprod
      t.boolean :mais_de_um_processo
      t.string :arquivo

      t.timestamps
    end
  end
end
