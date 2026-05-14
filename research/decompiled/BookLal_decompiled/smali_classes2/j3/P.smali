.class public abstract Lj3/P;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public final a()Lj3/y;
    .locals 4

    invoke-virtual {p0}, Lj3/P;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v1, "%s does not have exactly one group"

    invoke-static {v3, v1, v0}, LZ2/l;->n(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj3/y;

    return-object v0
.end method

.method public abstract b()Ljava/util/List;
.end method

.method public abstract c()Lj3/b;
.end method

.method public abstract d()Ljava/lang/Object;
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g(Lj3/Q;)V
.end method

.method public abstract h(Ljava/util/List;)V
.end method
