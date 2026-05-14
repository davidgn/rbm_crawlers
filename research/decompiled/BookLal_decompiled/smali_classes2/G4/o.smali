.class public final LG4/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH4/e;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LC4/C;LG4/k;LQ4/s;LQ4/r;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LG4/o;->a:I

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, LG4/o;->c:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, LG4/o;->d:Ljava/lang/Object;

    .line 20
    iput-object p3, p0, LG4/o;->e:Ljava/lang/Object;

    .line 21
    iput-object p4, p0, LG4/o;->f:Ljava/lang/Object;

    .line 22
    new-instance p1, LI4/a;

    invoke-direct {p1, p3}, LI4/a;-><init>(LQ4/s;)V

    iput-object p1, p0, LG4/o;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LC4/a;LC4/o;LG4/i;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LG4/o;->a:I

    const-string v0, "routeDatabase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LG4/o;->c:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, LG4/o;->d:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, LG4/o;->e:Ljava/lang/Object;

    .line 5
    sget-object p2, LZ3/p;->a:LZ3/p;

    iput-object p2, p0, LG4/o;->f:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, LG4/o;->g:Ljava/lang/Object;

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, LG4/o;->h:Ljava/lang/Object;

    .line 8
    iget-object p2, p1, LC4/a;->h:LC4/y;

    const-string p3, "url"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, LC4/y;->g()Ljava/net/URI;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    filled-new-array {p1}, [Ljava/net/Proxy;

    move-result-object p1

    invoke-static {p1}, LD4/c;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_0
    iget-object p1, p1, LC4/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {p1}, LD4/c;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 14
    :cond_2
    :goto_0
    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    filled-new-array {p1}, [Ljava/net/Proxy;

    move-result-object p1

    invoke-static {p1}, LD4/c;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 15
    :goto_1
    iput-object p1, p0, LG4/o;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 16
    iput p1, p0, LG4/o;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ll3/g1;Lj3/w0;Ll3/C1;Ll3/J0;Ll3/l;Ll3/D0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LG4/o;->a:I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, LG4/o;->b:I

    .line 25
    const-string p1, "proxyDetector not set"

    invoke-static {p2, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, LG4/o;->c:Ljava/lang/Object;

    .line 26
    iput-object p3, p0, LG4/o;->d:Ljava/lang/Object;

    .line 27
    iput-object p4, p0, LG4/o;->e:Ljava/lang/Object;

    .line 28
    iput-object p5, p0, LG4/o;->f:Ljava/lang/Object;

    .line 29
    iput-object p6, p0, LG4/o;->g:Ljava/lang/Object;

    .line 30
    iput-object p7, p0, LG4/o;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LG4/o;->f:Ljava/lang/Object;

    check-cast v0, LQ4/r;

    invoke-virtual {v0}, LQ4/r;->flush()V

    return-void
.end method

.method public b(Z)LC4/H;
    .locals 10

    iget-object v0, p0, LG4/o;->g:Ljava/lang/Object;

    check-cast v0, LI4/a;

    iget v1, p0, LG4/o;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, LG4/o;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, v0, LI4/a;->c:Ljava/lang/Object;

    check-cast v1, LQ4/s;

    iget-wide v4, v0, LI4/a;->b:J

    invoke-virtual {v1, v4, v5}, LQ4/s;->t(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, v0, LI4/a;->b:J

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, v0, LI4/a;->b:J

    invoke-static {v1}, LZ2/l;->P(Ljava/lang/String;)LH4/h;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, v1, LH4/h;->b:I

    :try_start_1
    new-instance v4, LC4/H;

    invoke-direct {v4}, LC4/H;-><init>()V

    iget-object v5, v1, LH4/h;->c:Ljava/lang/Object;

    check-cast v5, LC4/D;

    iput-object v5, v4, LC4/H;->b:LC4/D;

    iput v2, v4, LC4/H;->c:I

    iget-object v1, v1, LH4/h;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, LC4/H;->d:Ljava/lang/String;

    new-instance v1, LC4/v;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, LC4/v;-><init>(I)V

    :goto_1
    iget-object v5, v0, LI4/a;->c:Ljava/lang/Object;

    check-cast v5, LQ4/s;

    iget-wide v6, v0, LI4/a;->b:J

    invoke-virtual {v5, v6, v7}, LQ4/s;->t(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, LI4/a;->b:J

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    iput-wide v6, v0, LI4/a;->b:J

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v1}, LC4/v;->e()LC4/w;

    move-result-object v0

    invoke-virtual {v4, v0}, LC4/H;->c(LC4/w;)V

    const/16 v0, 0x64

    if-eqz p1, :cond_2

    if-ne v2, v0, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    if-ne v2, v0, :cond_3

    iput v3, p0, LG4/o;->b:I

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    const/16 p1, 0x66

    if-gt p1, v2, :cond_4

    const/16 p1, 0xc8

    if-ge v2, p1, :cond_4

    iput v3, p0, LG4/o;->b:I

    goto :goto_2

    :cond_4
    const/4 p1, 0x4

    iput p1, p0, LG4/o;->b:I

    :goto_2
    return-object v4

    :cond_5
    invoke-virtual {v1, v5}, LC4/v;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_3
    iget-object v0, p0, LG4/o;->d:Ljava/lang/Object;

    check-cast v0, LG4/k;

    iget-object v0, v0, LG4/k;->b:LC4/L;

    iget-object v0, v0, LC4/L;->a:LC4/a;

    iget-object v0, v0, LC4/a;->h:LC4/y;

    invoke-virtual {v0}, LC4/y;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()LG4/k;
    .locals 1

    iget-object v0, p0, LG4/o;->d:Ljava/lang/Object;

    check-cast v0, LG4/k;

    return-object v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, LG4/o;->d:Ljava/lang/Object;

    check-cast v0, LG4/k;

    iget-object v0, v0, LG4/k;->c:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-static {v0}, LD4/c;->e(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public d(LC4/I;)LQ4/y;
    .locals 8

    invoke-static {p1}, LH4/f;->a(LC4/I;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, LG4/o;->j(J)LI4/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-static {p1, v0}, LC4/I;->c(LC4/I;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "state: "

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eqz v0, :cond_2

    iget-object p1, p1, LC4/I;->a:LC4/F;

    iget-object p1, p1, LC4/F;->c:Ljava/lang/Object;

    check-cast p1, LC4/y;

    iget v0, p0, LG4/o;->b:I

    if-ne v0, v3, :cond_1

    iput v2, p0, LG4/o;->b:I

    new-instance v0, LI4/d;

    invoke-direct {v0, p0, p1}, LI4/d;-><init>(LG4/o;LC4/y;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, LG4/o;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1}, LD4/c;->k(LC4/I;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long p1, v4, v6

    if-eqz p1, :cond_3

    invoke-virtual {p0, v4, v5}, LG4/o;->j(J)LI4/e;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget p1, p0, LG4/o;->b:I

    if-ne p1, v3, :cond_4

    iput v2, p0, LG4/o;->b:I

    iget-object p1, p0, LG4/o;->d:Ljava/lang/Object;

    check-cast p1, LG4/k;

    invoke-virtual {p1}, LG4/k;->k()V

    new-instance p1, LI4/g;

    invoke-direct {p1, p0}, LI4/b;-><init>(LG4/o;)V

    :goto_0
    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, LG4/o;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(LC4/F;J)LQ4/w;
    .locals 5

    iget-object p1, p1, LC4/F;->d:Ljava/lang/Object;

    check-cast p1, LC4/w;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, LC4/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "state: "

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, LG4/o;->b:I

    if-ne p1, v2, :cond_0

    iput v1, p0, LG4/o;->b:I

    new-instance p1, LI4/c;

    invoke-direct {p1, p0}, LI4/c;-><init>(LG4/o;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, LG4/o;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-wide/16 v3, -0x1

    cmp-long p1, p2, v3

    if-eqz p1, :cond_3

    iget p1, p0, LG4/o;->b:I

    if-ne p1, v2, :cond_2

    iput v1, p0, LG4/o;->b:I

    new-instance p1, LI4/f;

    invoke-direct {p1, p0}, LI4/f;-><init>(LG4/o;)V

    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, LG4/o;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, LG4/o;->f:Ljava/lang/Object;

    check-cast v0, LQ4/r;

    invoke-virtual {v0}, LQ4/r;->flush()V

    return-void
.end method

.method public g(LC4/F;)V
    .locals 4

    iget-object v0, p0, LG4/o;->d:Ljava/lang/Object;

    check-cast v0, LG4/k;

    iget-object v0, v0, LG4/k;->b:LC4/L;

    iget-object v0, v0, LC4/L;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    const-string v1, "connection.route().proxy.type()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, LC4/F;->b:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p1, LC4/F;->c:Ljava/lang/Object;

    check-cast v2, LC4/y;

    iget-boolean v3, v2, LC4/y;->i:Z

    if-nez v3, :cond_0

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, LC4/y;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, LC4/y;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, LC4/F;->d:Ljava/lang/Object;

    check-cast p1, LC4/w;

    invoke-virtual {p0, p1, v0}, LG4/o;->k(LC4/w;Ljava/lang/String;)V

    return-void
.end method

.method public h(LC4/I;)J
    .locals 2

    invoke-static {p1}, LH4/f;->a(LC4/I;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-static {p1, v0}, LC4/I;->c(LC4/I;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, LD4/c;->k(LC4/I;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public i()Z
    .locals 2

    iget v0, p0, LG4/o;->b:I

    iget-object v1, p0, LG4/o;->f:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LG4/o;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public j(J)LI4/e;
    .locals 2

    iget v0, p0, LG4/o;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, LG4/o;->b:I

    new-instance v0, LI4/e;

    invoke-direct {v0, p0, p1, p2}, LI4/e;-><init>(LG4/o;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, LG4/o;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public k(LC4/w;Ljava/lang/String;)V
    .locals 4

    const-string v0, "requestLine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, LG4/o;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, LG4/o;->f:Ljava/lang/Object;

    check-cast v0, LQ4/r;

    invoke-virtual {v0, p2}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    const-string p2, "\r\n"

    invoke-virtual {v0, p2}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {p1}, LC4/w;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, LC4/w;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    const-string v3, ": "

    invoke-virtual {v0, v3}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {p1, v2}, LC4/w;->i(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, LQ4/h;->h(Ljava/lang/String;)LQ4/h;

    invoke-interface {v0, p2}, LQ4/h;->h(Ljava/lang/String;)LQ4/h;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    const/4 p1, 0x1

    iput p1, p0, LG4/o;->b:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "state: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, LG4/o;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, LG4/o;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    iget v1, p0, LG4/o;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "defaultPort"

    invoke-virtual {v0, v2, v1}, LE4/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "proxyDetector"

    iget-object v2, p0, LG4/o;->c:Ljava/lang/Object;

    check-cast v2, Ll3/g1;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "syncContext"

    iget-object v2, p0, LG4/o;->d:Ljava/lang/Object;

    check-cast v2, Lj3/w0;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "serviceConfigParser"

    iget-object v2, p0, LG4/o;->e:Ljava/lang/Object;

    check-cast v2, Ll3/C1;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scheduledExecutorService"

    iget-object v2, p0, LG4/o;->f:Ljava/lang/Object;

    check-cast v2, Ll3/J0;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "channelLogger"

    iget-object v2, p0, LG4/o;->g:Ljava/lang/Object;

    check-cast v2, Ll3/l;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "executor"

    iget-object v2, p0, LG4/o;->h:Ljava/lang/Object;

    check-cast v2, Ll3/D0;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "overrideAuthority"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
