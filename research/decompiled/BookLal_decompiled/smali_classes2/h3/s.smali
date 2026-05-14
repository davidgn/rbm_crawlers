.class public final Lh3/s;
.super Lh3/C;
.source "SourceFile"


# instance fields
.field public final a:LK0/j;

.field public final b:Lh3/D;


# direct methods
.method public constructor <init>(LK0/j;Lh3/D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/s;->a:LK0/j;

    iput-object p2, p0, Lh3/s;->b:Lh3/D;

    return-void
.end method


# virtual methods
.method public final b(Lh3/A;)Z
    .locals 1

    iget-object p1, p1, Lh3/A;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final e(Lh3/A;I)LC4/G;
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_0

    sget-object v4, LC4/i;->n:LC4/i;

    goto :goto_2

    :cond_0
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    and-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v3

    :goto_1
    new-instance v4, LC4/i;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v18}, LC4/i;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    new-instance v5, LC4/E;

    invoke-direct {v5}, LC4/E;-><init>()V

    move-object/from16 v6, p1

    iget-object v6, v6, Lh3/A;->a:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, LC4/E;->p(Ljava/lang/String;)V

    if-eqz v4, :cond_5

    invoke-virtual {v4}, LC4/i;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "Cache-Control"

    if-nez v6, :cond_4

    iget-object v4, v5, LC4/E;->d:Ljava/lang/Object;

    check-cast v4, LC4/v;

    invoke-virtual {v4, v7}, LC4/v;->i(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5, v7, v4}, LC4/E;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    invoke-virtual {v5}, LC4/E;->b()LC4/F;

    move-result-object v4

    iget-object v5, v0, Lh3/s;->a:LK0/j;

    iget-object v5, v5, LK0/j;->b:Ljava/lang/Object;

    check-cast v5, LC4/C;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, LG4/i;

    invoke-direct {v6, v5, v4}, LG4/i;-><init>(LC4/C;LC4/F;)V

    invoke-virtual {v6}, LG4/i;->f()LC4/I;

    move-result-object v4

    const/16 v5, 0xc8

    iget v6, v4, LC4/I;->d:I

    if-gt v5, v6, :cond_6

    const/16 v5, 0x12c

    if-ge v6, v5, :cond_6

    move v2, v3

    :cond_6
    iget-object v3, v4, LC4/I;->l:LC4/K;

    if-eqz v2, :cond_b

    iget-object v2, v4, LC4/I;->n:LC4/I;

    const/4 v4, 0x3

    if-nez v2, :cond_7

    move v2, v4

    goto :goto_4

    :cond_7
    move v2, v1

    :goto_4
    const-wide/16 v5, 0x0

    if-ne v2, v1, :cond_9

    invoke-virtual {v3}, LC4/K;->b()J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, LC4/K;->close()V

    new-instance v1, Lh3/q;

    const-string v2, "Received response with 0 content-length header."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_5
    if-ne v2, v4, :cond_a

    invoke-virtual {v3}, LC4/K;->b()J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-lez v1, :cond_a

    invoke-virtual {v3}, LC4/K;->b()J

    move-result-wide v4

    iget-object v1, v0, Lh3/s;->b:Lh3/D;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v1, v1, Lh3/D;->b:Lh/c;

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_a
    new-instance v1, LC4/G;

    invoke-virtual {v3}, LC4/K;->e()LQ4/i;

    move-result-object v3

    invoke-direct {v1, v3, v2}, LC4/G;-><init>(LQ4/y;I)V

    return-object v1

    :cond_b
    invoke-virtual {v3}, LC4/K;->close()V

    new-instance v1, Lh3/r;

    const-string v2, "HTTP "

    invoke-static {v6, v2}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final f(Landroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
