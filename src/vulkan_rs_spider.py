from html_search_spider import HTMLSearchSpider

class VulkanRsSpider(HTMLSearchSpider):
    def __init__(self, limit_pages: int = 50):
        super().__init__(
            platform_name="Vulkan_RS", base_url="https://www.knjizare-vulkan.rs",
            search_path="proizvodi?search={search_term}",
            selectors={
                'container': 'a.nb-link:has(.nb-product-name)',
                'title': '.nb-product-name',
                'price': '.nb-price-value'
            },
            price_currency="RSD",
            territory="Serbia", limit_pages=limit_pages
        )

if __name__ == "__main__":
    import os
    os.environ["RBM_SEARCH_TERM"] = "test"
    VulkanRsSpider(limit_pages=1).run()
