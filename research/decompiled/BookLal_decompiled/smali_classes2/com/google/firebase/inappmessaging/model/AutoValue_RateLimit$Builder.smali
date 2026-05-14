.class final Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;
.super Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private limit:Ljava/lang/Long;

.field private limiterKey:Ljava/lang/String;

.field private timeToLiveMillis:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/inappmessaging/model/RateLimit;
    .locals 9

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->limiterKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " limiterKey"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->limit:Ljava/lang/Long;

    if-nez v1, :cond_1

    const-string v1, " limit"

    invoke-static {v0, v1}, LC/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->timeToLiveMillis:Ljava/lang/Long;

    if-nez v1, :cond_2

    const-string v1, " timeToLiveMillis"

    invoke-static {v0, v1}, LC/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->limiterKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->limit:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->timeToLiveMillis:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit;-><init>(Ljava/lang/String;JJLcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$1;)V

    return-object v0

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setLimit(J)Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->limit:Ljava/lang/Long;

    return-object p0
.end method

.method public setLimiterKey(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->limiterKey:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null limiterKey"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTimeToLiveMillis(J)Lcom/google/firebase/inappmessaging/model/RateLimit$Builder;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/AutoValue_RateLimit$Builder;->timeToLiveMillis:Ljava/lang/Long;

    return-object p0
.end method
