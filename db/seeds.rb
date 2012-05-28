Brand.delete_all

# Continental
Brand.create(
:name => 'Continental',
:origin => %{<p>Grossbritanien</p>},
:logo_url =>   '/images/brands/continental.gif',
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
:logo_url => '/images/brands/armedangels.png',
:rating => 9.50,
:info_text =>
'Gestartet sind wir 2007 mit sechs verschiedenen Shirts. Leider war damals nicht nur die Auswahl bescheiden,
  sondern auch die Qualitaet. Deshalb haben wir fast das gesamte erste Jahr damit verbracht, diese zu optimieren,
  damit die Shirts so sind, dass wir sie selbst gerne tragen. Denn nur was wir selbst anziehen, wollen wir an euch sehen. '
)

# Epona Clothing
Brand.create(
:name => 'Epona Clothing',
:origin => %{<p>Grossbritanien</p>},
:logo_url => '/images/brands/epona.jpg',
:rating => 8.00,
:info_text =>
'Epona was set up by Tom Andrews in 2002. To find out how it all started, here is an article on the early days.
  In 2005 we became one of the first companies to produce Fairtrade cotton clothing certified by the Fairtrade Foundation.
  Since then, all our clothing has been made using Fairtrade cotton grown in India using a sweatshop free supply chain.
  Our basic range is manufactured in Bangladesh and the Limited Edition collection in Sri Lanka.'
)

# Wombat Clothing
Brand.create(
:name => 'Wombat Clothing',
:origin => %{<p>Grossbritanien</p>},
:logo_url => '/images/brands/wombat.gif',
:rating => 4.00,
:info_text =>
'We were first set up in 2004 as an online store with a small range of mens adventure clothing. This proved pretty popular,
  so we made the range a bit bigger and started doing womens clothing too. Since then, we have been refining and adjusting our style,
  making little tweaks here and there, and we now have a big range of fun and functional outdoor clothing for men, women and kids as well.
  We have also taken the brand from the internet to the high street, and now have 3 stores as well as our online shop. '
)

# Earth Positive Apparel
Brand.create(
:name => 'Earth Posivite Apparel',
:origin => %{<p>Grossbritanien</p>},
:logo_url => '/images/brands/Earth_positive.gif',
:rating => 7.00,
:info_text =>
'EarthPositive is a green revolution in promotional apparel: Climate Neutral T-shirts. Organic and ethically made, but crucially, manufactured
  solely using sustainable energy generated from wind and solar power.
  EarthPositive is a practical and immediate solution for business and fashion to face their biggest challenge and take immediate
  action to combat climate change.'
)

# Living Crafts
Brand.create(
:name => 'Living Crafts',
:origin => %{<p>Deutschland</p>},
:logo_url => '/images/brands/LivingCrafts.gif',
:rating => 7.00,
:info_text =>
'LIVING CRAFTS began as a sole-trader-business in a garage. Persuasion and stamina have turned it into an eco-friendly company which has
  been pursuing its traditional values consistently. Being responsible towards nature is first and foremost for LIVING CRAFTS. This maxim dictates
  the strict ecological guidelines and parameters in our production and manufacturing processes as well as in trading and transporting our LIVING CRAFTS goods. '
)

# Pants To Poverty
Brand.create(
:name => 'Pants To Poverty',
:origin => %{<p>Grossbritanien</p>},
:logo_url => '/images/brands/pants_to_poverty.jpg',
:rating => 5.50,
:info_text =>
'We are a new type of underwear brand. Not simply content to make some of the most comfortable and stylish pants on the planet, we work with thousands of
  farmers and factory workers in India to celebrate fashion as a beautiful tool to change the world!
  From our beginnings as part of the global Make Poverty History campaign to the work we do to with thousands of farmers and factory workers in India, this is
    where you can find out a little more about us, what we do, and get to know some of the incredible people we work with. '
)

# Recolution
Brand.create(
:name => 'Recolution',
:origin => %{<p>Deutschland</p>},
:logo_url => '/images/brands/recolution.png',
:rating => 5.50,
:info_text =>
'Nach &uuml;ber einem Jahr Vorbereitung haben die drei Nordlichter Jan, Nikolaus und Robert im Jahr 2010 das Modelabel recolution gegr&uuml;ndet.
  Gerade in der heutigen Zeit finden wir es wichtig, aktiv an der Gestaltung unserer Wirtschaft mitzuwirken und dabei &ouml;kologische und soziale
  Alternativen f&uuml;r vorhandene Produkte anzubieten. recolution steht mit unseren pers&ouml;nlichen Einstellungen, unserem Lebensstil sowie unseren Werten
  in Einklang. Denn nur wenn wir zu 100 Prozent von unserer Sache &uuml;berzeugt sind, kouml;nnen wir unsere gesamte Kreativit&auml;t und Leidenschaft f&uuml;r sie einsetzen.
  F&uuml;r uns sind die ethischen Aspekte der Herstellung unserer Kleidungsst&uuml;cke wichtig. Darum setzen wir uns f&uuml;r einen verantwortungsbewussten und fairen Umgang
  mit Menschen und Natur ein. '
)

# Tee Jays
Brand.create(
:name => 'Tee Jays',
:origin => %{<p>D&auml;nemark</p>},
:logo_url => '/images/brands/TeeJays.png',
:rating => 7.50,
:info_text =>
'It began in 1976 with a passion to create the best quality T-Shirts and the first production started in Florence, Alabama.
  In 2002 we were focussed establishing a unique basic collection for the European market. A collection of best selling basics, based on leading classics and
  fashion products.
  We continiously develope and design leading styles and fabrics. Our designers and technicians ensure Best fit and performance.
  The result of our efforts are one of Europes most unique basic collections.
  A focussed collection with the best combination of quality and price.'
)

Size.delete_all

Size.create(
:name => 'XXXS'
)

Size.create(
:name => 'XXS'
)

Size.create(
:name => 'XS'
)

Size.create(
:name => 'S'
)

Size.create(
:name => 'M'
)

Size.create(
:name => 'L'
)

Size.create(
:name => 'XL'
)

Size.create(
:name => 'XXL'
)

Size.create(
:name => 'XXXL'
)

Color.delete_all

Color.create(
:name => 'blau'
)

Color.create(
:name => 'gelb'
)

Color.create(
:name => 'gruen'
)

Color.create(
:name => 'rot'
)

Color.create(
:name => 'schwarz'
)

Color.create(
:name => 'weiss'
)

Article .delete_all

# Artikel 1
Article.create(
:name => 'T-Shirt Freizeit',
:color_id => 2,
:article_url => '/images/shirt_color/gelb.jpg',
:size_id => 4 # S
)

# Artikel 2
Article.create(
:name => 'T-Shirt Arbeit',
:color_id => 5,
:article_url => '/images/shirt_color/schwarz.jpg',
:size_id => 8 #XXL
)

Print.delete_all

# Druck 1
Print.create(
:name => 'Schluesselkind',
:print_url => '/images/prints/sk_logo.jpg'
)

Product.delete_all

# Produkt 1
Product.create(
:brand_id => 1,
:article_id => 1,
:print_id => 1
)