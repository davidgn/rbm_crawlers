.class public final LS1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU1/b;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    new-instance v0, LS1/q;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LS1/q;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method
