xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do

  xml.url do
    xml.loc "http://agendaaguanaescola.eco.br"
    xml.priority 1.0
  end

  xml.url do
    xml.loc "http://agendaaguanaescola.eco.br/sobre"
    xml.priority 1.0
  end

  @noticias.each do |n|
    xml.url do
      xml.loc noticium_url(n)
      xml.lastmod n.updated_at.to_date
      xml.priority 0.9
    end
  end

  @coletas.each do |c|
    xml.url do
      xml.loc coleta_url(c)
      xml.lastmod c.updated_at.to_date
      xml.priority 0.9
    end
  end

  @escolas.each do |e|
    xml.url do
      xml.loc escola_url(e)
      xml.lastmod e.updated_at.to_date
      xml.priority 0.9
    end
  end

end