import undetected_chromedriver as uc
import time
import sys

def fetch_dom(url, output_file):
    options = uc.ChromeOptions()
    options.headless = True
    
    # Try to reduce image loading
    options.add_argument('--blink-settings=imagesEnabled=false')
    
    print(f"Starting uc for {url}...")
    driver = uc.Chrome(options=options, version_main=149)
    driver.set_page_load_timeout(30)
    
    try:
        driver.get(url)
        # Give it time to execute JS/Captcha redirects
        time.sleep(5)
        content = driver.page_source
        
        with open(output_file, "w") as f:
            f.write(content)
        print(f"Saved {len(content)} bytes to {output_file}")
    except Exception as e:
        print(f"Failed: {e}")
    finally:
        driver.quit()

if __name__ == "__main__":
    fetch_dom(sys.argv[1], sys.argv[2])
