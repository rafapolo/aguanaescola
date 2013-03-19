class CreateColeta < ActiveRecord::Migration
	def change
		create_table :coletas do |t|			
			t.references :pessoa
			t.references :escola

			t.string :local			

			t.string :classe_coname
			t.datetime :hora_coleta
			t.string :condicoes_climaticas

			t.decimal :temperatura_agua
			t.decimal :temperatura_ambiente
			t.decimal :oxigenio_dissolvido
			t.decimal :ph
			t.decimal :amonia
			t.decimal :ferro
			t.decimal :dureza
			t.decimal :fosfato
			t.decimal :cloro
			t.decimal :turbidez
			t.decimal :cloretos
			t.decimal :dqo_campo
			t.decimal :coliformes
			t.decimal :dbo
			t.decimal :detergentes

			t.boolean :algas
			t.boolean :espuma
			t.boolean :corpos_flutuantes
			t.boolean :materialsedimentavel
			t.boolean :cheiro
			t.boolean :plantas_aquaticas
			t.boolean :peixes_animais
			t.boolean :cobertura_vegetal
			
			t.text :info			
			t.timestamps
		end
		add_index :coletas, :escola_id
	end
end