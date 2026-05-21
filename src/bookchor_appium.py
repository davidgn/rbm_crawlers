import time
import logging
from appium import webdriver
from appium.webdriver.common.appiumby import AppiumBy
from appium.options.android import UiAutomator2Options

logging.basicConfig(level=logging.INFO, format='%(asctime)s [%(levelname)s] %(message)s')
logger = logging.getLogger(__name__)

class BookChorAppiumSpider:
    def __init__(self, search_query="Harry Potter"):
        self.username = "davidnye_TwjsmA"
        self.access_key = "YfPzTnzsNAK8XiPUwguz"
        self.app_url = "bs://fa0f487aab29be15e1ad9de1e141e2c8db257b94"
        
        self.options = UiAutomator2Options()
        self.options.platform_name = 'android'
        self.options.device_name = 'Samsung Galaxy S8'
        self.options.platform_version = '7.0'
        self.options.set_capability('app', self.app_url)
        self.options.set_capability('project', 'RBM India Fleet')
        self.options.set_capability('build', 'BookChor Cloud Scrape')
        self.options.set_capability('name', f'Search: {search_query}')
        
        self.hub_url = f'http://{self.username}:{self.access_key}@hub-cloud.browserstack.com/wd/hub'
        self.driver = None

    def run(self, search_query="Harry Potter"):
        logger.info(f"Connecting to BrowserStack Hub for '{search_query}'...")
        try:
            self.driver = webdriver.Remote(self.hub_url, options=self.options)
            logger.info("Session started on BrowserStack.")
            
            # The app is Flutter, so standard Android IDs might not work well.
            # We'll try common Flutter accessibility labels or generic XPath first.
            time.sleep(10) # Heavy wait for Flutter engine to warm up
            
            # 1. Try to find search bar (BookChor specific)
            # In Flutter, we often have to find by description/text if IDs aren't exposed
            logger.info("Looking for search input...")
            
            # This is a guestimating implementation based on common Flutter patterns
            # Real production usage would require using Appium's Flutter Driver
            # or inspecting the app with BrowserStack's UI Inspector.
            try:
                # Common pattern: a magnifying glass icon
                search_btn = self.driver.find_element(AppiumBy.ACCESSIBILITY_ID, "Search")
                search_btn.click()
                time.sleep(2)
            except:
                logger.warning("Accessibility ID 'Search' not found, trying generic search interaction.")

            # Fallback to coordinate-based or key-event if UI mapping fails
            # For this deep-drill, let's try to grab the page source to see what's visible
            source = self.driver.page_source
            with open("bookchor_app_source.xml", "w") as f:
                f.write(source)
            logger.info("Dumped app UI source to bookchor_app_source.xml")
            
        except Exception as e:
            logger.error(f"BrowserStack automation failed: {e}")
        finally:
            if self.driver:
                self.driver.quit()
                logger.info("Session closed.")


if __name__ == "__main__":
    # Runs the spider on BrowserStack App Automate
    spider = BookChorAppiumSpider()
    spider.run()
