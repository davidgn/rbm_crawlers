.class public abstract Lj3/T;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()I
.end method

.method public abstract c()Z
.end method

.method public abstract d(Lj3/i;)Lj3/S;
.end method

.method public abstract e(Ljava/util/Map;)Lj3/i0;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "policy"

    invoke-virtual {p0}, Lj3/T;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lj3/T;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, LE4/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "available"

    invoke-virtual {p0}, Lj3/T;->c()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, LE4/d;->e(Ljava/lang/String;Z)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
