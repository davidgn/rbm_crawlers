from pydantic import BaseModel, Field
from typing import Optional
from datetime import datetime

class BookListing(BaseModel):
    territory: str = Field(description="The country or region of the marketplace.")
    platform: str = Field(description="The name of the marketplace (e.g., 'Kitabain').")
    seller_id: Optional[str] = Field(None, description="The vendor or seller identifier.")
    title: str = Field(description="The title of the book.")
    author: Optional[str] = Field(None, description="The author of the book.")
    condition: Optional[str] = Field(None, description="The physical condition of the book.")
    price: Optional[str] = Field(None, description="The price of the book (with currency).")
    listing_url: str = Field(description="The canonical URL of the listing.")
    timestamp: datetime = Field(default_factory=datetime.utcnow, description="Time of extraction.")
    seller_comments: Optional[str] = Field(None, description="Additional notes from the seller.")
    
    def to_dict(self):
        return self.model_dump(mode='json')
