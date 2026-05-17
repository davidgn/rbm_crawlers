import time
import logging
from appium import webdriver
from appium.webdriver.common.appiumby import AppiumBy
from appium.options.android import UiAutomator2Options

logging.basicConfig(level=logging.INFO, format='%(asctime)s [%(levelname)s] %(message)s')
logger = logging.getLogger(__name__)

class BookChorAppiumSpider:
    def __init__(self, apk_path: str):
        self.apk_path = apk_path
        self.options = UiAutomator2Options()
        self.options.platform_name = 'Android'
        self.options.automation_name = 'UiAutomator2'
        self.options.device_name = 'test_avd'
        self.options.app = self.apk_path
        self.options.app_package = 'booksfortune.bookchor'
        self.options.app_activity = 'com.bookchor.MainActivity' # Adjust if different
        self.options.no_reset = False
        self.driver = None

    def run(self, search_query="Harry Potter"):
        logger.info("Initializing Appium driver...")
        try:
            self.driver = webdriver.Remote('http://127.0.0.1:4723', options=self.options)
            logger.info("App launched successfully.")
            
            # Wait for app to load and dismiss any tutorials/popups
            time.sleep(5)
            
            # Find and click the search bar
            logger.info(f"Searching for '{search_query}'...")
            search_icon = self.driver.find_element(AppiumBy.ID, "booksfortune.bookchor:id/action_search")
            search_icon.click()
            time.sleep(1)
            
            search_input = self.driver.find_element(AppiumBy.ID, "booksfortune.bookchor:id/search_src_text")
            search_input.send_keys(search_query)
            
            # Press enter/search on keyboard
            self.driver.press_keycode(66) # KEYCODE_ENTER
            time.sleep(5) # Wait for results
            
            # Extract results
            results = self.driver.find_elements(AppiumBy.ID, "booksfortune.bookchor:id/book_title")
            prices = self.driver.find_elements(AppiumBy.ID, "booksfortune.bookchor:id/book_price")
            
            logger.info(f"Found {len(results)} items on first page.")
            for i in range(len(results)):
                title = results[i].text
                price = prices[i].text if i < len(prices) else "N/A"
                logger.info(f"Scraped -> Title: {title} | Price: {price}")
                
        except Exception as e:
            logger.error(f"Appium automation failed: {e}")
        finally:
            if self.driver:
                self.driver.quit()
                logger.info("Driver quit.")

if __name__ == "__main__":
    # Assumes Appium server is running on localhost:4723 and an AVD is active
    spider = BookChorAppiumSpider(apk_path="/home/davidgn/bookchor.apk")
    spider.run()
