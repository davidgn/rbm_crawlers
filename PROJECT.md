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


## Interface Contracts
### Spider Base Interface
- Subclasses of `PlaywrightSearchSpider`.
- Must export standard search capabilities yielding valid `BookListing` instances.
- `BookListing`: clean numerical `price` (float string) and extracted `price_currency` string.

## Code Layout
- Spiders: `src/<spider_name>.py`
- Base classes & models: `src/html_search_spider.py`, `src/playwright_search_spider.py`
