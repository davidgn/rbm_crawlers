.class public abstract Lcom/google/protobuf/F;
.super Lcom/google/protobuf/b;
.source "SourceFile"


# instance fields
.field private final defaultInstance:Lcom/google/protobuf/K;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/K;"
        }
    .end annotation
.end field

.field protected instance:Lcom/google/protobuf/K;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/K;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/protobuf/K;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/F;->defaultInstance:Lcom/google/protobuf/K;

    invoke-virtual {p1}, Lcom/google/protobuf/K;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/K;->newMutableInstance()Lcom/google/protobuf/K;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final build()Lcom/google/protobuf/K;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/K;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/F;->buildPartial()Lcom/google/protobuf/K;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/K;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/b;->newUninitializedMessageException(Lcom/google/protobuf/t0;)Lcom/google/protobuf/U0;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/t0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/K;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/K;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->makeImmutable()V

    .line 5
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/t0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/F;->buildPartial()Lcom/google/protobuf/K;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/google/protobuf/F;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/F;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/F;->defaultInstance:Lcom/google/protobuf/K;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/F;->defaultInstance:Lcom/google/protobuf/K;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->newMutableInstance()Lcom/google/protobuf/K;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default instance must be immutable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/s0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/F;->clear()Lcom/google/protobuf/F;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/F;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/F;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/F;->getDefaultInstanceForType()Lcom/google/protobuf/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/K;->newBuilderForType()Lcom/google/protobuf/F;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/F;->buildPartial()Lcom/google/protobuf/K;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/F;->clone()Lcom/google/protobuf/F;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/s0;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/protobuf/F;->clone()Lcom/google/protobuf/F;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/F;->clone()Lcom/google/protobuf/F;

    move-result-object v0

    return-object v0
.end method

.method public final copyOnWrite()V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWriteInternal()V

    :cond_0
    return-void
.end method

.method public copyOnWriteInternal()V
    .locals 3

    iget-object v0, p0, Lcom/google/protobuf/F;->defaultInstance:Lcom/google/protobuf/K;

    invoke-virtual {v0}, Lcom/google/protobuf/K;->newMutableInstance()Lcom/google/protobuf/K;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    sget-object v2, Lcom/google/protobuf/D0;->c:Lcom/google/protobuf/D0;

    invoke-virtual {v2, v0}, Lcom/google/protobuf/D0;->b(Ljava/lang/Object;)Lcom/google/protobuf/J0;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/protobuf/J0;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    return-void
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/K;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/K;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/F;->defaultInstance:Lcom/google/protobuf/K;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/t0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/F;->getDefaultInstanceForType()Lcom/google/protobuf/K;

    move-result-object v0

    return-object v0
.end method

.method public internalMergeFrom(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/K;",
            ")",
            "Lcom/google/protobuf/F;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/F;->mergeFrom(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic internalMergeFrom(Lcom/google/protobuf/c;)Lcom/google/protobuf/b;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/protobuf/K;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/F;->internalMergeFrom(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/protobuf/K;->isInitialized(Lcom/google/protobuf/K;Z)Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/K;)Lcom/google/protobuf/F;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/K;",
            ")",
            "Lcom/google/protobuf/F;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/google/protobuf/F;->getDefaultInstanceForType()Lcom/google/protobuf/K;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/K;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 9
    iget-object v0, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    .line 10
    sget-object v1, Lcom/google/protobuf/D0;->c:Lcom/google/protobuf/D0;

    .line 11
    invoke-virtual {v1, v0}, Lcom/google/protobuf/D0;->b(Ljava/lang/Object;)Lcom/google/protobuf/J0;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/google/protobuf/J0;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/protobuf/F;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/r;",
            "Lcom/google/protobuf/y;",
            ")",
            "Lcom/google/protobuf/F;"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 20
    :try_start_0
    sget-object v0, Lcom/google/protobuf/D0;->c:Lcom/google/protobuf/D0;

    .line 21
    iget-object v1, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/D0;->b(Ljava/lang/Object;)Lcom/google/protobuf/J0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    .line 22
    iget-object v2, p1, Lcom/google/protobuf/r;->b:LS3/g;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance v2, LS3/g;

    invoke-direct {v2, p1}, LS3/g;-><init>(Lcom/google/protobuf/r;)V

    .line 24
    :goto_0
    invoke-interface {v0, v1, v2, p2}, Lcom/google/protobuf/J0;->c(Ljava/lang/Object;LS3/g;Lcom/google/protobuf/y;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 27
    :cond_1
    throw p1
.end method

.method public mergeFrom([BII)Lcom/google/protobuf/F;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/google/protobuf/F;"
        }
    .end annotation

    .line 18
    invoke-static {}, Lcom/google/protobuf/y;->a()Lcom/google/protobuf/y;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/protobuf/F;->mergeFrom([BIILcom/google/protobuf/y;)Lcom/google/protobuf/F;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom([BIILcom/google/protobuf/y;)Lcom/google/protobuf/F;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/protobuf/y;",
            ")",
            "Lcom/google/protobuf/F;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/google/protobuf/F;->copyOnWrite()V

    .line 13
    :try_start_0
    sget-object v0, Lcom/google/protobuf/D0;->c:Lcom/google/protobuf/D0;

    .line 14
    iget-object v1, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/D0;->b(Ljava/lang/Object;)Lcom/google/protobuf/J0;

    move-result-object v2

    iget-object v3, p0, Lcom/google/protobuf/F;->instance:Lcom/google/protobuf/K;

    add-int v6, p2, p3

    new-instance v7, LQ1/d;

    invoke-direct {v7, p4}, LQ1/d;-><init>(Lcom/google/protobuf/y;)V

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/protobuf/J0;->h(Ljava/lang/Object;[BIILQ1/d;)V
    :try_end_0
    .catch Lcom/google/protobuf/b0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 15
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 16
    :catch_2
    invoke-static {}, Lcom/google/protobuf/b0;->j()Lcom/google/protobuf/b0;

    move-result-object p1

    throw p1

    .line 17
    :goto_1
    throw p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/protobuf/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/F;->mergeFrom(Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/protobuf/F;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/F;->mergeFrom([BII)Lcom/google/protobuf/F;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/y;)Lcom/google/protobuf/b;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/F;->mergeFrom([BIILcom/google/protobuf/y;)Lcom/google/protobuf/F;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/protobuf/s0;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/F;->mergeFrom(Lcom/google/protobuf/r;Lcom/google/protobuf/y;)Lcom/google/protobuf/F;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/google/protobuf/s0;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/F;->mergeFrom([BII)Lcom/google/protobuf/F;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/google/protobuf/y;)Lcom/google/protobuf/s0;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/F;->mergeFrom([BIILcom/google/protobuf/y;)Lcom/google/protobuf/F;

    move-result-object p1

    return-object p1
.end method
