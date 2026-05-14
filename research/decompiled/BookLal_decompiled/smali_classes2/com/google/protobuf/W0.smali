.class public final Lcom/google/protobuf/W0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Lcom/google/protobuf/V0;
    .locals 2

    check-cast p0, Lcom/google/protobuf/K;

    iget-object v0, p0, Lcom/google/protobuf/K;->unknownFields:Lcom/google/protobuf/V0;

    sget-object v1, Lcom/google/protobuf/V0;->f:Lcom/google/protobuf/V0;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/protobuf/V0;

    invoke-direct {v0}, Lcom/google/protobuf/V0;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/K;->unknownFields:Lcom/google/protobuf/V0;

    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 1

    check-cast p0, Lcom/google/protobuf/K;

    iget-object p0, p0, Lcom/google/protobuf/K;->unknownFields:Lcom/google/protobuf/V0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/V0;->e:Z

    return-void
.end method

.method public static c(Ljava/lang/Object;LS3/g;)Z
    .locals 8

    iget v0, p1, LS3/g;->a:I

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    iget-object v5, p1, LS3/g;->d:Ljava/lang/Object;

    check-cast v5, Lcom/google/protobuf/r;

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    const/4 v6, 0x2

    if-eq v0, v6, :cond_6

    if-eq v0, v4, :cond_2

    const/4 v6, 0x4

    if-eq v0, v6, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v2}, LS3/g;->B(I)V

    invoke-virtual {v5}, Lcom/google/protobuf/r;->n()I

    move-result p1

    check-cast p0, Lcom/google/protobuf/V0;

    shl-int/lit8 v0, v1, 0x3

    or-int/2addr v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/V0;->f(ILjava/lang/Object;)V

    return v3

    :cond_0
    invoke-static {}, Lcom/google/protobuf/b0;->e()Lcom/google/protobuf/a0;

    move-result-object p0

    throw p0

    :cond_1
    return v2

    :cond_2
    new-instance v0, Lcom/google/protobuf/V0;

    invoke-direct {v0}, Lcom/google/protobuf/V0;-><init>()V

    shl-int/2addr v1, v4

    or-int/lit8 v5, v1, 0x4

    :cond_3
    invoke-virtual {p1}, LS3/g;->e()I

    move-result v6

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_4

    invoke-static {v0, p1}, Lcom/google/protobuf/W0;->c(Ljava/lang/Object;LS3/g;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_4
    iget p1, p1, LS3/g;->a:I

    if-ne v5, p1, :cond_5

    iput-boolean v2, v0, Lcom/google/protobuf/V0;->e:Z

    check-cast p0, Lcom/google/protobuf/V0;

    or-int/lit8 p1, v1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/V0;->f(ILjava/lang/Object;)V

    return v3

    :cond_5
    invoke-static {}, Lcom/google/protobuf/b0;->a()Lcom/google/protobuf/b0;

    move-result-object p0

    throw p0

    :cond_6
    invoke-virtual {p1}, LS3/g;->i()Lcom/google/protobuf/m;

    move-result-object p1

    check-cast p0, Lcom/google/protobuf/V0;

    shl-int/lit8 v0, v1, 0x3

    or-int/2addr v0, v6

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/V0;->f(ILjava/lang/Object;)V

    return v3

    :cond_7
    invoke-virtual {p1, v3}, LS3/g;->B(I)V

    invoke-virtual {v5}, Lcom/google/protobuf/r;->o()J

    move-result-wide v5

    check-cast p0, Lcom/google/protobuf/V0;

    shl-int/lit8 p1, v1, 0x3

    or-int/2addr p1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/V0;->f(ILjava/lang/Object;)V

    return v3

    :cond_8
    invoke-virtual {p1, v2}, LS3/g;->B(I)V

    invoke-virtual {v5}, Lcom/google/protobuf/r;->r()J

    move-result-wide v5

    check-cast p0, Lcom/google/protobuf/V0;

    shl-int/lit8 p1, v1, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/V0;->f(ILjava/lang/Object;)V

    return v3
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/protobuf/V0;

    check-cast p0, Lcom/google/protobuf/K;

    iput-object p1, p0, Lcom/google/protobuf/K;->unknownFields:Lcom/google/protobuf/V0;

    return-void
.end method
