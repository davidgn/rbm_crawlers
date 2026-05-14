.class public Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_IMPRESSIONS:LZ2/d;


# instance fields
.field private cachedImpressionsMaybe:Lz3/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz3/h;"
        }
    .end annotation
.end field

.field private final storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, LZ2/d;->h()LZ2/d;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->EMPTY_IMPRESSIONS:LZ2/d;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;)V
    .locals 1
    .param p1    # Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;
        .annotation runtime Lcom/google/firebase/inappmessaging/internal/injection/qualifiers/ImpressionStore;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LL3/e;->a:LL3/e;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->cachedImpressionsMaybe:Lz3/h;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;LZ2/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->initInMemCache(LZ2/d;)V

    return-void
.end method

.method private static appendImpression(LZ2/d;LZ2/b;)LZ2/d;
    .locals 0

    invoke-static {p0}, LZ2/d;->j(LZ2/d;)LZ2/c;

    move-result-object p0

    invoke-virtual {p0, p1}, LZ2/c;->c(LZ2/b;)V

    invoke-virtual {p0}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, LZ2/d;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Ljava/util/HashSet;LZ2/d;)Lz3/c;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->lambda$clearImpressions$4(Ljava/util/HashSet;LZ2/d;)Lz3/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->lambda$getAllImpressions$2(Ljava/lang/Throwable;)V

    return-void
.end method

.method private clearInMemCache()V
    .locals 1

    sget-object v0, LL3/e;->a:LL3/e;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->cachedImpressionsMaybe:Lz3/h;

    return-void
.end method

