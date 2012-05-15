Brand.delete_all

# Continental
Brand.create(
    :name => 'Continental',
    :origin => %{<p>Grossbritanien</p>},
    :logo_url =>   '/images/continental.gif',    
    :rating => 6.66,
    :info_text => 
    'CONTINENTAL has been designing, manufacturing and selling wholesale to the imprintables industry since 1994. 
    We were the innovators of the wholesale baby doll t-shirt in Europe and continue to lead the way in terms of innovation and design.
    With our main operations in London and Germany, we opened showrooms in Turin and Tokyo in 2009.
    Our focus has always been and will continue to be on creating high quality, expertly styled garments for markets such as music merchandise, fashion, corporate promotions and athletics.
    All products are designed and engineered with specific embellishment concerns in mind and marketed to those companies that have an interest in the decorated garment industry, not directly to retail or the general public. '
    )

# Armed Angels & Friends
Brand.create(
  :name => 'Armed Angels & Friend',
  :origin => %{<p>Deutschland</p>},
  :logo_url => '/images/armedangels.png',
  :rating => 9.50,
  :info_text => 
  'Gestartet sind wir 2007 mit sechs verschiedenen Shirts. Leider war damals nicht nur die Auswahl bescheiden, 
  sondern auch die Qualitaet. Deshalb haben wir fast das gesamte erste Jahr damit verbracht, diese zu optimieren, 
  damit die Shirts so sind, dass wir sie selbst gerne tragen. Denn nur was wir selbst anziehen, wollen wir an euch sehen. '
  )

# Nummer 3
Brand.create(
  :name => 'Nummer 3',
  :origin => %{<p>Deutschland</p>},
  :logo_url => '/images/gibtsnich.png',
  :rating => 8.00,
  :info_text => 
  'Gestartet sind wir 2007 mit sechs verschiedenen Shirts. Leider war damals nicht nur die Auswahl bescheiden, 
  sondern auch die Qualitaet. Deshalb haben wir fast das gesamte erste Jahr damit verbracht, diese zu optimieren, 
  damit die Shirts so sind, dass wir sie selbst gerne tragen. Denn nur was wir selbst anziehen, wollen wir an euch sehen. '
  )
