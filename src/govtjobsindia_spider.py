from woocommerce_spider import WooCommerceAPISpider

class GovtJobsIndiaSpider(WooCommerceAPISpider):
    def __init__(self, limit_pages=50):
        super().__init__(
            platform_name="GovtJobsIndia",
            base_url="https://govtjobsindia.net",
            limit_pages=limit_pages
        )

if __name__ == "__main__":
    spider = GovtJobsIndiaSpider(limit_pages=2)
    spider.run()
