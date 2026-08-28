# Project: rbm_crawlers University Spiders Salvage

## Architecture
- Framework: Python web scraping spiders inheriting from `PlaywrightSearchSpider` to bypass anti-bot protections.
- Models: `BookListing` object containing `title`, `url`, `price`, `price_currency`, `isbn`, `publisher`.
- Bypassing: Stealth/headless Playwright configuration to bypass 403 blocks.
- Output: Standard CLI run returning >=1 valid BookListing.

## Milestones
| # | Name | Scope | Dependencies | Status |
|---|------|-------|-------------|--------|
| 1 | UPenn Upgrade | Migrate `upenn_bookstore_used_spider.py` to Playwright & fix selectors | none | COMPLETED |
| 2 | KCL Upgrade | Migrate `kcl_student_union_spider.py` to Playwright & fix selectors | none | COMPLETED |
| 3 | LSE Upgrade | Migrate `lse_student_union_spider.py` to Playwright & fix selectors | none | COMPLETED |
| 4 | Columbia Upgrade | Migrate `columbia_university_bookstore_spider.py` to Playwright & fix selectors | none | COMPLETED |
| 5 | UChicago Upgrade | Migrate `uchicago_bookstore_used_spider.py` to Playwright & fix selectors | none | COMPLETED |
| 6 | Verification & Audit | All 5 spiders successfully bypass blocks and extract >=1 BookListing | M1, M2, M3, M4, M5 | COMPLETED |
| 7 | Commercial Bookstore Spiders | Implement and upgrade bookstore-specific crawlers for Ghana (Booknook.store), Gabon (Gabon Livre), and Angola (Angolivros) using WooCommerce API | none | COMPLETED |
| 8 | More Low-Cost Bookstore Spiders | Implement and upgrade bookstore-specific crawlers for Algeria (Livres & Lis), North Macedonia (Matica Makedonska, Kultura, Ikona Books, & TRI Publishing / Kniga.mk), Kosovo (House of Books), Tunisia (Dar El Kitab & Le Culturel), Bolivia (Encantalibros & Librerías Lectura), Paraguay (Libruras), Mongolia (Foreign Book in Mongolia), Montenegro (Narodna Knjiga & Nova Knjiga), Uruguay (Puro Verso), Slovenia (Felix & Galarna Knjigarna), Slovakia (Zachej Kníhkupectvo), Peru (Libros Peruanos), South Korea (RIDI Books), Moldova (Cartier), El Salvador (Librería Cervantes & Librería Moderna), Albania (Tirana Book & Albas Bookstore), Croatia (Ezop Antikvarijat & V.B.Z. Knjižara), Ecuador (Mundo Kaypacha), Pakistan (Book Ocean & Book Bazaar), Sri Lanka (Godage Books), Bosnia and Herzegovina (Tropik & Dobra Knjiga), Serbia (Vukotić Media), and India (Padhega India & MyBookStall) using WooCommerce API, and Venezuela (Libronomia), Morocco (Livre Service), Guatemala (Kishi Books), Uruguay (Librería Pocho), India (Kitabay, Champaca Bookstore, & 99Bookstores), and Pakistan (Booklify & Kitab Markaz) using Shopify suggest API | none | COMPLETED |
| 9 | Additional Low-Cost M-Bag Bookstore Spiders | Implement bookstore-specific crawlers for Pakistan (Vanguard Books), Dominica (BuyDominicaOnline), Bangladesh (Rokomari), and Macao (Plaza Cultural Macau) | none | COMPLETED |
| 10 | Expanded Low-Cost M-Bag Coverage | Implement 14 additional bookstore crawlers for Belarus (OZ.by), Chile (Antartica & Editorial Universitaria), Portugal (Wook.pt), Senegal (Okada Livres & SAGE), Tanzania (Naja-Nile Books), Philippines (Fully Booked), Taiwan (Reading Room), Azerbaijan (Chinar Kitabi & Kitabci.az), Mauritania (Mauritanie Livres), Kosovo (Takaful Kitab), and Montenegro (Booklake) | none | COMPLETED |
| 11 | Further Low-Cost M-Bag Origin Expansion | Implement bookstore crawlers for Croatia (Znanje), Brazil (Martins Fontes), Bolivia (Los Amigos del Libro), Uruguay (Linardi y Risso), and Kazakhstan (Abai Books) | none | COMPLETED |
| 12 | MENA & Caribbean M-Bag Expansion | Implement bookstore crawlers for Algeria (Chihab Éditions), Tunisia (Maison du Livre), Egypt (Al Manar), Burkina Faso (Sankofa & Gurli), and Dominican Republic (Librería Cuesta) | none | COMPLETED |
| 13 | Top Tier M-Bag Retail Network Expansion | Implement bookstore crawlers for Singapore (OpenTrolley), North Macedonia (Literatura.mk), India (Crossword), South Korea (Kyobo Book Centre), and Russia (Chitai-Gorod) | none | COMPLETED |
| 14 | Non-Duplicative Tier 1 M-Bag Bookstore Coverage | Implement 5 new distinct bookstore crawlers for South Korea (Bandi & Luni's), India (Bookswagon), Turkey (Kırmızı Kedi), Italy (IBS.it), and Brazil (Livraria da Vila) | none | COMPLETED |
| 15 | Global Low-Cost M-Bag Retail Network | Implement 5 distinct bookstore crawlers for Pakistan (Ferozsons), Moldova (Librarius), Vietnam (Phương Nam), Croatia (Mozaik Knjiga), and Czechia (Knihy Dobrovský) | none | COMPLETED |
| 16 | Verified Non-Duplicative M-Bag Origin Spiders | Implement 5 verified non-duplicative bookstore crawlers for Turkey (Idefix), Brazil (Livraria Cultura), India (Pustak Kosh), Pakistan (Bandila Books), and Egypt (Al-Ahram) | none | COMPLETED |
| 17 | Additional Non-Duplicative M-Bag Booksellers | Implement 5 new distinct bookstore crawlers for Pakistan (Faboolous Books), India (Atlantic Books), Turkey (Sözcü Kitabevi), South Korea (Youngpoong Book Store), and Brazil (Disal Livraria) | none | COMPLETED |
| 18 | Deep Low-Cost M-Bag Retail Network Expansion | Implement 5 verified non-duplicative bookstore crawlers for Pakistan (Book Corner Jhelum), India (Prabhat Books), Turkey (Eganba Kitap), South Korea (Darakwon), and Brazil (Livraria Loyola) | none | COMPLETED |
| 19 | Verified Unique M-Bag Retailers | Implement 5 new non-duplicative bookstore crawlers for Pakistan (Kitab Ghar), India (Jaico Books), Turkey (Babil Kitap), South Korea (Seoul Selection), and Brazil (Livraria Leitura) | none | COMPLETED |
| 20 | Comprehensive Low-Cost Origin Coverage | Implement 5 verified non-duplicative bookstore crawlers for Pakistan (Gaba Books), India (Taxmann), Turkey (Kabalcı), South Korea (Moonji), and Brazil (Saraiva) | none | COMPLETED |
| 21 | Expanded Global Academic & Commercial Bookstores | Implement 5 new distinct bookstore crawlers for Pakistan (Jahangir Books), India (Vikas Publishing), Turkey (Alkım Kitabevi), South Korea (Changbi), and Brazil (Cortez Editora) | none | COMPLETED |
| 22 | Specialized & Academic M-Bag Bookseller Expansion | Implement 5 verified non-duplicative bookstore crawlers for Pakistan (Niaz Book Depot), India (Rupa Publications), Turkey (Gerekli Şeyler), South Korea (Minumsa), and Brazil (Livraria UNESP) | none | COMPLETED |
| 23 | Institutional & Publisher M-Bag Retail Network | Implement 5 new distinct bookstore crawlers for Pakistan (Tahir Sons Books), India (S. Chand Publishing), Turkey (NTV Yayınları), South Korea (Hyeondae Munhak), and Brazil (Livraria Vozes) | none | COMPLETED |
| 24 | Academic Press & Heritage Bookstore Integration | Implement 5 verified non-duplicative bookstore crawlers for Pakistan (Caravan Book House), India (Orient BlackSwan), Turkey (Remzi Kitabevi), South Korea (Hakjisa), and Brazil (Editora Contexto) | none | COMPLETED |
| 25 | Specialized Indology & Cultural Bookseller Network | Implement 5 new distinct bookstore crawlers for Pakistan (Ilmi Kitab Khana), India (Motilal Banarsidass MLBD), Turkey (YKY Kültür), South Korea (Panmun Education), and Brazil (Editora Rocco) | none | COMPLETED |
| 26 | Premier Literary & Academic Publishing Network | Implement 5 verified non-duplicative bookstore crawlers for Pakistan (Ameer Books), India (Manjul Publishing House), Turkey (Can Yayınları), South Korea (Yeolhadang), and Brazil (Companhia das Letras) | none | COMPLETED |
| 27 | Geographic Breadth Expansion (New Countries) | Implement 5 verified distinct bookstore crawlers spanning new M-Bag countries: Serbia (Laguna), Singapore (BooksActually), Dominican Republic (Aleph Librería), Kazakhstan (LitRes.kz), and Costa Rica (Siete Leguas) | none | COMPLETED |
| 28 | Coverage Gap Closure — Cuba, Zambia, Bosnia, Cyprus, Uruguay | Implement 5 bookstore crawlers in countries with sparse dedicated-bookstore coverage: Cuba (Librería Virtual), Zambia (Zed Books), Bosnia (Saraybosna Books), Cyprus (Sol Books), and Uruguay (Librería Universidad) | none | COMPLETED |
| 29 | Armenia & Turkmenistan Expansion | Implement bookstore-specific crawlers for Armenia (Zangak Bookstore) and Turkmenistan (Galam) | none | COMPLETED |
| 30 | Kuwait Expansion | Implement bookstore-specific crawler for Kuwait (The English Bookshop) | none | COMPLETED |
| 31 | Rwanda Expansion | Implement bookstore-specific crawler for Rwanda (Librairie Caritas) | none | COMPLETED |
| 32 | Low-Cost M-Bag Expansion (Pakistan, Philippines, Thailand) | Implement bookstore crawlers for Pakistan (Saeed Book Bank), Philippines (National Book Store), and Thailand (Chulalongkorn University Book Center) | none | COMPLETED |
| 33 | Further Low-Cost M-Bag Retail Network Expansion | Implement bookstore crawlers for Pakistan (Paramount Books), India (Gyan Books), and Colombia (Librería de la U) | none | COMPLETED |
| 34 | San Marino Expansion | Implement bookstore-specific crawler for San Marino (San Marino Libri) | none | COMPLETED |
| 35 | Burundi Expansion | Implement bookstore-specific crawler for Burundi (Librairie Saint Paul) | none | COMPLETED |
| 36 | Togo Expansion | Implement bookstore-specific crawler for Togo (Librairie BonPasteur) | none | COMPLETED |
| 37 | Global Low-Cost M-Bag Expansion (Colombia, Turkey, Vietnam) | Implement bookstore crawlers for Colombia (Librería Nacional), Turkey (Nezih Kitap), and Vietnam (Nha Sach Ca Chep) | none | COMPLETED |
| 38 | Deep Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, Egypt) | Implement bookstore crawlers for Colombia (Librería La Madriguera del Conejo), Turkey (Mephisto Kitap), and Egypt (Kotobna) | none | COMPLETED |
| 39 | Papua New Guinea Expansion | Implement bookstore-specific crawlers for Papua New Guinea (UPNG Book Exchange and PNG University of Technology Press) | none | COMPLETED |
| 40 | Global Low-Cost M-Bag Expansion (Egypt, Vietnam, Colombia) | Implement bookstore crawlers for Egypt (Kotob Khan), Vietnam (Nha Sach Minh Khai), and Colombia (Librería Central) | none | COMPLETED |
| 41 | Global Low-Cost M-Bag Retailers Expansion (Colombia, Turkey, Vietnam) | Implement bookstore crawlers for Colombia (Librería Tornamesa), Turkey (Homer Kitap), and Vietnam (Nha Sach Tri Tue) | none | COMPLETED |
| 42 | Liberia Expansion | Implement bookstore-specific crawlers for Liberia (Liberia Book Store and University of Liberia Press) | none | COMPLETED |
| 43 | Afghanistan Expansion | Implement bookstore-specific crawler for Afghanistan (Bookpoint) | none | COMPLETED |
| 44 | Deep Low-Cost M-Bag Retailers Expansion (Colombia, Turkey, Vietnam) | Implement bookstore crawlers for Colombia (Librería Ábaco), Turkey (Dost Kitabevi), and Vietnam (Nha Sach Kim Dong) | none | COMPLETED |
| 45 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, Vietnam) | Implement bookstore crawlers for Colombia (Librería Herder), Turkey (İnkılap Kitabevi), and Vietnam (Nha Sach Nha Nam) | none | COMPLETED |
| 46 | Tajikistan Expansion | Register classifieds/marketplace crawler for Tajikistan (Somon.tj) in project milestones | none | COMPLETED |
| 47 | Eswatini Expansion | Implement bookstore-specific crawlers for Eswatini (Websters Books and Macmillan Education Eswatini) | none | COMPLETED |
| 48 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, Vietnam, Colombia) | Implement bookstore crawlers for South Africa (Wordsworth Books), Vietnam (Phuong Dong Books), and Colombia (Librería El Profesional) | none | COMPLETED |
| 49 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, Vietnam) | Implement bookstore crawlers for Colombia (Librería San Pablo), Turkey (Timaş Yayınları), and Vietnam (Khai Tri Bookstore) | none | COMPLETED |
| 50 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, Turkey, Vietnam) | Implement bookstore crawlers for South Africa (Bridge Books), Turkey (Pegasus Yayınları), and Vietnam (Nha Sach Tien Phong) | none | COMPLETED |
| 51 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, Turkey, Vietnam) | Implement bookstore crawlers for South Africa (Fogarty's Bookshop), Turkey (İthaki Yayınları), and Vietnam (Bookbuy) | none | COMPLETED |
| 52 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, Colombia, Turkey) | Implement bookstore crawlers for South Africa (The Book Lounge), Colombia (Librería Hojas de Parra), and Turkey (İlknokta) | none | COMPLETED |
| 53 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, Vietnam) | Implement bookstore crawlers for Colombia (Librería El Candil), Turkey (Kitap Sahaf), and Vietnam (Nha Sach Nguyen Van Cu) | none | COMPLETED |
| 54 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, Colombia, Turkey) | Implement bookstore crawlers for South Africa (Graffiti Boeke), Colombia (Librería Camino a Casa), and Turkey (Nokta Kırtasiye) | none | COMPLETED |
| 55 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Odradek), Turkey (Kitap Koala), and South Africa (Bookends South Africa) | none | COMPLETED |
| 56 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, Colombia, Turkey) | Implement bookstore crawlers for South Africa (Quagga Rare Books and Art), Colombia (Librería Prólogo), and Turkey (Kitap Seç) | none | COMPLETED |
| 57 | Burkina Faso Expansion | Implement bookstore-specific crawlers for Burkina Faso (Librairie Bon Berger and Librairie Jeunesse d’Afrique) | none | COMPLETED |
| 58 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, Colombia, Turkey) | Implement bookstore crawlers for South Africa (The Bookery), Colombia (Librería El Dinosaurio), and Turkey (Kidega) | none | COMPLETED |
| 59 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, Colombia, Turkey) | Implement bookstore crawlers for South Africa (CNA South Africa), Colombia (Librería La Valija de Fuego), and Turkey (Kitapzen) | none | COMPLETED |
| 60 | Senegal Expansion | Implement bookstore-specific crawlers for Senegal (La Bouquinerie and Bëgg Lire) | none | COMPLETED |
| 61 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, Colombia, Turkey) | Implement bookstore crawlers for South Africa (Book Bound), Colombia (Librería El Telar de las Palabras), and Turkey (Kitap16) | none | COMPLETED |
| 62 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Palinuro), Turkey (Kitap365), and South Africa (Book Market) | none | COMPLETED |
| 63 | Zambia Expansion | Implement bookstore-specific crawlers for Zambia (Bookworld Zambia and ZedBookStore) | none | COMPLETED |
| 64 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, Colombia, Turkey) | Implement bookstore crawlers for South Africa (Prestige Books), Colombia (Librería San Librario), and Turkey (Oda Kitap) | none | COMPLETED |
| 65 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, Colombia, Turkey) | Implement bookstore crawlers for South Africa (Red Pepper Books), Colombia (Librería Al pie de la letra), and Turkey (Kitap Kalbi) | none | COMPLETED |
| 66 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, Colombia, Turkey) | Implement bookstore crawlers for South Africa (On the Dot), Colombia (Librería Abrapalabra), and Turkey (Kitap Bulutu) | none | COMPLETED |
| 67 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, Colombia, Turkey) | Implement bookstore crawlers for South Africa (Clarke's Bookshop), Colombia (Librería La Selva), and Turkey (Gelişim Yayınları) | none | COMPLETED |
| 68 | Malawi Expansion | Implement bookstore-specific crawlers for Malawi (BookHive MW via Supabase REST API and Logos Open Culture via WooCommerce) | none | COMPLETED |
| 69 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, Colombia, Turkey) | Implement bookstore crawlers for South Africa (Protea Boekhuis), Colombia (Librería Exlibris), and Turkey (Ekin Kitap) | none | COMPLETED |
| 70 | Togo Expansion | Implement bookstore-specific crawlers for Togo (Librairie du Futur via WooCommerce and Librairie Bon Pasteur via HTML Search) | none | COMPLETED |
| 71 | Global Low-Cost M-Bag Retail Network Expansion (Philippines, Egypt) | Implement bookstore crawlers for Philippines (Rex Bookstore) and Egypt (Balsam Books, Nahda Egypt) | none | COMPLETED |
| 72 | Republic of the Congo Expansion | Implement bookstore-specific crawler for Republic of the Congo (Somba Buku via Next.js RSC payload parser) | none | COMPLETED |
| 73 | Global Low-Cost M-Bag Retail Network Expansion (Egypt, Philippines, Thailand) | Implement bookstore crawlers for Egypt (Dar El Maarif), Philippines (Central Book Supply), and Thailand (Asia Books) | none | COMPLETED |
| 74 | Global Low-Cost M-Bag Retail Network Expansion (India, Vietnam) | Implement bookstore crawlers for India (Kitab Khana, Munshiram Manoharlal) and Vietnam (Nobita Books) | none | COMPLETED |
| 74 | Global Low-Cost M-Bag Retail Network Expansion (India, Pakistan, Vietnam) | Implement bookstore crawlers for India (Chowkhamba Sanskrit Series), Pakistan (BookZone Pakistan), and Vietnam (Tân Việt Books) | none | COMPLETED |
| 75 | Global Low-Cost M-Bag Retail Network Expansion (India, Pakistan, Vietnam) | Implement bookstore crawlers for India (Oxford Bookstore), Pakistan (Pak Book Corporation), and Vietnam (Alpha Books) | none | COMPLETED |
| 76 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Siglo del Hombre), Turkey (Yapı Kredi Yayınları), and South Africa (Adams Booksellers) | none | COMPLETED |
| 77 | Equatorial Guinea Expansion | Implement bookstore-specific crawler for Equatorial Guinea (Libros de Guinea Ecuatorial via HTML Catalog parser) | none | COMPLETED |
| 78 | Global Low-Cost M-Bag Retail Network Expansion (Vietnam, India, Pakistan) | Implement bookstore crawlers for Vietnam (Dông A Books), India (Rupa Publications), and Pakistan (Dogar Books) | none | COMPLETED |
| 79 | Guinea-Bissau Expansion | Implement bookstore-specific crawler for Guinea-Bissau (Ku Si Mon Editora via WooCommerce API) | none | COMPLETED |
| 80 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Casa Tomada), Turkey (Epsilon Yayınevi), and South Africa (Love Books) | none | COMPLETED |
| 81 | Bahrain Expansion | Implement bookstore-specific crawler for Bahrain (Neo Books & Coffee via nopCommerce Catalog parser) | none | COMPLETED |
| 82 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Arteletra), Turkey (Penguen Kitabevi), and South Africa (Juta Books) | none | COMPLETED |
| 83 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Babel Libros), Turkey (Beyaz Balina Yayınları), and South Africa (Mind Matters) | none | COMPLETED |
| 84 | Albania Expansion | Implement bookstore-specific crawler for Albania (Bukinist Albania via PrestaShop Catalog parser) | none | COMPLETED |
| 85 | Sierra Leone Expansion | Implement bookstore-specific crawler for Sierra Leone (Sierra Leone Writers Series via ASP.NET Catalog parser) | none | COMPLETED |
| 86 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Acentos), Turkey (Everest Yayınları), and South Africa (Booksite Afrika) | none | COMPLETED |
| 87 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Tragaluz Editores), Turkey (Alfa Kitap), and South Africa (LAPA Uitgewers) | none | COMPLETED |
| 88 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Hangar Books), Turkey (Destek Dükkan), and South Africa (NISC Books) | none | COMPLETED |
| 89 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Lerner), Turkey (Tekin Yayınevi), and South Africa (Oma Winkel Books) | none | COMPLETED |
| 90 | Cambodia Expansion | Implement bookstore-specific crawler for Cambodia (Chamnar Bookstore via WooCommerce API, 6511 titles in USD) | none | COMPLETED |
| 91 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería San Francisco), Turkey (İnsan Kitap), and South Africa (Wits University Press) | none | COMPLETED |
| 92 | Mongolia Expansion | Implement bookstore-specific crawler for Mongolia (Internom via Next.js Catalog parser) | none | COMPLETED |
| 93 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Libros de la Esquina), Turkey (Say Yayınları), and South Africa (Unisa Press) | none | COMPLETED |
| 94 | Global Low-Cost M-Bag Retail Network Expansion (India, Pakistan) | Implement bookstore crawlers for India (Atlantic Books India, Motilal Banarsidass) and Pakistan (Vanguard Books Pakistan) | none | COMPLETED |
| 95 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Quinta de Goyeneche), Turkey (Metis Yayınları), and South Africa (Bokmakiri Books) | none | COMPLETED |
| 96 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Libros y Letras), Turkey (Kırmızı Balon Yayınları), and South Africa (African Sun Media) | none | COMPLETED |
| 97 | Brunei Expansion | Implement bookstore-specific crawlers for Brunei (NollyBook via Shopify API and Icklebooks via WooCommerce API, 4310+ titles) | none | COMPLETED |
| 98 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Taller de Edición Rocca), Turkey (Bilgi Yayınevi), and South Africa (Submarine Books) | none | COMPLETED |
| 99 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería San Jerónimo), Turkey (Pan Yayıncılık), and South Africa (Porcupine Press) | none | COMPLETED |
| 101 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería El Astillero), Turkey (Yordam Kitap), and South Africa (Jacana Media) | none | COMPLETED |
| 102 | Global Low-Cost M-Bag Retail Network Expansion (Pakistan, Vietnam, Colombia) | Implement bookstore crawlers for Pakistan (Paramount Books Pakistan), Vietnam (Nha Sach Kim Dong), and Colombia (Ediciones Uniandes) | none | COMPLETED |
| 103 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Editorial UNAL), Turkey (Kara Karga Yayınları), and South Africa (Briza Publications) | none | COMPLETED |
| 104 | Angola Expansion | Implement bookstore-specific crawler for Angola (Nina's Livraria via Supabase REST API) | none | COMPLETED |
| 105 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería La Hoja de Roble), Turkey (Doğan Kitap), and South Africa (Tafelberg Uitgewers) | none | COMPLETED |
| 106 | Belarus Expansion | Implement bookstore-specific crawler for Belarus (Belkniga via 1C-Bitrix Catalog parser) | none | COMPLETED |
| 107 | Kosovo Expansion | Implement bookstore-specific crawlers for Kosovo (House of Books & Altera Books via WooCommerce API, 6540+ titles) | none | COMPLETED |
| 108 | Holy See Expansion | Implement bookstore-specific crawler for Holy See / Vatican (Libreria Editrice Vaticana via PrestaShop Catalog parser) | none | COMPLETED |
| 109 | Bangladesh Expansion | Implement bookstore-specific crawler for Bangladesh (BoiBazar via HTML Catalog parser, 100,000+ titles) | none | COMPLETED |
| 110 | Kazakhstan Expansion | Implement bookstore-specific crawler for Kazakhstan (Kitapal via HTML Catalog parser, prices in KZT) | none | COMPLETED |
| 111 | North Macedonia Expansion | Implement bookstore-specific crawler for North Macedonia (Antolog Books via WooCommerce API, 1,030+ titles in MKD) | none | COMPLETED |
| 112 | Tajikistan Expansion | Implement bookstore-specific crawler for Tajikistan (Alif Shop via HTML Catalog parser, prices in TJS) | none | COMPLETED |
| 113 | Liechtenstein Expansion | Implement bookstore-specific crawler for Liechtenstein (Omni via HTML Catalog parser, prices in CHF) | none | COMPLETED |
| 114 | Paraguay Expansion | Implement bookstore-specific crawlers for Paraguay (Servilibro via WooCommerce API & Books Paraguay via Shopify API, prices in PYG) | none | COMPLETED |
| 115 | Albania Expansion | Implement bookstore-specific crawler for Albania (Botimet Pegi via HTML Catalog parser, prices in ALL) | none | COMPLETED |
| 116 | Belarus Expansion | Implement bookstore-specific crawler for Belarus (Chitatel via HTML Catalog parser, prices in BYN) | none | COMPLETED |
| 117 | Cyprus Expansion | Implement bookstore-specific crawler for Cyprus (Galaxy Bookshop via WooCommerce API, 3,800+ titles in EUR) | none | COMPLETED |
| 118 | Bolivia Expansion | Implement bookstore-specific crawlers for Bolivia (El Baúl del Libro & Plural Editores via WooCommerce API, 7,880+ titles in BOB) | none | COMPLETED |
| 119 | Cameroon Expansion | Implement bookstore-specific crawler for Cameroon (Solution Bookshop via HTML Catalog parser, prices in XAF) | none | COMPLETED |
| 120 | Gabon Expansion | Implement bookstore-specific crawler for Gabon (Librairie Continuum Leadership via HTML Catalog parser, prices in XAF) | none | COMPLETED |
| 121 | Guinea Expansion | Implement bookstore-specific crawler for Guinea (Éditions Ganndal via HTML Catalog parser, prices in GNF) | none | COMPLETED |
| 122 | Mali Expansion | Implement bookstore-specific crawler for Mali (MaliBook via HTML Catalog parser, prices in XOF) | none | COMPLETED |
| 123 | Niger Expansion | Implement bookstore-specific crawler for Niger (Ilkitab Librairie via PrestaShop Catalog parser, prices in XOF) | none | COMPLETED |
| 124 | Chad Expansion | Implement bookstore-specific crawler for Chad (Soukabir via WooCommerce Store API, prices in XAF) | none | COMPLETED |
| 125 | Cote d'Ivoire Expansion | Implement bookstore-specific crawler for Côte d'Ivoire (Librairie de Bingerville via HTML Catalog parser, prices in XOF) | none | COMPLETED |
| 126 | Namibia Expansion | Implement bookstore-specific crawler for Namibia (My Book Owl via WooCommerce Store API, prices in NAD) | none | COMPLETED |
| 127 | Botswana Expansion | Implement bookstore-specific crawler for Botswana (Macmillan Education Botswana via HTML Catalog parser, prices in BWP) | none | COMPLETED |
| 128 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería La Libre), Turkey (Cem Yayınevi), and South Africa (Struik Nature) | none | COMPLETED |
| 129 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Lugar de Palabras), Turkey (Cumhuriyet Kitap), and South Africa (Loot South Africa) | none | COMPLETED |
| 130 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería La Pascasia), Turkey (Karakutu Yayınları), and South Africa (Footprint Press) | none | COMPLETED |
| 131 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Anticuaria El Carnero), Turkey (İletişim Yayınları), and South Africa (Modjaji Books) | none | COMPLETED |
| 132 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería FCE Colombia), Turkey (İş Bankası Kültür Yayınları), and South Africa (Vibe Books) | none | COMPLETED |
| 133 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Espacio Blanco), Turkey (Norgunk Yayıncılık), and South Africa (Brio Books) | none | COMPLETED |
| 134 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería La Chiqui), Turkey (Dergah Yayınları), and South Africa (Threadfin Books) | none | COMPLETED |
| 135 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Libros del Espacio), Turkey (Aras Yayıncılık), and South Africa (Snapplify Store) | none | COMPLETED |
| 136 | Global Low-Cost M-Bag Retail Network Expansion (Bangladesh, Turkey, South Africa) | Implement bookstore crawlers for Bangladesh (Wafilife), Turkey (Aras Yayıncılık), and South Africa (Snapplify Store) | none | COMPLETED |
| 137 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Santo & Seña), Turkey (Ayrıntı Yayınları), and South Africa (Select Books) | none | COMPLETED |
| 138 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Tornamesa), Turkey (İnkılâp Kitabevi), and South Africa (Fogarty's Bookshop) | none | COMPLETED |
| 139 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Álula Libros), Turkey (İmge Kitabevi), and South Africa (Collector's Treasury) | none | COMPLETED |
| 140 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería La Tertulia), Turkey (Eksik Parça Yayınları), and South Africa (Blank Books) | none | COMPLETED |
| 141 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Cuarto Plegable), Turkey (Varlık Yayınları), and South Africa (Bikini Beach Books) | none | COMPLETED |
| 142 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Nicanor), Turkey (Telos Yayıncılık), and South Africa (Kalk Bay Books) | none | COMPLETED |
| 143 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Luvina), Turkey (Ketebe Yayınları), and South Africa (Ike's Books) | none | COMPLETED |
| 144 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Nómada Libros), Turkey (Mitos Boyut Yayınları), and South Africa (The Book Shoppe) | none | COMPLETED |
| 145 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Árbol de Libros), Turkey (Ginko Kitap), and South Africa (African Flavour Books) | none | COMPLETED |
| 146 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Fahrenheit 451), Turkey (İskele Yayıncılık), and South Africa (Fables Bookshop) | none | COMPLETED |
| 147 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Los Libros de Juan), Turkey (Kolektif Kitap), and South Africa (The Book Cottage) | none | COMPLETED |
| 148 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería El Aprendiz de Brujo), Turkey (Monokl Yayınları), and South Africa (Bookdealers) | none | COMPLETED |
| 149 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería La Libélula Libros), Turkey (Notos Kitap), and South Africa (Kirstenbosch Bookshop) | none | COMPLETED |
| 150 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Albaricoque Libros), Turkey (Profil Kitap), and South Africa (Bargain Books) | none | COMPLETED |
| 151 | Global Low-Cost M-Bag Retail Network Expansion (Pakistan, Turkey, South Africa) | Implement bookstore crawlers for Pakistan (MultiLine Books), Turkey (Sözler Neşriyat), and South Africa (Hemingways Bookshop) | none | COMPLETED |
| 152 | Global Low-Cost M-Bag Retail Network Expansion (Philippines, Turkey, South Africa) | Implement bookstore crawlers for Philippines (Solidaridad Bookshop), Turkey (İz Yayıncılık), and South Africa (Verbatim Books) | none | COMPLETED |
| 153 | Global Low-Cost M-Bag Retail Network Expansion (Vietnam, Turkey, South Africa) | Implement bookstore crawlers for Vietnam (Đinh Tị Books), Turkey (Avesta Yayınları), and South Africa (Quill Books) | none | COMPLETED |
| 154 | Global Low-Cost M-Bag Retail Network Expansion (Egypt, Turkey, South Africa) | Implement bookstore crawlers for Egypt (Madbouly Bookshop), Turkey (Beyan Yayınları), and South Africa (Bookish SA) | none | COMPLETED |
| 155 | Global Low-Cost M-Bag Retail Network Expansion (India, Turkey, South Africa) | Implement bookstore crawlers for India (Bahrisons Booksellers), Turkey (Hece Yayınları), and South Africa (The Book Den SA) | none | COMPLETED |
| 156 | Global Low-Cost M-Bag Retail Network Expansion (India, Turkey, South Africa) | Implement bookstore crawlers for India (Higginbothams), Turkey (Çizgi Kitabevi), and South Africa (Bluff Books) | none | COMPLETED |
| 157 | Global Low-Cost M-Bag Retail Network Expansion (Pakistan, Turkey, South Africa) | Implement bookstore crawlers for Pakistan (Welcome Book Port), Turkey (Pınar Yayınları), and South Africa (Bumble Books) | none | COMPLETED |
| 158 | Global Low-Cost M-Bag Retail Network Expansion (Vietnam, Turkey, South Africa) | Implement bookstore crawlers for Vietnam (Thái Hà Books), Turkey (Büyüyenay Yayınları), and South Africa (African Minds) | none | COMPLETED |
| 159 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Turkey, South Africa) | Implement bookstore crawlers for Colombia (Librería Bukz), Turkey (Alfa Kitap), and South Africa (Christian Books SA) | none | COMPLETED |
| 160 | Global Low-Cost M-Bag Retail Network Expansion (Turkey, Philippines, Egypt) | Implement bookstore crawlers for Turkey (Kitapsepeti), Philippines (National Book Store), and Egypt (Alef Bookstores) | none | COMPLETED |
| 161 | Global Low-Cost M-Bag Retail Network Expansion (Vietnam, Turkey, South Africa) | Implement bookstore crawlers for Vietnam (NXB Tre), Turkey (Kitapsan), and South Africa (Clarke's Bookshop) | none | COMPLETED |
| 162 | Global Low-Cost M-Bag Retail Network Expansion (Turkey, Turkey, Turkey) | Implement bookstore crawlers for Turkey (Nobel Kitap), Turkey (Pegem), Turkey (Pelikan Kitabevi) | none | COMPLETED |
| 163 | Global Low-Cost M-Bag Retail Network Expansion (Turkey, Turkey, South Africa) | Implement bookstore crawlers for Turkey (Kitap Ambari), Turkey (Halk Kitabevi), South Africa (PNA) | none | COMPLETED |
| 164 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Colombia, Colombia) | Implement bookstore crawlers for Colombia (Wilborada 1047), Colombia (Libreria Cascadas), Colombia (Libreria Medica) | none | COMPLETED |
| 165 | Global Low-Cost M-Bag Retail Network Expansion (Philippines, Philippines, Philippines) | Implement bookstore crawlers for Philippines (OMF Literature), Philippines (Rex Book Store), Philippines (Popular Bookstore) | none | COMPLETED |
| 166 | Global Low-Cost M-Bag Retail Network Expansion (Philippines, Egypt, Egypt) | Implement bookstore crawlers for Philippines (Christian Bible Society), Egypt (Cherry Blossom Books), Egypt (Maadi Bookshop) | none | COMPLETED |
| 167 | Global Low-Cost M-Bag Retail Network Expansion (India, India, India) | Implement bookstore crawlers for India (BookGanga), India (Pustakmandi), India (Prints Publications) | none | COMPLETED |
| 168 | Global Low-Cost M-Bag Retail Network Expansion (India, India, Pakistan) | Implement bookstore crawlers for India (DK Agencies), India (Vedams Books), Pakistan (Iqra) | none | COMPLETED |
| 169 | Global Low-Cost M-Bag Retail Network Expansion (Pakistan, Pakistan, Pakistan) | Implement bookstore crawlers for Pakistan (Urdu Bazar), Pakistan (Mr. Books), Pakistan (786 Books) | none | COMPLETED |
| 170 | Global Low-Cost M-Bag Retail Network Expansion (Vietnam, Vietnam, Vietnam) | Implement bookstore crawlers for Vietnam (Sach Xua), Vietnam (Minh Long Book), Vietnam (AnyBooks) | none | COMPLETED |
| 171 | Global Low-Cost M-Bag Retail Network Expansion (India, Egypt, Egypt) | Implement bookstore crawlers for India (Booksbeka), Egypt (Book City Egypt), Egypt (Sphinx Books) | none | COMPLETED |
| 172 | Global Low-Cost M-Bag Retail Network Expansion (Vietnam, Vietnam, Vietnam) | Implement bookstore crawlers for Vietnam (Sach Vui), Vietnam (First News), Vietnam (Hieu Sach) | none | COMPLETED |
| 173 | Global Low-Cost M-Bag Retail Network Expansion (Vietnam, Philippines, Philippines) | Implement bookstore crawlers for Vietnam (Nha Sach Kinh Te), Philippines (Adarna House), Philippines (Anvil Publishing) | none | COMPLETED |
| 174 | Global Low-Cost M-Bag Retail Network Expansion (Philippines, Philippines, Philippines) | Implement bookstore crawlers for Philippines (Lampara Books), Philippines (Psicom Publishing), Philippines (Summit Books) | none | COMPLETED |
| 175 | Global Low-Cost M-Bag Retail Network Expansion (Philippines, Turkey, Turkey) | Implement bookstore crawlers for Philippines (Traders Books), Turkey (Dogan Kitap), Turkey (Yeditepe) | none | COMPLETED |
| 176 | Global Low-Cost M-Bag Retail Network Expansion (Turkey, South Africa, South Africa) | Implement bookstore crawlers for Turkey (Is Bankasi Kultur Yayinlari), South Africa (Exclusive Books Online), South Africa (Bargate Books) | none | COMPLETED |
| 177 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Colombia, Colombia) | Implement bookstore crawlers for Colombia (Epigrafe), Colombia (Fondo Editorial), Colombia (Libreria El Nacional) | none | COMPLETED |
| 178 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Colombia, Pakistan) | Implement bookstore crawlers for Colombia (Libreria Casa Tomada), Colombia (Libreria de la Costa), Pakistan (Mary Martin) | none | COMPLETED |
| 179 | Global Low-Cost M-Bag Retail Network Expansion (Pakistan, Pakistan, Pakistan) | Implement bookstore crawlers for Pakistan (Thomas and Thomas), Pakistan (Quaid Book), Pakistan (Old Books PK) | none | COMPLETED |
| 180 | Global Low-Cost M-Bag Retail Network Expansion (Pakistan, Pakistan, India) | Implement bookstore crawlers for Pakistan (Islamic Books PK), Pakistan (Karachi Books), India (Infibeam Books) | none | COMPLETED |
| 181 | Global Low-Cost M-Bag Retail Network Expansion (India, India, India) | Implement bookstore crawlers for India (Pratham Books), India (Tulika Books), India (Tara Books) | none | COMPLETED |
| 182 | Global Low-Cost M-Bag Retail Network Expansion (Vietnam, Vietnam, Vietnam) | Implement bookstore crawlers for Vietnam (Sach Khang Viet), Vietnam (Vietnam Books), Vietnam (Phuong Nam Book) | none | COMPLETED |
| 183 | Global Low-Cost M-Bag Retail Network Expansion (Vietnam, Vietnam, Vietnam) | Implement bookstore crawlers for Vietnam (Vina Sach), Vietnam (Nha Sach Nguyen Vu), Vietnam (Sach Hoc) | none | COMPLETED |
| 184 | Global Low-Cost M-Bag Retail Network Expansion (Philippines, Philippines, Philippines) | Implement bookstore crawlers for Philippines (Pandayan Bookshop), Philippines (Pages PH), Philippines (Tradition Books) | none | COMPLETED |
| 185 | Global Low-Cost M-Bag Retail Network Expansion (Philippines, Philippines, Philippines) | Implement bookstore crawlers for Philippines (Vibal Group), Philippines (Gospel Kiosk), Philippines (National Book Store V2) | none | COMPLETED |
| 186 | Global Low-Cost M-Bag Retail Network Expansion (Turkey, Turkey, Turkey) | Implement bookstore crawlers for Turkey (Sozcu Kitapevi), Turkey (TDV Kitap), Turkey (Akcag) | none | COMPLETED |
| 187 | Global Low-Cost M-Bag Retail Network Expansion (Turkey, South Africa, South Africa) | Implement bookstore crawlers for Turkey (Yargi Yayinevi), South Africa (Macmillan SA), South Africa (Sherwood Books) | none | COMPLETED |
| 188 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Colombia, Colombia) | Implement bookstore crawlers for Colombia (Libreria Francesa), Colombia (Tango Discos), Colombia (Panamericana V2) | none | COMPLETED |
| 189 | Global Low-Cost M-Bag Retail Network Expansion (Pakistan, Pakistan, Pakistan) | Implement bookstore crawlers for Pakistan (Fida), Pakistan (Al Bakistan), Pakistan (Gaba Books) | none | COMPLETED |
| 190 | Global Low-Cost M-Bag Retail Network Expansion (India, India, India) | Implement bookstore crawlers for India (Landmark Books), India (Biblia Impex), India (Goyal Publisher) | none | COMPLETED |
| 191 | Global Low-Cost M-Bag Retail Network Expansion (India, Egypt, Egypt) | Implement bookstore crawlers for India (Scholastic India), Egypt (Merit Books), Egypt (Dar Al Mada) | none | COMPLETED |
| 192 | Global Low-Cost M-Bag Retail Network Expansion (Vietnam, Vietnam, Vietnam) | Implement bookstore crawlers for Vietnam (Nha Sach Hai An), Vietnam (Tu Sach Gia Dinh), Vietnam (Sach Phat Giao) | none | COMPLETED |
| 193 | Global Low-Cost M-Bag Retail Network Expansion (Vietnam, Philippines, Philippines) | Implement bookstore crawlers for Vietnam (Nha Sach Hoa Binh), Philippines (C&E Publishing), Philippines (Pumplepie) | none | COMPLETED |
| 194 | Global Low-Cost M-Bag Retail Network Expansion (Philippines, Philippines, Philippines) | Implement bookstore crawlers for Philippines (Ateneo Press), Philippines (UP Press), Philippines (UST Publishing House) | none | COMPLETED |
| 195 | Global Low-Cost M-Bag Retail Network Expansion (Turkey, Turkey, Turkey) | Implement bookstore crawlers for Turkey (Nobel Yayin), Turkey (Altin Kitaplar), Turkey (Say Kitap) | none | COMPLETED |
| 196 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, South Africa, South Africa) | Implement bookstore crawlers for South Africa (Bay Bookshop), South Africa (Blue Weaver), South Africa (NB Publishers) | none | COMPLETED |
| 197 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Colombia, Colombia) | Implement bookstore crawlers for Colombia (Libreria Lucerna), Colombia (Libreria Universitaria), Colombia (Libreria Orion) | none | COMPLETED |
| 198 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Colombia, Pakistan) | Implement bookstore crawlers for Colombia (Libreria Cultural), Colombia (Libreria Liceo), Pakistan (Dawah Books) | none | COMPLETED |
| 199 | Global Low-Cost M-Bag Retail Network Expansion (Pakistan, Pakistan, Pakistan) | Implement bookstore crawlers for Pakistan (Multan Books), Pakistan (Peshawar Books), Pakistan (Royal Book Company) | none | COMPLETED |
| 200 | Global Low-Cost M-Bag Retail Network Expansion (India, India, India) | Implement bookstore crawlers for India (National Book Trust), India (Sahitya Akademi), India (Vikas Publishing) | none | COMPLETED |
| 201 | Global Low-Cost M-Bag Retail Network Expansion (India, Egypt, Egypt) | Implement bookstore crawlers for India (Navneet), Egypt (Sufi Bookstore), Egypt (Tanweer) | none | COMPLETED |
| 202 | Global Low-Cost M-Bag Retail Network Expansion (Vietnam, Vietnam, Vietnam) | Implement bookstore crawlers for Vietnam (Bookstore VN), Vietnam (Sach Noi Viet), Vietnam (Nha Sach Giao Duc) | none | COMPLETED |
| 203 | Global Low-Cost M-Bag Retail Network Expansion (Vietnam, Vietnam, Philippines) | Implement bookstore crawlers for Vietnam (Saigon Books), Vietnam (Quang Van Books), Philippines (MegaTexts) | none | COMPLETED |
| 204 | Global Low-Cost M-Bag Retail Network Expansion (Philippines, Philippines, Philippines) | Implement bookstore crawlers for Philippines (St Pauls PH), Philippines (Great Books PH), Philippines (Bookends PH) | none | COMPLETED |
| 205 | Global Low-Cost M-Bag Retail Network Expansion (Turkey, Turkey, Turkey) | Implement bookstore crawlers for Turkey (Otuken), Turkey (Sel Yayincilik), Turkey (Iletisim Yayinlari) | none | COMPLETED |
| 206 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, South Africa, Colombia) | Implement bookstore crawlers for South Africa (Smythes Books), South Africa (Textbook Trader), Colombia (Taller de Edicion) | none | COMPLETED |
| 207 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Colombia, Colombia) | Implement bookstore crawlers for Colombia (Libreria Virgilio), Colombia (Libreria Grammata), Colombia (Libreria Pensamiento) | none | COMPLETED |
| 208 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Pakistan, Pakistan) | Implement bookstore crawlers for Colombia (Fondo de Cultura Economica CO), Pakistan (Bookstow), Pakistan (Student Station) | none | COMPLETED |
| 209 | Global Low-Cost M-Bag Retail Network Expansion (Pakistan, India, India) | Implement bookstore crawlers for Pakistan (Ilmi Markaz), India (Upkar Prakashan), India (Arihant Books) | none | COMPLETED |
| 210 | Global Low-Cost M-Bag Retail Network Expansion (India, India, Egypt) | Implement bookstore crawlers for India (Diamond Books), India (Ruchikas), Egypt (Maktabtk) | none | COMPLETED |
| 211 | Global Low-Cost M-Bag Retail Network Expansion (Egypt, Egypt, Egypt) | Implement bookstore crawlers for Egypt (Kotobgy), Egypt (Eqra Books), Egypt (Kutub Egypt) | none | COMPLETED |


## Interface Contracts
### Spider Base Interface
- Subclasses of `PlaywrightSearchSpider`.
- Must export standard search capabilities yielding valid `BookListing` instances.
- `BookListing`: clean numerical `price` (float string) and extracted `price_currency` string.

## Code Layout
- Spiders: `src/<spider_name>.py`
- Base classes & models: `src/html_search_spider.py`, `src/playwright_search_spider.py`
