e = Escola.create(:nome=>"Escola Cantagalgo", :municipio=>"Nova Friburgo")
p = Pessoa.create(:nome=>"Polo Admin", :senha=>"12345", :email=>"rafael.polo@gmail.com", :escola_id => e.id)
p.update_attribute(:is_admin, true)