.method public static synthetic d(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;LZ2/b;LZ2/d;)Lz3/c;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->lambda$storeImpression$1(LZ2/b;LZ2/d;)Lz3/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;LZ2/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->lambda$storeImpression$0(LZ2/d;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;LZ2/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->lambda$clearImpressions$3(LZ2/d;)V

    return-void
.end method

.method private initInMemCache(LZ2/d;)V
    .locals 0

    invoke-static {p1}, Lz3/h;->a(Ljava/lang/Object;)LL3/o;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->cachedImpressionsMaybe:Lz3/h;

    return-void
.end method

.method private synthetic lambda$clearImpressions$3(LZ2/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->initInMemCache(LZ2/d;)V

    return-void
.end method

.method private synthetic lambda$clearImpressions$4(Ljava/util/HashSet;LZ2/d;)Lz3/c;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Existing impressions: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/protobuf/K;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    invoke-static {}, LZ2/d;->i()LZ2/c;

    move-result-object v0

    invoke-virtual {p2}, LZ2/d;->g()Lcom/google/protobuf/Y;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZ2/b;

    invoke-virtual {v1}, LZ2/b;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, LZ2/c;->c(LZ2/b;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p1

    check-cast p1, LZ2/d;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "New cleared impression list: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/protobuf/K;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    invoke-virtual {p2, p1}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->write(Lcom/google/protobuf/c;)Lz3/a;

    move-result-object p2

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/inappmessaging/internal/h;-><init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;LZ2/d;I)V

    invoke-virtual {p2, v0}, Lz3/a;->c(LE3/a;)LJ3/e;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$getAllImpressions$2(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->clearInMemCache()V

    return-void
.end method

.method private synthetic lambda$storeImpression$0(LZ2/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->initInMemCache(LZ2/d;)V

    return-void
.end method

.method private synthetic lambda$storeImpression$1(LZ2/b;LZ2/d;)Lz3/c;
    .locals 2

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->appendImpression(LZ2/d;LZ2/b;)LZ2/d;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    invoke-virtual {p2, p1}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->write(Lcom/google/protobuf/c;)Lz3/a;

    move-result-object p2

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/inappmessaging/internal/h;-><init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;LZ2/d;I)V

    invoke-virtual {p2, v0}, Lz3/a;->c(LE3/a;)LJ3/e;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clearImpressions(LZ2/j;)Lz3/a;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, LZ2/j;->i()Lcom/google/protobuf/Y;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY2/e;

    invoke-virtual {v1}, LY2/e;->i()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ls/e;->a(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, LY2/e;->l()LY2/f;

    move-result-object v1

    invoke-virtual {v1}, LY2/f;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, LY2/e;->g()LY2/b;

    move-result-object v1

    invoke-virtual {v1}, LY2/b;->getCampaignId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Potential impressions to clear: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/Logging;->logd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->getAllImpressions()Lz3/h;

    move-result-object p1

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->EMPTY_IMPRESSIONS:LZ2/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "item is null"

    invoke-static {v1, v2}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lz3/h;->a(Ljava/lang/Object;)LL3/o;

    move-result-object v1

    new-instance v2, LL3/g;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v1, v3}, LL3/g;-><init>(Lz3/h;Ljava/lang/Object;I)V

    new-instance p1, Lcom/google/firebase/inappmessaging/internal/a;

    const/4 v1, 0x5

    invoke-direct {p1, v1, p0, v0}, Lcom/google/firebase/inappmessaging/internal/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LJ3/f;

    const/4 v1, 0x1

    invoke-direct {v0, v2, p1, v1}, LJ3/f;-><init>(Ljava/lang/Object;LE3/c;I)V

    return-object v0
.end method

.method public getAllImpressions()Lz3/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz3/h;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->cachedImpressionsMaybe:Lz3/h;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->storageClient:Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;

    invoke-static {}, LZ2/d;->parser()Lcom/google/protobuf/B0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/internal/ProtoStorageClient;->read(Lcom/google/protobuf/B0;)Lz3/h;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/inappmessaging/internal/i;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/firebase/inappmessaging/internal/i;-><init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LL3/r;

    sget-object v4, LG3/d;->d:Lz2/e;

    invoke-direct {v3, v1, v2, v4}, LL3/r;-><init>(Lz3/h;LE3/b;LE3/b;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LL3/g;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v3, v2}, LL3/g;-><init>(Lz3/h;Ljava/lang/Object;I)V

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/i;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/google/firebase/inappmessaging/internal/i;-><init>(Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;I)V

    new-instance v2, LL3/r;

    invoke-direct {v2, v1, v4, v0}, LL3/r;-><init>(Lz3/h;LE3/b;LE3/b;)V

    return-object v2
.end method

.method public isImpressed(LY2/e;)Lz3/q;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LY2/e;",
            ")",
            "Lz3/q;"
        }
    .end annotation

    invoke-virtual {p1}, LY2/e;->i()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ls/e;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LY2/e;->l()LY2/f;

    move-result-object p1

    invoke-virtual {p1}, LY2/f;->getCampaignId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LY2/e;->g()LY2/b;

    move-result-object p1

    invoke-virtual {p1}, LY2/b;->getCampaignId()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->getAllImpressions()Lz3/h;

    move-result-object v0

    new-instance v1, LD4/a;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, LD4/a;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LL3/j;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, LL3/j;-><init>(Lz3/h;LE3/c;I)V

    new-instance v0, LD4/a;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, LD4/a;-><init>(I)V

    instance-of v1, v2, LH3/b;

    if-eqz v1, :cond_1

    check-cast v2, LH3/b;

    invoke-interface {v2}, LH3/b;->a()Lz3/l;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, LL3/u;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LL3/u;-><init>(Ljava/lang/Object;I)V

    :goto_1
    sget v2, Lz3/d;->a:I

    const v3, 0x7fffffff

    const-string v4, "maxConcurrency"

    invoke-static {v3, v4}, LG3/d;->b(ILjava/lang/String;)V

    const-string v3, "bufferSize"

    invoke-static {v2, v3}, LG3/d;->b(ILjava/lang/String;)V

    instance-of v3, v1, LH3/f;

    if-eqz v3, :cond_3

    check-cast v1, LH3/f;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v0, LM3/e;->a:LM3/e;

    goto :goto_2

    :cond_2
    new-instance v2, LM3/p;

    invoke-direct {v2, v1, v0}, LM3/p;-><init>(Ljava/lang/Object;LD4/a;)V

    move-object v0, v2

    goto :goto_2

    :cond_3
    new-instance v3, LM3/i;

    invoke-direct {v3, v1, v0, v2}, LM3/i;-><init>(Lz3/l;LD4/a;I)V

    move-object v0, v3

    :goto_2
    new-instance v1, LD4/a;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, LD4/a;-><init>(I)V

    new-instance v2, LM3/c;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v1, v3}, LM3/c;-><init>(Lz3/l;Ljava/lang/Object;I)V

    const-string v0, "element is null"

    invoke-static {p1, v0}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LG3/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LG3/b;-><init>(Ljava/lang/String;I)V

    new-instance p1, LM3/d;

    invoke-direct {p1, v2, v0}, LM3/d;-><init>(LM3/c;LG3/b;)V

    return-object p1
.end method

.method public storeImpression(LZ2/b;)Lz3/a;
    .locals 4

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->getAllImpressions()Lz3/h;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/internal/ImpressionStorageClient;->EMPTY_IMPRESSIONS:LZ2/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "item is null"

    invoke-static {v1, v2}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lz3/h;->a(Ljava/lang/Object;)LL3/o;

    move-result-object v1

    new-instance v2, LL3/g;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3}, LL3/g;-><init>(Lz3/h;Ljava/lang/Object;I)V

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lcom/google/firebase/inappmessaging/internal/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, LJ3/f;

    const/4 v1, 0x1

    invoke-direct {p1, v2, v0, v1}, LJ3/f;-><init>(Ljava/lang/Object;LE3/c;I)V

    return-object p1
.end method
