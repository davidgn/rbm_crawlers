import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SRC = ROOT / "src"
sys.path.insert(0, str(SRC))

from bookspie_spider import BooksPieSpider  # noqa: E402


def test_bookspie_cache_sanitizer_removes_contact_and_push_fields():
    spider = BooksPieSpider(max_pages=1, limit_items=1)
    try:
        sanitized = spider._sanitized_cache_copy(
            {
                "books": {
                    "data": [
                        {
                            "id": 17269,
                            "book_title": "Contemporary",
                            "user": {
                                "id": 35128,
                                "name": "Seller",
                                "email": "seller@example.test",
                                "phone_number": "9999999999",
                                "fcm_token": "push-token",
                                "self_referral": "ref",
                                "is_active": "active",
                                "created_at": "2026-05-28 17:43:02",
                                "updated_at": "2026-05-28 17:43:18",
                            },
                        }
                    ]
                }
            }
        )
    finally:
        spider.client.close()

    user = sanitized["books"]["data"][0]["user"]
    assert user == {
        "id": 35128,
        "name": "Seller",
        "is_active": "active",
        "created_at": "2026-05-28 17:43:02",
        "updated_at": "2026-05-28 17:43:18",
    }
