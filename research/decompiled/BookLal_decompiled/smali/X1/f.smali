.class public final LX1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU1/b;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 16

    new-instance v0, Ld3/a;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ld3/a;-><init>(I)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, LP1/c;->a:LP1/c;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    const-string v9, "Null flags"

    if-eqz v8, :cond_4

    new-instance v10, LY1/c;

    const-wide/16 v4, 0x7530

    const-wide/32 v6, 0x5265c00

    move-object v3, v10

    invoke-direct/range {v3 .. v8}, LY1/c;-><init>(JJLjava/util/Set;)V

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LP1/c;->c:LP1/c;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_3

    new-instance v10, LY1/c;

    const-wide/16 v4, 0x3e8

    const-wide/32 v6, 0x5265c00

    move-object v3, v10

    invoke-direct/range {v3 .. v8}, LY1/c;-><init>(JJLjava/util/Set;)V

    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, LP1/c;->b:LP1/c;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v3, LY1/e;->b:LY1/e;

    filled-new-array {v3}, [LY1/e;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v15

    if-eqz v15, :cond_1

    new-instance v3, LY1/c;

    const-wide/32 v11, 0x5265c00

    const-wide/32 v13, 0x5265c00

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, LY1/c;-><init>(JJLjava/util/Set;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {}, LP1/c;->values()[LP1/c;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v2, LY1/b;

    invoke-direct {v2, v0, v1}, LY1/b;-><init>(Lb2/a;Ljava/util/HashMap;)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not all priorities have been configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
