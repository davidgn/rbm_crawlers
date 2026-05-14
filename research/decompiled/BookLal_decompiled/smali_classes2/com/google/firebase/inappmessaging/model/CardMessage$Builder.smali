.class public Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/model/CardMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field backgroundHexColor:Ljava/lang/String;

.field body:Lcom/google/firebase/inappmessaging/model/Text;

.field landscapeImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

.field portraitImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

.field primaryAction:Lcom/google/firebase/inappmessaging/model/Action;

.field secondaryAction:Lcom/google/firebase/inappmessaging/model/Action;

.field title:Lcom/google/firebase/inappmessaging/model/Text;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Ljava/util/Map;)Lcom/google/firebase/inappmessaging/model/CardMessage;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/CampaignMetadata;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/model/CardMessage;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->primaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/Action;->getButton()Lcom/google/firebase/inappmessaging/model/Button;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->secondaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/Action;->getButton()Lcom/google/firebase/inappmessaging/model/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Card model secondary action must be null or have a button"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->title:Lcom/google/firebase/inappmessaging/model/Text;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->portraitImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->landscapeImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Card model must have at least one image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->backgroundHexColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/firebase/inappmessaging/model/CardMessage;

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->title:Lcom/google/firebase/inappmessaging/model/Text;

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->body:Lcom/google/firebase/inappmessaging/model/Text;

    iget-object v5, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->portraitImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    iget-object v6, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->landscapeImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    iget-object v7, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->backgroundHexColor:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->primaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    iget-object v9, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->secondaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    const/4 v11, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v10, p2

    invoke-direct/range {v1 .. v11}, Lcom/google/firebase/inappmessaging/model/CardMessage;-><init>(Lcom/google/firebase/inappmessaging/model/CampaignMetadata;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/Text;Lcom/google/firebase/inappmessaging/model/ImageData;Lcom/google/firebase/inappmessaging/model/ImageData;Ljava/lang/String;Lcom/google/firebase/inappmessaging/model/Action;Lcom/google/firebase/inappmessaging/model/Action;Ljava/util/Map;Lcom/google/firebase/inappmessaging/model/CardMessage$1;)V

    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Card model must have a background color"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Card model must have a title"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Card model must have a primary action button"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Card model must have a primary action"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBackgroundHexColor(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->backgroundHexColor:Ljava/lang/String;

    return-object p0
.end method

.method public setBody(Lcom/google/firebase/inappmessaging/model/Text;)Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->body:Lcom/google/firebase/inappmessaging/model/Text;

    return-object p0
.end method

.method public setLandscapeImageData(Lcom/google/firebase/inappmessaging/model/ImageData;)Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->landscapeImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    return-object p0
.end method

.method public setPortraitImageData(Lcom/google/firebase/inappmessaging/model/ImageData;)Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->portraitImageData:Lcom/google/firebase/inappmessaging/model/ImageData;

    return-object p0
.end method

.method public setPrimaryAction(Lcom/google/firebase/inappmessaging/model/Action;)Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->primaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    return-object p0
.end method

.method public setSecondaryAction(Lcom/google/firebase/inappmessaging/model/Action;)Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->secondaryAction:Lcom/google/firebase/inappmessaging/model/Action;

    return-object p0
.end method

.method public setTitle(Lcom/google/firebase/inappmessaging/model/Text;)Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/CardMessage$Builder;->title:Lcom/google/firebase/inappmessaging/model/Text;

    return-object p0
.end method
