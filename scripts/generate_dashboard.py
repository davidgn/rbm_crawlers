import sqlite3
from pathlib import Path
from datetime import datetime

def generate_dashboard():
    db_path = Path("/home/davidgn/active_repos/rbm_crawlers/src/data/regional_book_marketplaces.db")
    if not db_path.exists():
        print("Database not found.")
        return

    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    # Get stats
    cursor.execute("SELECT COUNT(*) FROM listings")
    total_items = cursor.fetchone()[0]

    cursor.execute("SELECT territory, COUNT(*), ROUND(AVG(price_usd), 2) FROM listings WHERE price_usd > 0 GROUP BY territory ORDER BY COUNT(*) DESC")
    territory_stats = cursor.fetchall()

    cursor.execute("SELECT platform, COUNT(*), ROUND(AVG(price_usd), 2) FROM listings WHERE price_usd > 0 GROUP BY platform ORDER BY COUNT(*) DESC")
    platform_stats = cursor.fetchall()

    cursor.execute("SELECT title, author, price_usd, platform, territory, listing_url FROM listings ORDER BY id DESC LIMIT 100")
    latest_items = cursor.fetchall()

    conn.close()

    html = f"""
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Regional Book Marketplace Dashboard</title>
        <style>
            body {{ font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif; line-height: 1.6; color: #333; max-width: 1200px; margin: 0 auto; padding: 20px; background: #f4f7f6; }}
            h1, h2 {{ color: #2c3e50; border-bottom: 2px solid #3498db; padding-bottom: 10px; }}
            .stats-container {{ display: flex; gap: 20px; flex-wrap: wrap; margin-bottom: 30px; }}
            .stat-card {{ background: white; padding: 20px; border-radius: 8px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); flex: 1; min-width: 250px; }}
            .stat-card h3 {{ margin-top: 0; color: #7f8c8d; font-size: 0.9em; text-transform: uppercase; }}
            .stat-card .value {{ font-size: 2em; font-weight: bold; color: #2980b9; }}
            table {{ width: 100%; border-collapse: collapse; background: white; border-radius: 8px; overflow: hidden; box-shadow: 0 2px 4px rgba(0,0,0,0.1); margin-bottom: 30px; }}
            th, td {{ padding: 12px 15px; text-align: left; border-bottom: 1px solid #eee; }}
            th {{ background-color: #3498db; color: white; }}
            tr:hover {{ background-color: #f1f9ff; }}
            .price {{ font-weight: bold; color: #27ae60; }}
            a {{ color: #3498db; text-decoration: none; }}
            a:hover {{ text-decoration: underline; }}
            .tag {{ padding: 2px 8px; border-radius: 12px; font-size: 0.8em; background: #e0e0e0; }}
        </style>
    </head>
    <body>
        <h1>Regional Book Marketplace (RBM) Intelligence</h1>
        <p>Last Updated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}</p>

        <div class="stats-container">
            <div class="stat-card">
                <h3>Total Unique Records</h3>
                <div class="value">{total_items:,}</div>
            </div>
            <div class="stat-card">
                <h3>Active Territories</h3>
                <div class="value">{len(territory_stats)}</div>
            </div>
            <div class="stat-card">
                <h3>Regional Platforms</h3>
                <div class="value">{len(platform_stats)}</div>
            </div>
        </div>

        <h2>Territory Distribution</h2>
        <table>
            <thead>
                <tr>
                    <th>Territory</th>
                    <th>Count</th>
                    <th>Avg Price (USD)</th>
                </tr>
            </thead>
            <tbody>
                {"".join([f"<tr><td>{t}</td><td>{c:,}</td><td class='price'>${p}</td></tr>" for t, c, p in territory_stats])}
            </tbody>
        </table>

        <h2>Latest 100 Acquisitions</h2>
        <table>
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Platform</th>
                    <th>Territory</th>
                    <th>Price (USD)</th>
                </tr>
            </thead>
            <tbody>
                {"".join([f"<tr><td><a href='{url}' target='_blank'>{title[:60]}...</a></td><td><span class='tag'>{pform}</span></td><td>{terr}</td><td class='price'>${p if p else 'N/A'}</td></tr>" for title, author, p, pform, terr, url in latest_items])}
            </tbody>
        </table>
    </body>
    </html>
    """

    output_path = Path("/home/davidgn/active_repos/rbm_crawlers/src/data/rbm_dashboard.html")
    output_path.write_text(html, encoding="utf-8")
    print(f"Dashboard generated at {output_path}")

if __name__ == "__main__":
    generate_dashboard()
