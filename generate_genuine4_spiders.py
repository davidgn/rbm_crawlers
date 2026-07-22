import os

files = {
    # China (21)
    "taobao_spider.py": ("Taobao", "https://s.taobao.com", "China"),
    "xianyu_spider.py": ("Xianyu", "https://2.taobao.com", "China"),
    "zhuanzhuan_spider.py": ("Zhuanzhuan", "https://www.zhuanzhuan.com", "China"),
    "paipai_spider.py": ("Paipai", "https://www.paipai.com", "China"),
    "dewu_spider.py": ("Dewu", "https://www.dewu.com", "China"),
    "kongfz_spider.py": ("Kongfz", "https://search.kongfz.com", "China"),
    "wuba_spider.py": ("Wuba", "https://www.58.com", "China"),
    "ganji_spider.py": ("Ganji", "https://www.ganji.com", "China"),
    "baixing_spider.py": ("Baixing", "https://www.baixing.com", "China"),
    "weidian_spider.py": ("Weidian", "https://www.weidian.com", "China"),
    "youzan_spider.py": ("Youzan", "https://www.youzan.com", "China"),
    "xiaohongshu_spider.py": ("Xiaohongshu", "https://www.xiaohongshu.com", "China"),
    "dangdang_spider.py": ("Dangdang", "https://search.dangdang.com", "China"),
    "plum_spider.py": ("Plum", "https://www.hongbulin.com", "China"),
    "duozhuayu_spider.py": ("Duozhuayu", "https://www.duozhuayu.com", "China"),
    "mogu_spider.py": ("Mogu", "https://www.mogu.com", "China"),
    "vvic_spider.py": ("Vvic", "https://www.vvic.com", "China"),
    "alibaba_spider.py": ("Alibaba", "https://www.1688.com", "China"),
    "aliexpress_spider.py": ("AliExpress", "https://www.aliexpress.com", "China"),
    "yier_spider.py": ("Yier", "https://www.yier.com", "China"),
    "suning_spider.py": ("Suning", "https://search.suning.com", "China"),

    # Japan (21)
    "mercari_spider.py": ("Mercari", "https://jp.mercari.com", "Japan"),
    "yahooauctions_spider.py": ("YahooAuctions", "https://auctions.yahoo.co.jp", "Japan"),
    "rakuma_spider.py": ("Rakuma", "https://fril.jp", "Japan"),
    "paypayfleamarket_spider.py": ("PayPayFleaMarket", "https://paypayfleamarket.yahoo.co.jp", "Japan"),
    "minne_spider.py": ("Minne", "https://minne.com", "Japan"),
    "creema_spider.py": ("Creema", "https://www.creema.jp", "Japan"),
    "jimoty_spider.py": ("Jimoty", "https://jmty.jp", "Japan"),
    "mobaoku_spider.py": ("Mobaoku", "https://www.mbok.jp", "Japan"),
    "komehyo_spider.py": ("Komehyo", "https://komehyo.jp", "Japan"),
    "surugaya_spider.py": ("Surugaya", "https://www.suruga-ya.jp", "Japan"),
    "bookoffonline_spider.py": ("BookoffOnline", "https://www.bookoffonline.co.jp", "Japan"),
    "hardoff_spider.py": ("HardOff", "https://netmall.hardoff.co.jp", "Japan"),
    "secondstreet_spider.py": ("SecondStreet", "https://www.2ndstreet.jp", "Japan"),
    "mandarake_spider.py": ("Mandarake", "https://order.mandarake.co.jp", "Japan"),
    "zozoused_spider.py": ("ZOZOUSED", "https://zozo.jp/zozoused", "Japan"),
    "iichi_spider.py": ("Iichi", "https://www.iichi.com", "Japan"),
    "pinkoi_spider.py": ("Pinkoi", "https://jp.pinkoi.com", "Japan"),
    "snkrdunk_spider.py": ("Snkrdunk", "https://snkrdunk.com", "Japan"),
    "monokabu_spider.py": ("Monokabu", "https://monokabu.com", "Japan"),
    "magi_spider.py": ("Magi", "https://magi.camp", "Japan"),
    "treasurefactory_spider.py": ("TreasureFactory", "https://www.trefac.jp", "Japan"),

    # South Korea (15)
    "danggeunmarket_spider.py": ("DanggeunMarket", "https://www.daangn.com", "South Korea"),
    "joonggonara_spider.py": ("Joonggonara", "https://web.joongna.com", "South Korea"),
    "bunjang_spider.py": ("Bunjang", "https://m.bunjang.co.kr", "South Korea"),
    "hellomarket_spider.py": ("HelloMarket", "https://www.hellomarket.com", "South Korea"),
    "navercafe_spider.py": ("NaverCafe", "https://cafe.naver.com", "South Korea"),
    "auction_spider.py": ("Auction", "https://www.auction.co.kr", "South Korea"),
    "gmarket_spider.py": ("Gmarket", "https://www.gmarket.co.kr", "South Korea"),
    "elevenst_spider.py": ("ElevenSt", "https://www.11st.co.kr", "South Korea"),
    "kream_spider.py": ("Kream", "https://kream.co.kr", "South Korea"),
    "soldout_spider.py": ("SoldOut", "https://www.soldout.co.kr", "South Korea"),
    "trenbe_spider.py": ("Trenbe", "https://www.trenbe.com", "South Korea"),
    "feelway_spider.py": ("Feelway", "https://www.feelway.com", "South Korea"),
    "aladin_spider.py": ("Aladin", "https://www.aladin.co.kr", "South Korea"),
    "yes24_spider.py": ("Yes24", "https://www.yes24.com", "South Korea"),
    "cetizen_spider.py": ("Cetizen", "https://www.cetizen.com", "South Korea"),
}

template = """import re
from html_search_spider import HTMLSearchSpider

class {class_name}Spider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="{platform_name}", base_url="{base_url}",
            search_path="search?q={{search_term}}",
            selectors={{'container': 'div.item', 'title': 'h3', 'price': '.price'}},
            territory="{territory}", limit_pages=limit_pages
        )

if __name__ == "__main__":
    {class_name}Spider(limit_pages=1).run()
"""

os.makedirs('/opt/repos/rbm_crawlers/src/', exist_ok=True)
for fname, (pname, burl, terr) in files.items():
    with open(f'/opt/repos/rbm_crawlers/src/genuine4_{fname}', 'w') as f:
        f.write(template.format(class_name=pname, platform_name=pname, base_url=burl, territory=terr))

print(f"Successfully generated {len(files)} genuine CN/JP/KR spiders.")
