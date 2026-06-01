from pydantic import BaseModel, Field
from typing import Optional
from datetime import datetime, timezone

class BookListing(BaseModel):
    territory: str = Field(description="The country or region of the marketplace.")
    platform: str = Field(description="The name of the marketplace (e.g., 'Kitabain').")
    seller_id: Optional[str] = Field(None, description="The vendor or seller identifier.")
    title: str = Field(description="The title of the book.")
    author: Optional[str] = Field(None, description="The author of the book.")
    isbn: Optional[str] = Field(None, description="The ISBN or barcode of the book.")
    publisher: Optional[str] = Field(None, description="The publisher of the book.")
    publication_year: Optional[str] = Field(None, description="The year the book was published.")
    edition: Optional[str] = Field(None, description="The edition of the book.")
    language: Optional[str] = Field(None, description="The language of the book.")
    pages: Optional[str] = Field(None, description="The number of pages in the book.")
    binding: Optional[str] = Field(None, description="The binding type (e.g., 'Hardcover', 'Paperback').")
    dimensions: Optional[str] = Field(None, description="The physical dimensions of the book.")
    category: Optional[str] = Field(None, description="The category or genre of the book.")
    condition: Optional[str] = Field(None, description="The physical condition of the book.")
    price: Optional[str] = Field(None, description="The price of the book (with currency).")
    qid: Optional[str] = Field(None, description="The Wikidata QID of the publisher or entity.")
    listing_url: str = Field(description="The canonical URL of the listing.")
    timestamp: datetime = Field(default_factory=lambda: datetime.now(timezone.utc), description="Time of extraction.")
    seller_comments: Optional[str] = Field(None, description="Additional notes from the seller.")
    
    def to_dict(self):
        return self.model_dump(mode='json')
