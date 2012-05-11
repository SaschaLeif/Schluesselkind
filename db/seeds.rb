Brand.delete_all

Brand.create(:name => 'Continental',
  :origin => 
    %{<p>
        Deutschland
      </p>},
  :logo_url =>   '/images/continental.gif',    
  :rating => 6.66)
# . . .
Brand.create(:name => 'Armed Angels & Friend',
  :origin =>
    %{<p>
       Deutschland
      </p>},
  :logo_url => '/images/armedangels.png',
  :rating => 49.50)
# . . .