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
| 212 | Global Low-Cost M-Bag Retail Network Expansion (Vietnam, Vietnam, Vietnam) | Implement bookstore crawlers for Vietnam (Nha Sach Dong Tay), Vietnam (Nha Sach Bach Khoa), Vietnam (Khuyen Hoc) | none | COMPLETED |
| 213 | Global Low-Cost M-Bag Retail Network Expansion (Vietnam, Vietnam, Vietnam) | Implement bookstore crawlers for Vietnam (Book 365 VN), Vietnam (Sach Cu 24h), Vietnam (Gac Sach) | none | COMPLETED |
| 214 | Global Low-Cost M-Bag Retail Network Expansion (Vietnam, Philippines, Philippines) | Implement bookstore crawlers for Vietnam (Sach Tham Khao), Philippines (FastBooks PH), Philippines (RareBooks PH) | none | COMPLETED |
| 215 | Global Low-Cost M-Bag Retail Network Expansion (Philippines, Philippines, Philippines) | Implement bookstore crawlers for Philippines (Aklat PH), Philippines (ArtBooks PH), Philippines (New Day Publishers) | none | COMPLETED |
| 216 | Global Low-Cost M-Bag Retail Network Expansion (Philippines, Turkey, Turkey) | Implement bookstore crawlers for Philippines (Philippine Bookshop), Turkey (Ephesus Yayinlari), Turkey (Marti Yayinlari) | none | COMPLETED |
| 217 | Global Low-Cost M-Bag Retail Network Expansion (Turkey, South Africa, South Africa) | Implement bookstore crawlers for Turkey (Cinius Yayinlari), South Africa (Almac Books), South Africa (Book Depot ZA) | none | COMPLETED |
| 218 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, South Africa, South Africa) | Implement bookstore crawlers for South Africa (Sun Africa Books), South Africa (Sutherland Books), South Africa (Vintage Books ZA) | none | COMPLETED |
| 219 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Colombia, Colombia) | Implement bookstore crawlers for Colombia (Libreria Polo), Colombia (Libreria Arte), Colombia (Libreria Sur) | none | COMPLETED |
| 220 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Colombia, Colombia) | Implement bookstore crawlers for Colombia (Libreria Latina), Colombia (Libreria Catolica), Colombia (Libreria Bogota) | none | COMPLETED |
| 221 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Pakistan, Pakistan) | Implement bookstore crawlers for Colombia (Siglo XXI Editores CO), Pakistan (Bookland PK), Pakistan (Bismillah Books) | none | COMPLETED |
| 222 | Global Low-Cost M-Bag Retail Network Expansion (Philippines, Philippines, Philippines) | Implement bookstore crawlers for Philippines (Paper Boox), Philippines (Omniana), Philippines (Gregory Books) | none | COMPLETED |
| 223 | Global Low-Cost M-Bag Retail Network Expansion (Vietnam, Vietnam, Turkey) | Implement bookstore crawlers for Vietnam (Paperbacks in Saigon), Vietnam (Book Metro), Turkey (Kitapyurdu) | none | COMPLETED |
| 224 | Global Low-Cost M-Bag Retail Network Expansion (Turkey, Turkey, Turkey) | Implement bookstore crawlers for Turkey (Ucuzkitapal), Turkey (Hepsiburada), Turkey (Turk Kitabevi) | none | COMPLETED |
| 225 | Global Low-Cost M-Bag Retail Network Expansion (Turkey, Turkey, Colombia) | Implement bookstore crawlers for Turkey (Dunyada Kitap), Turkey (Dem Turkish Center), Colombia (Casa del Libro Colombia) | none | COMPLETED |
| 226 | Global Low-Cost M-Bag Retail Network Expansion (Colombia, Colombia, Mexico) | Implement bookstore crawlers for Colombia (Happy Books), Colombia (Ediciones Hispanicas), Mexico (PlanetadeLibros Mexico) | none | COMPLETED |
| 227 | Global Low-Cost M-Bag Retail Network Expansion (Mexico, Mexico, Argentina) | Implement bookstore crawlers for Mexico (Penguin Libros MX), Mexico (Libreria Maranatha), Argentina (Galerna Libros) | none | COMPLETED |
| 228 | Global Low-Cost M-Bag Retail Network Expansion (Argentina, Argentina, Argentina) | Implement bookstore crawlers for Argentina (Libreria de la Biblioteca Nacional), Argentina (Woopy), Argentina (Libros del Pasaje) | none | COMPLETED |
| 229 | Global Low-Cost M-Bag Retail Network Expansion (Peru, Peru, Peru) | Implement bookstore crawlers for Peru (Librerias Crisol), Peru (Ibero Librerias), Peru (Librerias SBS) | none | COMPLETED |
| 230 | Global Low-Cost M-Bag Retail Network Expansion (Peru, Peru, Peru) | Implement bookstore crawlers for Peru (Communitas), Peru (Libreria El Virrey), Peru (Librerias Labrys) | none | COMPLETED |
| 231 | Global Low-Cost M-Bag Retail Network Expansion (Peru, Ecuador, Ecuador) | Implement bookstore crawlers for Peru (Vidalibros), Ecuador (Librimundi), Ecuador (Libreria Espanola) | none | COMPLETED |
| 232 | Global Low-Cost M-Bag Retail Network Expansion (Ghana, Ghana, Ghana) | Implement bookstore crawlers for Ghana (Booknook Store), Ghana (Kingdom Books Uganda), Ghana (Blue Knights Bookshop) | none | COMPLETED |
| 233 | Global Low-Cost M-Bag Retail Network Expansion (Zambia) | Implement bookstore crawlers for Zambia (Zambian ARTS Publishing House, Zambezi Joy Society) | none | COMPLETED |
| 234 | Global Low-Cost M-Bag Retail Network Expansion (Venezuela) | Implement bookstore crawlers for Venezuela (Booksflea, Tecni-Ciencia Libros) | none | COMPLETED |
| 233 | Global Low-Cost M-Bag Retail Network Expansion (Ghana, Uganda, Uganda) | Implement bookstore crawlers for Ghana (Read2Live Books), Uganda (Uganda Bookshop), Uganda (Mahiri Books) | none | COMPLETED |
| 234 | Global Low-Cost M-Bag Retail Network Expansion (Venezuela) | Implement bookstore crawlers for Venezuela (Booksflea, Tecni-Ciencia Libros) | none | COMPLETED |
| 234 | Global Low-Cost M-Bag Retail Network Expansion (Uganda, Uganda, Tanzania) | Implement bookstore crawlers for Uganda (Bitabo), Uganda (God's Mercy Bookshop), Tanzania (Eduzone International) | none | COMPLETED |
| 235 | Global Low-Cost M-Bag Retail Network Expansion (Tanzania, Zimbabwe, Zimbabwe) | Implement bookstore crawlers for Tanzania (Mkuki Na Nyota Publishers), Zimbabwe (Denmut Bookstore), Zimbabwe (Wordwide Africa Bookstore) | none | COMPLETED |
| 236 | Global Low-Cost M-Bag Retail Network Expansion (Belarus) | Implement MyBooks.by spider (Belarus) | none | COMPLETED |
| 237 | Global Low-Cost M-Bag Retail Network Expansion (Serbia) | Implement eKnjizara and Knjizara Riznica crawlers (Serbia) | none | COMPLETED |
| 238 | Global Low-Cost M-Bag Retail Network Expansion (Bahrain) | Implement Jashanmal crawler (Bahrain) | none | COMPLETED |
| 236 | Global Low-Cost M-Bag Retail Network Expansion (Singapore, Singapore, Taiwan) | Implement bookstore crawlers for Singapore (Popular Bookstore SG), Singapore (Books Kinokuniya SG), Taiwan (Sanmin Bookstore) | none | COMPLETED |
| 237 | Global Low-Cost M-Bag Retail Network Expansion (Serbia) | Implement eKnjizara and Knjizara Riznica crawlers (Serbia) | none | COMPLETED |
| 238 | Global Low-Cost M-Bag Retail Network Expansion (Bahrain) | Implement Jashanmal crawler (Bahrain) | none | COMPLETED |
| 237 | Global Low-Cost M-Bag Retail Network Expansion (Hong Kong, Hong Kong, Uruguay) | Implement bookstore crawlers for Hong Kong (Elephants), Hong Kong (Swindon Book Co), Uruguay (Escaramuza) | none | COMPLETED |
| 238 | Global Low-Cost M-Bag Retail Network Expansion (Bahrain) | Implement Jashanmal crawler (Bahrain) | none | COMPLETED |
| 238 | Global Low-Cost M-Bag Retail Network Expansion (Uruguay, Uruguay, Bolivia) | Implement bookstore crawlers for Uruguay (Libreria Vila), Uruguay (Mercado Libros UY), Bolivia (Librerias Lectura) | none | COMPLETED |
| 239 | Global Low-Cost M-Bag Retail Network Expansion (Bolivia, Bolivia, Bolivia) | Implement bookstore crawlers for Bolivia (El Baul del Libro), Bolivia (Libreria Yachaywasi), Bolivia (Libreria Alquimista) | none | COMPLETED |
| 240 | Global Low-Cost M-Bag Retail Network Expansion (Costa Rica, Costa Rica, Costa Rica) | Implement bookstore crawlers for Costa Rica (Libreria Internacional), Costa Rica (Editorial Costa Rica), Costa Rica (Semi Colon Books) | none | COMPLETED |
| 241 | Global Low-Cost M-Bag Retail Network Expansion (Costa Rica, Egypt, Lebanon) | Implement bookstore crawlers for Costa Rica (Libros Duluoz), Egypt (Bibliothek Egypt), Lebanon (Neel wa Furat) | none | COMPLETED |
| 242 | Global Low-Cost M-Bag Retail Network Expansion (Sweden, Morocco, Morocco) | Implement bookstore crawlers for Sweden (Bokus), Morocco (EnglishBooks MA), Morocco (Books on Demand MA) | none | COMPLETED |
| 243 | Global Low-Cost M-Bag Retail Network Expansion (Morocco, Saudi Arabia, Saudi Arabia) | Implement bookstore crawlers for Morocco (Heaven Books), Saudi Arabia (Book Link KSA), Saudi Arabia (Eagle Book) | none | COMPLETED |
| 244 | Global Low-Cost M-Bag Retail Network Expansion (UAE, UAE, UAE) | Implement bookstore crawlers for UAE (Books Kinokuniya UAE), UAE (Bookswagon UAE), UAE (Books World UAE) | none | COMPLETED |
| 245 | Global Low-Cost M-Bag Retail Network Expansion (Qatar, Qatar, Romania) | Implement bookstore crawlers for Qatar (Fnac Qatar), Qatar (MenaHub), Romania (Librarie net) | none | COMPLETED |
| 246 | Global Low-Cost M-Bag Retail Network Expansion (Bulgaria, Bulgaria, Bulgaria) | Implement bookstore crawlers for Bulgaria (Ciela), Bulgaria (Orange Center), Bulgaria (Knigomania) | none | COMPLETED |
| 247 | Global Low-Cost M-Bag Retail Network Expansion (Bulgaria, Hungary, Hungary) | Implement bookstore crawlers for Bulgaria (Colibri), Hungary (Libri HU), Hungary (Lira HU) | none | COMPLETED |
| 248 | Global Low-Cost M-Bag Retail Network Expansion (Hungary, Hungary, Poland) | Implement bookstore crawlers for Hungary (Bestsellers HU), Hungary (Prospero HU), Poland (Tania Ksiazka) | none | COMPLETED |
| 249 | Global Low-Cost M-Bag Retail Network Expansion (Poland, Poland, Ireland) | Implement bookstore crawlers for Poland (Swiat Ksiazki), Poland (TheBooks PL), Ireland (Dubray Books) | none | COMPLETED |
| 250 | Global Low-Cost M-Bag Retail Network Expansion (Greece, Greece, Cyprus) | Implement bookstore crawlers for Greece (Bookpath), Greece (Mitakosbooks), Cyprus (Cypronite) | none | COMPLETED |
| 251 | Global Low-Cost M-Bag Retail Network Expansion (Cyprus, Malta, Malta) | Implement bookstore crawlers for Cyprus (Eros Anthos), Malta (BookClub MT), Malta (Midsea Books) | none | COMPLETED |
| 252 | Global Low-Cost M-Bag Retail Network Expansion (Finland, Finland, Denmark) | Implement bookstore crawlers for Finland (Ruslania), Finland (Back Home Books), Denmark (Bog and Ide) | none | COMPLETED |
| 253 | Global Low-Cost M-Bag Retail Network Expansion (Denmark, Iceland, Iceland) | Implement bookstore crawlers for Denmark (Books and Company), Iceland (Boksala studenta), Iceland (Salka) | none | COMPLETED |
| 254 | Global Low-Cost M-Bag Retail Network Expansion (Iceland, Iceland, Switzerland) | Implement bookstore crawlers for Iceland (Sigvaldi Books), Iceland (Saga Store), Switzerland (Orell Fussli) | none | COMPLETED |
| 255 | Global Low-Cost M-Bag Retail Network Expansion (Switzerland, Switzerland, Belgium) | Implement bookstore crawlers for Switzerland (CeDe ch), Switzerland (Buchhaus ch), Belgium (Bol BE) | none | COMPLETED |
| 256 | Global Low-Cost M-Bag Retail Network Expansion (Belgium, Belgium, France) | Implement bookstore crawlers for Belgium (Standaard Boekhandel), Belgium (Tropismes), France (Fnac France) | none | COMPLETED |
| 257 | Global Low-Cost M-Bag Retail Network Expansion (France, Italy, Italy) | Implement bookstore crawlers for France (Lireka), Italy (Mondadori Store), Italy (Torrossa) | none | COMPLETED |
| 258 | Global Low-Cost M-Bag Retail Network Expansion (Italy, Italy, Netherlands) | Implement bookstore crawlers for Italy (Feltrinelli), Italy (Giunti al Punto), Netherlands (Athenaeum Boekhandel) | none | COMPLETED |
| 259 | Global Low-Cost M-Bag Retail Network Expansion (Netherlands, Netherlands, Netherlands) | Implement bookstore crawlers for Netherlands (Scheltema), Netherlands (Broese), Netherlands (Paagman) | none | COMPLETED |
| 260 | Global Low-Cost M-Bag Retail Network Expansion (Czech Republic, Czech Republic, Czech Republic) | Implement bookstore crawlers for Czech Republic (Luxor), Czech Republic (Kosmas), Czech Republic (Megabooks CZ) | none | COMPLETED |
| 261 | Global Low-Cost M-Bag Retail Network Expansion (Czech Republic, Czech Republic, Czech Republic) | Implement bookstore crawlers for Czech Republic (Knihobot CZ), Czech Republic (Academia CZ), Czech Republic (Book Therapy) | none | COMPLETED |
| 262 | Global Low-Cost M-Bag Retail Network Expansion (Canada, Canada, Canada) | Implement bookstore crawlers for Canada (Indigo), Canada (Booksellers CA), Canada (McNally Robinson) | none | COMPLETED |
| 263 | Global Low-Cost M-Bag Retail Network Expansion (Canada, Canada, Australia) | Implement bookstore crawlers for Canada (Book Depot CA), Canada (Book Outlet CA), Australia (Dymocks) | none | COMPLETED |
| 264 | Global Low-Cost M-Bag Retail Network Expansion (Australia, Australia, New Zealand) | Implement bookstore crawlers for Australia (Readings AU), Australia (The Nile AU), New Zealand (The Nile NZ) | none | COMPLETED |
| 265 | Global Low-Cost M-Bag Retail Network Expansion (UK, Malaysia, Nigeria) | Implement bookstore crawlers for UK (The Times Bookshop), Malaysia (Kinokuniya MY), Nigeria (Roving Heights) | none | COMPLETED |
| 266 | Global Low-Cost M-Bag Retail Network Expansion (Nigeria, Nigeria, Nigeria) | Implement bookstore crawlers for Nigeria (Laterna Books), Nigeria (BellaBooks), Nigeria (Spine and Label) | none | COMPLETED |
| 267 | Global Low-Cost M-Bag Retail Network Expansion (Nigeria, Kenya, Kenya) | Implement bookstore crawlers for Nigeria (Vog and Wod), Kenya (Prestige Bookshop), Kenya (Educate Yourself) | none | COMPLETED |
| 268 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Strand Books), USA (Half Price Books), USA (The Last Bookstore) | none | COMPLETED |
| 269 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (City Lights), USA (Tattered Cover), USA (Vromans) | none | COMPLETED |
| 270 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (BookPeople), USA (Keplers), USA (Changing Hands) | none | COMPLETED |
| 271 | Global Low-Cost M-Bag Retail Network Expansion (USA, Germany, Germany) | Implement bookstore crawlers for USA (Harvard Book Store), Germany (Weltbild), Germany (Lehmanns) | none | COMPLETED |
| 272 | Global Low-Cost M-Bag Retail Network Expansion (Brazil, Brazil, Mexico) | Implement bookstore crawlers for Brazil (Livraria Cultura), Brazil (Capitolina Books), Mexico (Casa del Libro MX) | none | COMPLETED |
| 273 | Global Low-Cost M-Bag Retail Network Expansion (Mexico, Mexico, Colombia) | Implement bookstore crawlers for Mexico (American Bookstore), Mexico (Books From Mexico), Colombia (Paulinas Colombia) | none | COMPLETED |
| 274 | Global Low-Cost M-Bag Retail Network Expansion (Indonesia, Indonesia, Indonesia) | Implement bookstore crawlers for Indonesia (Periplus), Indonesia (Bukabuku), Indonesia (Books Beyond) | none | COMPLETED |
| 275 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Elliott Bay Book Company), USA (Boulder Book Store), USA (Green Apple Books) | none | COMPLETED |
| 276 | Global Low-Cost M-Bag Retail Network Expansion (USA, UK, UK) | Implement bookstore crawlers for USA (Parnassus Books), UK (Foyles), UK (Wordery) | none | COMPLETED |
| 277 | Global Low-Cost M-Bag Retail Network Expansion (UK, Japan, Japan) | Implement bookstore crawlers for UK (Browns Books), Japan (Kinokuniya JP), Japan (Tsutaya) | none | COMPLETED |
| 278 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Kramers), USA (Politics and Prose), USA (A Cappella Books) | none | COMPLETED |
| 279 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Charis Books), USA (FoxTale Book Shoppe), USA (Eagle Eye Book Shop) | none | COMPLETED |
| 280 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (The Bookworm Omaha), USA (Left Bank Books), USA (Subterranean Books) | none | COMPLETED |
| 281 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Magers and Quinn), USA (Birchbark Books), USA (Moon Palace Books) | none | COMPLETED |
| 282 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Book Soup), USA (Skylight Books), USA (Diesel Bookstore) | none | COMPLETED |
| 283 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Booksmith), USA (BookBar Denver), USA (Third Place Books) | none | COMPLETED |
| 284 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Village Books), USA (Kings English), USA (Weller Book Works) | none | COMPLETED |
| 285 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Interabang Books), USA (Murder By The Book), USA (Brazos Bookstore) | none | COMPLETED |
| 286 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Blue Willow Bookshop), USA (BookWoman), USA (Quail Ridge Books) | none | COMPLETED |
| 287 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Flyleaf Books), USA (Malaprops Bookstore), USA (Regulator Bookshop) | none | COMPLETED |
| 288 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Square Books), USA (Lemuria Books), USA (Alabama Booksmith) | none | COMPLETED |
| 289 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Garden District Book Shop), USA (Octavia Books), USA (Joseph Beth) | none | COMPLETED |
| 290 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Nicolas Books), USA (Literati Bookstore), USA (Prairie Lights) | none | COMPLETED |
| 291 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Unabridged Bookstore), USA (Seminary Co op), USA (Women and Children First) | none | COMPLETED |
| 292 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (The Book Cellar), USA (Volumes Bookcafe), USA (Boswell Book Company) | none | COMPLETED |
| 293 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Brookline Booksmith), USA (Trident Booksellers), USA (Porter Square Books) | none | COMPLETED |
| 294 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (RJ Julia Booksellers), USA (Northshire Bookstore), USA (Phoenix Books) | none | COMPLETED |
| 295 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Print A Bookstore), USA (Longfellow Books), USA (Water Street Bookstore) | none | COMPLETED |
| 296 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Midtown Scholar), USA (McNally Jackson), USA (Greenlight Bookstore) | none | COMPLETED |
| 297 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Books Are Magic), USA (Word Bookstores), USA (Astoria Bookshop) | none | COMPLETED |
| 298 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Kew and Willow Books), USA (Posman Books), USA (The Lit Bar) | none | COMPLETED |
| 299 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Shakespeare and Co), USA (Unnameable Books), USA (Solid State Books) | none | COMPLETED |
| 300 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (MahoganyBooks), USA (The Spiral Bookcase), USA (Main Street Books) | none | COMPLETED |
| 301 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Left Bank Bookshop), USA (The Owl and Turtle Bookshop), USA (Shermans Maine Coast) | none | COMPLETED |
| 302 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Gulf of Maine Books), USA (Broadside Bookshop), USA (Odyssey Bookshop) | none | COMPLETED |
| 303 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, UK) | Implement bookstore crawlers for USA (Amherst Books), USA (Montague Bookmill), UK (Daunt Books) | none | COMPLETED |
| 304 | Global Low-Cost M-Bag Retail Network Expansion (UK, UK, UK) | Implement bookstore crawlers for UK (Hatchards), UK (Topping and Company), UK (Mr Bs Emporium) | none | COMPLETED |
| 305 | Global Low-Cost M-Bag Retail Network Expansion (UK, UK, UK) | Implement bookstore crawlers for UK (Golden Hare Books), UK (The Portobello Bookshop), UK (Lighthouse Bookshop) | none | COMPLETED |
| 306 | Global Low-Cost M-Bag Retail Network Expansion (UK, UK, UK) | Implement bookstore crawlers for UK (Mainstreet Trading Company), UK (The Edinburgh Bookshop), UK (News from Nowhere) | none | COMPLETED |
| 307 | Global Low-Cost M-Bag Retail Network Expansion (UK, UK, UK) | Implement bookstore crawlers for UK (Five Leaves Bookshop), UK (Housmans), UK (Gays The Word) | none | COMPLETED |
| 308 | Global Low-Cost M-Bag Retail Network Expansion (UK, UK, UK) | Implement bookstore crawlers for UK (Persephone Books), UK (The Book Hive), UK (Much Ado Books) | none | COMPLETED |
| 309 | Global Low-Cost M-Bag Retail Network Expansion (UK, UK, UK) | Implement bookstore crawlers for UK (Richard Booths Bookshop), UK (Winstones), UK (Mostly Books) | none | COMPLETED |
| 310 | Global Low-Cost M-Bag Retail Network Expansion (Ireland, Ireland, Ireland) | Implement bookstore crawlers for Ireland (The Gutter Bookshop), Ireland (OMahonys Booksellers), Ireland (Books Upstairs) | none | COMPLETED |
| 311 | Global Low-Cost M-Bag Retail Network Expansion (Canada, Canada, Canada) | Implement bookstore crawlers for Canada (Munros Books), Canada (Russell Books), Canada (Bolen Books) | none | COMPLETED |
| 312 | Global Low-Cost M-Bag Retail Network Expansion (Canada, Canada, Canada) | Implement bookstore crawlers for Canada (Massy Books), Canada (The Paper Hound), Canada (Pages on Kensington) | none | COMPLETED |
| 313 | Global Low-Cost M-Bag Retail Network Expansion (Canada, Canada, Canada) | Implement bookstore crawlers for Canada (Shelf Life Books), Canada (Audreys Books), Canada (The Book Keeper) | none | COMPLETED |
| 314 | Global Low-Cost M-Bag Retail Network Expansion (Australia, Australia, Australia) | Implement bookstore crawlers for Australia (Gleebooks), Australia (Kinokuniya Sydney), Australia (Better Read Than Dead) | none | COMPLETED |
| 315 | Global Low-Cost M-Bag Retail Network Expansion (Australia, Australia, Australia) | Implement bookstore crawlers for Australia (Harry Hartog), Australia (Roaring Stories), Australia (Avid Reader) | none | COMPLETED |
| 316 | Global Low-Cost M-Bag Retail Network Expansion (Australia, Australia, Australia) | Implement bookstore crawlers for Australia (Riverbend Books), Australia (Where the Wild Things Are), Australia (The Bookshop Darlinghurst) | none | COMPLETED |
| 317 | Global Low-Cost M-Bag Retail Network Expansion (Australia, Australia, Australia) | Implement bookstore crawlers for Australia (Boffins Books), Australia (Planet Books), Australia (Crow Books) | none | COMPLETED |
| 318 | Global Low-Cost M-Bag Retail Network Expansion (Australia, Australia, Australia) | Implement bookstore crawlers for Australia (Beaufort Street Books), Australia (Paper Bird), Australia (Imprints Booksellers) | none | COMPLETED |
| 319 | Global Low-Cost M-Bag Retail Network Expansion (Australia, Australia, Australia) | Implement bookstore crawlers for Australia (Dillons Bookshop), Australia (Matilda Bookshop), Australia (Fullers Bookshop) | none | COMPLETED |
| 320 | Global Low-Cost M-Bag Retail Network Expansion (Australia, Australia, New Zealand) | Implement bookstore crawlers for Australia (Hobart Bookshop), Australia (Petrarchs Bookshop), New Zealand (Time Out Bookstore) | none | COMPLETED |
| 321 | Global Low-Cost M-Bag Retail Network Expansion (New Zealand, New Zealand, New Zealand) | Implement bookstore crawlers for New Zealand (Dorothy Butler Bookshop), New Zealand (The Womens Bookshop), New Zealand (Dear Reader) | none | COMPLETED |
| 322 | Global Low-Cost M-Bag Retail Network Expansion (New Zealand, New Zealand, New Zealand) | Implement bookstore crawlers for New Zealand (Good Books), New Zealand (Unity Books Wellington), New Zealand (The Childrens Bookshop) | none | COMPLETED |
| 323 | Global Low-Cost M-Bag Retail Network Expansion (New Zealand, New Zealand, USA) | Implement bookstore crawlers for New Zealand (Scorpio Books), New Zealand (University Book Shop), USA (Bookmarks NC) | none | COMPLETED |
| 324 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Hub City Bookshop), USA (Fiction Addiction), USA (E Shaver Bookseller) | none | COMPLETED |
| 325 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (The Book Tavern), USA (Tombolo Books), USA (Oxford Exchange) | none | COMPLETED |
| 326 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Sundog Books), USA (Page 158 Books), USA (McIntyres Books) | none | COMPLETED |
| 327 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Scuppernong Books), USA (The Country Bookshop), USA (Novel Memphis) | none | COMPLETED |
| 328 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Union Ave Books), USA (Brier Books), USA (Wild Fig Books) | none | COMPLETED |
| 329 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Roebling Point Books), USA (Prologue Bookshop), USA (Gramercy Books) | none | COMPLETED |
| 330 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Visible Voice Books), USA (Gathering Volumes), USA (BookSpace Columbus) | none | COMPLETED |
| 331 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Source Booksellers), USA (Pages Bookshop), USA (27th Letter Books) | none | COMPLETED |
| 332 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Brilliant Books), USA (McLean and Eakin), USA (The Book Bungalow) | none | COMPLETED |
| 333 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Back of Beyond Books), USA (Mostly Books AZ), USA (The Poisoned Pen) | none | COMPLETED |
| 334 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Bookmans), USA (Page and Palette), USA (Lorelei Books) | none | COMPLETED |
| 335 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Pass Christian Books), USA (Bay Books MS), USA (Blue Cypress Books) | none | COMPLETED |
| 336 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Tubby and Coos), USA (Cavalier House Books), USA (The Conundrum) | none | COMPLETED |
| 337 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (That Bookstore in Blytheville), USA (Wordsworth Books AR), USA (Pearls Books) | none | COMPLETED |
| 338 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Watermark Books), USA (Raven Book Store), USA (The Dusty Bookshelf) | none | COMPLETED |
| 339 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Rainy Day Books), USA (The Book House), USA (Skylark Bookshop) | none | COMPLETED |
| 340 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for USA (Yellow Dog Bookshop), USA (Downtown Books WI), USA (Mystery to Me) | none | COMPLETED |
| 341 | Global Low-Cost M-Bag Retail Network Expansion (USA, Pakistan, Pakistan) | Implement bookstore crawlers for USA (A Room of Ones Own), Pakistan (The Last Word), Pakistan (Liberty Books) | none | COMPLETED |
| 342 | Global Low-Cost M-Bag Retail Network Expansion (India, India, India) | Implement bookstore crawlers for Variety Book Depot, CMYK Bookstore, Blossom Book House | none | COMPLETED |
| 343 | Global Low-Cost M-Bag Retail Network Expansion (India, India, India) | Implement bookstore crawlers for Om Book Shop, Midland Book Shop, Fact and Fiction IN | none | COMPLETED |
| 344 | Global Low-Cost M-Bag Retail Network Expansion (Germany, Germany, Germany) | Implement bookstore crawlers for Ocelot Berlin, Autorenbuchhandlung Berlin, Proust Woerter und Toene | none | COMPLETED |
| 345 | Global Low-Cost M-Bag Retail Network Expansion (Germany, France, France) | Implement bookstore crawlers for Buchhandlung Walther Koenig, Shakespeare and Company Paris, Librairie Mollat | none | COMPLETED |
| 346 | Global Low-Cost M-Bag Retail Network Expansion (France, France, Sweden) | Implement bookstore crawlers for Librairie Charybde, Librairie Quilombo, Akademibokhandeln | none | COMPLETED |
| 347 | Global Low-Cost M-Bag Retail Network Expansion (Sweden, Norway, Norway) | Implement bookstore crawlers for Adlibris SE, ARK Bokhandel, Akademika NO | none | COMPLETED |
| 348 | Global Low-Cost M-Bag Retail Network Expansion (Austria, Greece, Poland) | Implement bookstore crawlers for Buchhandlung Ritter, Protasis GR, Znak | none | COMPLETED |
| 349 | Global Low-Cost M-Bag Retail Network Expansion (Croatia, Lithuania, Latvia) | Implement bookstore crawlers for Booksa HR, Humanitas LT, Petergailis | none | COMPLETED |
| 350 | Global Low-Cost M-Bag Retail Network Expansion (Estonia, Slovenia, Germany) | Implement bookstore crawlers for Apollo Raamatud, Konzorcij SI, Buecher de | none | COMPLETED |
| 351 | Global Low-Cost M-Bag Retail Network Expansion (Germany, Germany, Germany) | Implement bookstore crawlers for Dussmann, Schweitzer Online, Osiander | none | COMPLETED |
| 352 | Global Low-Cost M-Bag Retail Network Expansion (Guatemala, Guatemala, Panama) | Implement bookstore crawlers for Kemik GT, Kishi Books GT, Librerias El Lector | none | COMPLETED |
| 353 | Global Low-Cost M-Bag Retail Network Expansion (Panama, Panama, Honduras) | Implement bookstore crawlers for El Hombre de La Mancha, La Esquina PA, Guacamayas Bookstore | none | COMPLETED |
| 354 | Global Low-Cost M-Bag Retail Network Expansion (Honduras, South Korea, South Korea) | Implement bookstore crawlers for Libreria Chichus, Interpark Books KR, Bandibooks | none | COMPLETED |
| 355 | Global Low-Cost M-Bag Retail Network Expansion (China, Morocco, Dominican Republic) | Implement bookstore crawlers for JD Books, Librairie Cheikh, Cuesta Centro del Libro | none | COMPLETED |
| 356 | Global Low-Cost M-Bag Retail Network Expansion (Dominican Republic, Puerto Rico, Puerto Rico) | Implement bookstore crawlers for Atlantico Books, La Tertulia PR, Libros AC PR | none | COMPLETED |
| 357 | Global Low-Cost M-Bag Retail Network Expansion (Jamaica, Trinidad and Tobago, Chile) | Implement bookstore crawlers for Bookophilia JM, Metropolitan Books TT, Zig Zag CL | none | COMPLETED |
| 358 | Global Low-Cost M-Bag Retail Network Expansion (Bolivia, Uruguay, Venezuela) | Implement bookstore crawlers for Gisbert Libreria, Libreria Guadalquivir, El Buscalibros VE | none | COMPLETED |
| 359 | Global Low-Cost M-Bag Retail Network Expansion (Ghana, Ghana, Senegal) | Implement bookstore crawlers for Silverbird Book Centre, EPP Books GH, Librairie Clairafrique | none | COMPLETED |
| 360 | Global Low-Cost M-Bag Retail Network Expansion (Cote dIvoire, El Salvador, Nicaragua) | Implement bookstore crawlers for Librairie de France CI, Libreria Cultural SV, Hispamer NI | none | COMPLETED |
| 361 | Global Low-Cost M-Bag Retail Network Expansion (Ecuador, Argentina, Argentina) | Implement bookstore crawlers for Mr Books EC, Cuspide Libros, El Ateneo AR | none | COMPLETED |
| 362 | Global Low-Cost M-Bag Retail Network Expansion (Czechia, Czechia, Slovakia) | Implement bookstore crawlers for KupKnihu CZ, Nejlevnejsi Knihy CZ, Najlacnejsie Knihy SK | none | COMPLETED |
| 363 | Global Low-Cost M-Bag Retail Network Expansion (Bulgaria, Croatia, Croatia) | Implement bookstore crawlers for Elephant Bookstore BG, Knjiga HR, Dominovic HR | none | COMPLETED |
| 364 | Global Low-Cost M-Bag Retail Network Expansion (South Africa, Saudi Arabia, Argentina) | Implement bookstore crawlers for Exclusive Books SA, Obeikan SA, SBS Argentina | none | COMPLETED |
| 365 | Global Low-Cost M-Bag Retail Network Expansion (Argentina, Paraguay, Ecuador) | Implement bookstore crawlers for Waldhuter, El Lector PY, Libreria Rayuela | none | COMPLETED |
| 366 | Global Low-Cost M-Bag Retail Network Expansion (Costa Rica, Czechia, Slovakia) | Implement bookstore crawlers for Libreria Lehmann, Dobrovsky CZ, Panta Rhei SK | none | COMPLETED |
| 367 | Global Low-Cost M-Bag Retail Network Expansion (Romania, Romania, Bosnia) | Implement bookstore crawlers for Diverta RO, Librex RO, Knjiga BA | none | COMPLETED |
| 368 | Global Low-Cost M-Bag Retail Network Expansion (North Macedonia, Malta, Iceland) | Implement bookstore crawlers for Tri MK, Agenda Bookshop, Eymundsson | none | COMPLETED |
| 369 | Global Low-Cost M-Bag Retail Network Expansion (Switzerland, Switzerland, Turkey) | Implement bookstore crawlers for Ex Libris CH, Payot CH, BKM Kitap | none | COMPLETED |
| 370 | Global Low-Cost M-Bag Retail Network Expansion (Jordan, Nigeria, Morocco) | Implement bookstore crawlers for Readers Bookshop JO, Bookcraft NG, Kalila Wa Dimna MA | none | COMPLETED |
| 371 | Global Low-Cost M-Bag Retail Network Expansion (Kenya, Botswana, Namibia) | Implement bookstore crawlers for Magunga Bookstore KE, Exclusive Books BW, Book Den NA | none | COMPLETED |
| 372 | Global Low-Cost M-Bag Retail Network Expansion (Malaysia, Malaysia, Malaysia) | Implement bookstore crawlers for MPH Online, Popular MY, Gerakbudaya | none | COMPLETED |
| 373 | Global Low-Cost M-Bag Retail Network Expansion (Indonesia, Ireland, Canada) | Implement bookstore crawlers for Kinokuniya ID, Khans Books, Type Books | none | COMPLETED |
| 374 | Global Low-Cost M-Bag Retail Network Expansion (Canada, Canada, Canada) | Implement bookstore crawlers for Ben McNally Books, Drawn and Quarterly, Bookmark Canada | none | COMPLETED |
| 375 | Global Low-Cost M-Bag Retail Network Expansion (Canada, New Zealand, UK) | Implement bookstore crawlers for Wordsworth Books CA, Unity Books NZ, Forum Books | none | COMPLETED |
| 376 | Global Low-Cost M-Bag Retail Network Expansion (UK, UK, Australia) | Implement bookstore crawlers for Gosh Comics, Forbidden Planet, Title Store AU | none | COMPLETED |
| 377 | Global Low-Cost M-Bag Retail Network Expansion (Australia, Australia, USA) | Implement bookstore crawlers for Berkelouw Books, Collins Booksellers, Carmichaels | none | COMPLETED |
| 378 | Global Low-Cost M-Bag Retail Network Expansion (USA, Canada, Canada) | Implement bookstore crawlers for Bookshop Santa Cruz, Kings Co-op, Glass Bookshop | none | COMPLETED |
| 379 | Global Low-Cost M-Bag Retail Network Expansion (Canada, Singapore, Singapore) | Implement bookstore crawlers for A Different Booklist, Wardah Books, Woods in the Books | none | COMPLETED |
| 380 | Global Low-Cost M-Bag Retail Network Expansion (Singapore, India, India) | Implement bookstore crawlers for Epigram Books, Title Waves, Goobes Book Republic | none | COMPLETED |
| 381 | Global Low-Cost M-Bag Retail Network Expansion (Sri Lanka, Sri Lanka, Taiwan) | Implement bookstore crawlers for Sarasavi Bookshop, Makeen Books, Caves Books TW | none | COMPLETED |
| 382 | Global Low-Cost M-Bag Retail Network Expansion (Costa Rica, Mexico, Mexico) | Implement bookstore crawlers for Libreria Francesa CR, Libreria El Pendulo, Libreria Pegaso | none | COMPLETED |
| 383 | Global Low-Cost M-Bag Retail Network Expansion (Ecuador, Ghana, Senegal) | Implement bookstore crawlers for Libreria Studium, Vidya Bookstore, L Harmattan SN | none | COMPLETED |
| 384 | Global Low-Cost M-Bag Retail Network Expansion (UAE, Bahrain, Bahrain) | Implement bookstore crawlers for Kuttab Publishing, Neo Books and Coffee, Words Bookstore | none | COMPLETED |
| 385 | Global Low-Cost M-Bag Retail Network Expansion (Jordan, Bangladesh, Nepal) | Implement bookstore crawlers for Books at Cafe, Batighar, Mandala Book Point | none | COMPLETED |
| 386 | Global Low-Cost M-Bag Retail Network Expansion (Sri Lanka, Poland, Czechia) | Implement bookstore crawlers for Bargain Books LK, Gildia PL, Martinus CZ | none | COMPLETED |
| 387 | Global Low-Cost M-Bag Retail Network Expansion (Cyprus, UK, UK) | Implement bookstore crawlers for Kyriakou Bookshops, The Haslemere Bookshop, Scarthin Books | none | COMPLETED |
| 388 | Global Low-Cost M-Bag Retail Network Expansion (UK, UK, UK) | Implement bookstore crawlers for The Bookshop in Wigtown, Slightly Foxed, Gullivers Bookshop | none | COMPLETED |
| 389 | Global Low-Cost M-Bag Retail Network Expansion (UK, UK, UK) | Implement bookstore crawlers for Bookhaus Bristol, Max Minervas, Storysmith Books | none | COMPLETED |
| 390 | Global Low-Cost M-Bag Retail Network Expansion (UK, UK, Nepal) | Implement bookstore crawlers for Dulwich Books, Page 45, Tibet Book Store | none | COMPLETED |
| 391 | Global Low-Cost M-Bag Retail Network Expansion (Oman, Bahrain, Ireland) | Implement bookstore crawlers for Al Roya Bookstore, The Bookcase BH, Tertulia Books IE | none | COMPLETED |
| 392 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for The Briar Patch, Bear Pond Books, The Bookery NH | none | COMPLETED |
| 393 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for Gibsons Bookstore, Toadstool Bookshops, Grolier Poetry | none | COMPLETED |
| 394 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for The Bookloft, Sundance Bookstore, Gallery Bookshop | none | COMPLETED |
| 395 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for Pegasus Books, Walden Pond Books, The Book Table | none | COMPLETED |
| 396 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for Booked Evanston, Nonesuch Books, Titcombs Bookshop | none | COMPLETED |
| 397 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for Eight Cousins, Edgartown Books, Bunch of Grapes | none | COMPLETED |
| 398 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for Mitchells Book Corner, Nantucket Bookworks, Yellow Umbrella Books | none | COMPLETED |
| 399 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for Where the Sidewalk Ends, Brewster Book Store, Bank Square Books | none | COMPLETED |
| 400 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for Byrds Books, Hickory Stick Bookshop, Oblong Books | none | COMPLETED |
| 401 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for Golden Notebook, Inquiring Minds, Rough Draft Bar Books | none | COMPLETED |
| 402 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for Battenkill Books, Cafe con Libros, Loyalty Bookstores | none | COMPLETED |
| 403 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for Uncle Bobbies, Semicolon Bookstore, Wild Rumpus | none | COMPLETED |
| 404 | Global Low-Cost M-Bag Retail Network Expansion (Iceland, Finland, Finland) | Implement bookstore crawlers for Forlagid, Rosebud Books, Nide Kauppa | none | COMPLETED |
| 405 | Global Low-Cost M-Bag Retail Network Expansion (Norway, Norway, Denmark) | Implement bookstore crawlers for Tronsmo, Outland NO, Boghallen | none | COMPLETED |
| 406 | Global Low-Cost M-Bag Retail Network Expansion (Denmark, Netherlands, Belgium) | Implement bookstore crawlers for Tranquebar, De Vries Van Stockum, Filigranes | none | COMPLETED |
| 407 | Global Low-Cost M-Bag Retail Network Expansion (France, Italy, Spain) | Implement bookstore crawlers for Librairie Galignani, Todo Modo, Desnivel | none | COMPLETED |
| 408 | Global Low-Cost M-Bag Retail Network Expansion (Spain, Argentina, Argentina) | Implement bookstore crawlers for Libreria Rafael Alberti, Libreria Hernandez, Eterna Cadencia | none | COMPLETED |
| 409 | Global Low-Cost M-Bag Retail Network Expansion (Brazil, Australia, Australia) | Implement bookstore crawlers for Livraria da Vila, The Sun Bookshop, Brunswick Bound | none | COMPLETED |
| 410 | Global Low-Cost M-Bag Retail Network Expansion (Australia, New Zealand, New Zealand) | Implement bookstore crawlers for Paperchain Bookstore, Volume Books, Schrodingers Books | none | COMPLETED |
| 411 | Global Low-Cost M-Bag Retail Network Expansion (Philippines, Malaysia, Malaysia) | Implement bookstore crawlers for Mt Cloud Bookshop, Lit Books MY, Areca Books | none | COMPLETED |
| 412 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for Red Planet Books, Country Bookshelf, The Bookworm of Edwards | none | COMPLETED |
| 413 | Global Low-Cost M-Bag Retail Network Expansion (USA, USA, USA) | Implement bookstore crawlers for Off the Beaten Path, Books and Books Miami, Eighth Day Books | none | COMPLETED |
| 414 | Global Low-Cost M-Bag Retail Network Expansion (Austria, Austria, Austria) | Implement bookstore crawlers for Buchhandlung Orlando, Leporello, Hartliebs Bucher | none | COMPLETED |
| 415 | Global Low-Cost M-Bag Retail Network Expansion (Austria, Switzerland, Canada) | Implement bookstore crawlers for Shakespeare and Co Vienna, Bider and Tanner, Librairie Gallimard Montreal | none | COMPLETED |
| 416 | Global Low-Cost M-Bag Retail Network Expansion (Canada, Canada, Canada) | Implement bookstore crawlers for Librairie Le Port de Tete, Renaud Bray, Archambault | none | COMPLETED |
| 417 | Global Low-Cost M-Bag Retail Network Expansion (Canada, Canada, Canada) | Implement bookstore crawlers for Librairie Pantoute, Librairie Monet, Tattletales | none | COMPLETED |
| 418 | Global Low-Cost M-Bag Retail Network Expansion (Canada, Canada, Sri Lanka) | Implement bookstore crawlers for The Bookshelf Guelph, Sleuth of Baker Street, MD Gunasena | none | COMPLETED |
| 419 | Global Low-Cost M-Bag Retail Network Expansion (Sri Lanka, Nepal, Maldives) | Implement bookstore crawlers for Expographic Books, Ratna Pustak Bhandar, Asrafee Bookshop | none | COMPLETED |
| 420 | Global Low-Cost M-Bag Retail Network Expansion (Mauritius, Mauritius, Ireland) | Implement bookstore crawlers for Le Printemps, Editions de l Ocean Indien, Bridge Street Books | none | COMPLETED |
| 421 | Global Low-Cost M-Bag Retail Network Expansion (Ireland, Ireland, Ireland) | Implement bookstore crawlers for Woodbine Books, Just Books, Liber Books | none | COMPLETED |
| 422 | Global Low-Cost M-Bag Retail Network Expansion (Fiji, Latvia, Latvia) | Implement bookstore crawlers for USP Book Centre, Janis Roze, Zvaigzne ABC | none | COMPLETED |
| 423 | Global Low-Cost M-Bag Retail Network Expansion (Lithuania, Lithuania, Ireland) | Implement bookstore crawlers for Pegasas LT, Vaga LT, The Clifden Bookshop | none | COMPLETED |
| 424 | Global Low-Cost M-Bag Retail Network Expansion (Kazakhstan, Kazakhstan, Estonia) | Implement bookstore crawlers for Meloman KZ, Almaty Kitap, Pegasus EE | none | COMPLETED |
| 425 | Global Low-Cost M-Bag Retail Network Expansion (Serbia, Serbia, Serbia) | Implement bookstore crawlers for Knjizara Kultura, Knjizara Roman, Vulkani RS | none | COMPLETED |
| 426 | Global Low-Cost M-Bag Retail Network Expansion (Croatia, Romania, Cyprus) | Implement bookstore crawlers for Knjizara Ljevak, Librariile Humanitas, Parga CY | none | COMPLETED |
| 427 | Global Low-Cost M-Bag Retail Network Expansion (Cyprus, New Zealand, New Zealand) | Implement bookstore crawlers for Mavromatis, Wardini Books, Mcleods Booksellers | none | COMPLETED |
| 428 | Global Low-Cost M-Bag Retail Network Expansion (New Zealand, Armenia, Armenia) | Implement bookstore crawlers for Carsons Bookshop, Zangak Bookstore, Noyan Tapan | none | COMPLETED |
| 429 | Global Low-Cost M-Bag Retail Network Expansion (Hong Kong, Hong Kong, Malta) | Implement bookstore crawlers for Bleak House Books, Kelly and Walsh, BDL Books | none | COMPLETED |
| 430 | Global Low-Cost M-Bag Retail Network Expansion (Bulgaria, Moldova, Moldova) | Implement bookstore crawlers for Ozone BG, Bestseller MD, Elefant MD | none | COMPLETED |
| 431 | Global Low-Cost M-Bag Retail Network Expansion (Slovenia, Slovenia, Albania) | Implement bookstore crawlers for Beletrina, Knjigarna Sanje, Bota e Librit | none | COMPLETED |
| 432 | Global Low-Cost M-Bag Retail Network Expansion (Germany, Germany, Germany) | Implement bookstore crawlers for Bucher Bogen, Marga Schoeller, Hundt Hammer Stein | none | COMPLETED |
| 433 | Global Low-Cost M-Bag Retail Network Expansion (Germany, Germany, France) | Implement bookstore crawlers for Buchhandlung Graff, Lehmstedt, Librairie de Paris | none | COMPLETED |
| 434 | Global Low-Cost M-Bag Retail Network Expansion (France, France, France) | Implement bookstore crawlers for L Ecume des Pages, Le Divan, Librairie Kleber | none | COMPLETED |
| 435 | Global Low-Cost M-Bag Retail Network Expansion (France, France, Singapore) | Implement bookstore crawlers for Sauramps, Ombres Blanches, City Book Room | none | COMPLETED |
| 436 | Global Low-Cost M-Bag Retail Network Expansion (Malaysia, Malaysia, Italy) | Implement bookstore crawlers for Gerakbudaya Penang, Silverfish Books, Libreria Pontremoli | none | COMPLETED |
| 437 | Global Low-Cost M-Bag Retail Network Expansion (Italy, Italy, Luxembourg) | Implement bookstore crawlers for Libreria Bocca, Palazzo Roberti, Alinea LU | none | COMPLETED |
| 438 | Global Low-Cost M-Bag Retail Network Expansion (Luxembourg, Montenegro, Kosovo) | Implement bookstore crawlers for Librairie Diderich, Karver ME, Buzuku KS | none | COMPLETED |
| 439 | Global Low-Cost M-Bag Retail Network Expansion (Kosovo, Bosnia and Herzegovina, Bosnia and Herzegovina) | Implement bookstore crawlers for Artini KS, Svjetlostkomerc, Interliber BA | none | COMPLETED |
| 440 | Global Low-Cost M-Bag Retail Network Expansion (Uruguay, Uruguay, Paraguay) | Implement bookstore crawlers for Isadora Libros, Banda Oriental, Books PY | none | COMPLETED |
| 441 | Global Low-Cost M-Bag Retail Network Expansion (Lebanon, Jordan, Kuwait) | Implement bookstore crawlers for Stephan Lib, The Good Book Shop, Saeed and Samir | none | COMPLETED |


## Interface Contracts
### Spider Base Interface
- Subclasses of `PlaywrightSearchSpider`.
- Must export standard search capabilities yielding valid `BookListing` instances.
- `BookListing`: clean numerical `price` (float string) and extracted `price_currency` string.

## Code Layout
- Spiders: `src/<spider_name>.py`
- Base classes & models: `src/html_search_spider.py`, `src/playwright_search_spider.py`
