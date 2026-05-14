.class public Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final application:Landroid/app/Application;

.field private cachedResponse:LZ2/j;

.field private final clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

.field private final storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;


# direct methods
.method public constructor <init>(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;Landroid/app/Application;Lcom/google/firebase/inappmessaging/internal/time/Clock;)V
    .locals 0
    .param p1    # Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/CampaignCache;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    iput-object p2, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->application:Landroid/app/Application;

    iput-object p3, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;)LZ2/j;
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->lambda$get$1()LZ2/j;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;LZ2/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->lambda$get$2(LZ2/j;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;LZ2/j;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->isResponseValid(LZ2/j;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->lambda$get$3(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;LZ2/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->lambda$put$0(LZ2/j;)V

    return-void
.end method

.method private isResponseValid(LZ2/j;)Z
    .locals 9

    invoke-virtual {p1}, LZ2/j;->h()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->clock:Lcom/google/firebase/inappmessaging/internal/time/Clock;

    invoke-interface {p1}, Lcom/google/firebase/inappmessaging/internal/time/Clock;->now()J

    move-result-wide v2

    new-instance p1, Ljava/io/File;

    iget-object v4, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->application:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "fiam_eligible_campaigns_cache_file"

    invoke-direct {p1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    move v5, v6

    :cond_0
    return v5

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {p1, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    add-long/2addr v7, v0

    cmp-long p1, v2, v7

    if-gez p1, :cond_2

    move v5, v6

    :cond_2
    return v5

    :cond_3
    return v6
.end method

.method private synthetic lambda$get$1()LZ2/j;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->cachedResponse:LZ2/j;

    return-object v0
.end method

.method private synthetic lambda$get$2(LZ2/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->cachedResponse:LZ2/j;

    return-void
.end method

.method private synthetic lambda$get$3(Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->cachedResponse:LZ2/j;

    return-void
.end method

.method private synthetic lambda$put$0(LZ2/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->cachedResponse:LZ2/j;

    return-void
.end method


# virtual methods
.method public get()Lz3/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz3/h;"
        }
    .end annotation

    new-instance v0, LK0/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LK0/f;-><init>(Ljava/lang/Object;I)V

    new-instance v1, LL3/k;

    invoke-direct {v1, v0}, LL3/k;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    invoke-static {}, LZ2/j;->parser()Lcom/google/protobuf/B0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->read(Lcom/google/protobuf/B0;)Lz3/h;

    move-result-object v0

    new-instance v2, Lcom/google/firebase/inappmessaging/internal/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/firebase/inappmessaging/internal/b;-><init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LL3/r;

    sget-object v4, LG3/d;->d:Lz2/e;

    invoke-direct {v3, v0, v2, v4}, LL3/r;-><init>(Lz3/h;LE3/b;LE3/b;)V

    new-instance v0, LL3/g;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, LL3/g;-><init>(Lz3/h;Ljava/lang/Object;I)V

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/google/firebase/inappmessaging/internal/b;-><init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;I)V

    new-instance v2, LL3/g;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, LL3/g;-><init>(Lz3/h;Ljava/lang/Object;I)V

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/b;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/inappmessaging/internal/b;-><init>(Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;I)V

    new-instance v1, LL3/r;

    invoke-direct {v1, v2, v4, v0}, LL3/r;-><init>(Lz3/h;LE3/b;LE3/b;)V

    return-object v1
.end method

.method public put(LZ2/j;)Lz3/a;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/CampaignCacheClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->write(Lcom/google/protobuf/c;)Lz3/a;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/inappmessaging/internal/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/google/firebase/inappmessaging/internal/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lz3/a;->c(LE3/a;)LJ3/e;

    move-result-object p1

    return-object p1
.end method
