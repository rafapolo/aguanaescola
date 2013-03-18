class CreateColeta < ActiveRecord::Migration
	def change
		create_table :coletas do |t|
			t.string :local
			t.text :info
			t.references :escola

			t.string :classe_coname
			t.datetime :hora_coleta
			t.string :condicoes_climaticas

			t.string :temperatura_agua
			t.string :temperatura_ambiente
			t.string :oxigenio_dissolvido
			t.string :ph
			t.string :amonia
			t.string :fosfato
			t.string :cloro
			t.string :turbidez
			t.string :cloretos
			t.string :dqo_campo
			t.string :coliformes
			t.string :dbo
			t.string :detergentes

			t.boolean :algas
			t.boolean :espuma
			t.boolean :corpos_flutuantes
			t.boolean :materialdedimentavel
			t.boolean :cheiro
			t.boolean :plantas_aquaticas
			t.boolean :peixes_animais
			t.boolean :cobertura_vegetal

			t.timestamps
		end
		add_index :coletas, :escola_id
	end
end
