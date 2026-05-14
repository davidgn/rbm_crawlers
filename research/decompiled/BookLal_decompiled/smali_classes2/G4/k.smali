.class public final LG4/k;
.super LJ4/h;
.source "SourceFile"


# instance fields
.field public final b:LC4/L;

.field public c:Ljava/net/Socket;

.field public d:Ljava/net/Socket;

.field public e:LC4/u;

.field public f:LC4/D;

.field public g:LJ4/o;

.field public h:LQ4/s;

.field public i:LQ4/r;

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public final p:Ljava/util/ArrayList;

.field public q:J


# direct methods
.method public constructor <init>(LG4/l;LC4/L;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "route"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LG4/k;->b:LC4/L;

    const/4 p1, 0x1

    iput p1, p0, LG4/k;->o:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LG4/k;->p:Ljava/util/ArrayList;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, LG4/k;->q:J

    return-void
.end method

.method public static d(LC4/C;LC4/L;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "client"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failedRoute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LC4/L;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, LC4/L;->a:LC4/a;

    iget-object v1, v0, LC4/a;->g:Ljava/net/ProxySelector;

    iget-object v0, v0, LC4/a;->h:LC4/y;

    invoke-virtual {v0}, LC4/y;->g()Ljava/net/URI;

    move-result-object v0

    iget-object v2, p1, LC4/L;->b:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    iget-object p0, p0, LC4/C;->E:LC4/o;

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/LinkedHashSet;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a(LJ4/o;LJ4/B;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p2, LJ4/B;->a:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    iget-object p1, p2, LJ4/B;->b:[I

    const/4 p2, 0x4

    aget p1, p1, p2

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    iput p1, p0, LG4/k;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(LJ4/w;)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, LJ4/w;->c(Ljava/io/IOException;I)V

    return-void
.end method

.method public final c(IIIZLG4/i;)V
    .locals 7

    const-string v0, "inetSocketAddress"

    const-string v1, "call"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, LG4/k;->f:LC4/D;

    if-nez v1, :cond_e

    iget-object v1, p0, LG4/k;->b:LC4/L;

    iget-object v1, v1, LC4/L;->a:LC4/a;

    iget-object v1, v1, LC4/a;->j:Ljava/util/List;

    new-instance v2, LG4/b;

    invoke-direct {v2, v1}, LG4/b;-><init>(Ljava/util/List;)V

    iget-object v3, p0, LG4/k;->b:LC4/L;

    iget-object v3, v3, LC4/L;->a:LC4/a;

    iget-object v4, v3, LC4/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v4, :cond_2

    sget-object v3, LC4/q;->f:LC4/q;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LG4/k;->b:LC4/L;

    iget-object v1, v1, LC4/L;->a:LC4/a;

    iget-object v1, v1, LC4/a;->h:LC4/y;

    iget-object v1, v1, LC4/y;->d:Ljava/lang/String;

    sget-object v3, LL4/n;->a:LL4/n;

    sget-object v3, LL4/n;->a:LL4/n;

    invoke-virtual {v3, v1}, LL4/n;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, LG4/m;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "CLEARTEXT communication to "

    const-string p4, " not permitted by network security policy"

    invoke-static {p3, v1, p4}, LC/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, LG4/m;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_1
    new-instance p1, LG4/m;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "CLEARTEXT communication not enabled for client"

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, LG4/m;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_2
    iget-object v1, v3, LC4/a;->i:Ljava/util/List;

    sget-object v3, LC4/D;->f:LC4/D;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_0
    const/4 v1, 0x0

    move-object v3, v1

    :goto_1
    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, LG4/k;->b:LC4/L;

    iget-object v6, v5, LC4/L;->a:LC4/a;

    iget-object v6, v6, LC4/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v6, :cond_3

    iget-object v5, v5, LC4/L;->b:Ljava/net/Proxy;

    invoke-virtual {v5}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v5, v6, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual {p0, p1, p2, p3, p5}, LG4/k;->f(IIILG4/i;)V

    iget-object v5, p0, LG4/k;->c:Ljava/net/Socket;

    if-nez v5, :cond_5

    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_5

    :cond_4
    invoke-virtual {p0, p1, p2, p5}, LG4/k;->e(IILG4/i;)V

    :cond_5
    invoke-virtual {p0, v2, p5}, LG4/k;->g(LG4/b;LG4/i;)V

    iget-object v5, p0, LG4/k;->b:LC4/L;

    iget-object v5, v5, LC4/L;->c:Ljava/net/InetSocketAddress;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object p1, p0, LG4/k;->b:LC4/L;

    iget-object p2, p1, LC4/L;->a:LC4/a;

    iget-object p2, p2, LC4/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p2, :cond_7

    iget-object p1, p1, LC4/L;->b:Ljava/net/Proxy;

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p1

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, p2, :cond_7

    iget-object p1, p0, LG4/k;->c:Ljava/net/Socket;

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, LG4/m;

    new-instance p2, Ljava/net/ProtocolException;

    const-string p3, "Too many tunnel connections attempted: 21"

    invoke-direct {p2, p3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, LG4/m;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_7
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, LG4/k;->q:J

    return-void

    :goto_5
    iget-object v6, p0, LG4/k;->d:Ljava/net/Socket;

    if-eqz v6, :cond_8

    invoke-static {v6}, LD4/c;->e(Ljava/net/Socket;)V

    :cond_8
    iget-object v6, p0, LG4/k;->c:Ljava/net/Socket;

    if-eqz v6, :cond_9

    invoke-static {v6}, LD4/c;->e(Ljava/net/Socket;)V

    :cond_9
    iput-object v1, p0, LG4/k;->d:Ljava/net/Socket;

    iput-object v1, p0, LG4/k;->c:Ljava/net/Socket;

    iput-object v1, p0, LG4/k;->h:LQ4/s;

    iput-object v1, p0, LG4/k;->i:LQ4/r;

    iput-object v1, p0, LG4/k;->e:LC4/u;

    iput-object v1, p0, LG4/k;->f:LC4/D;

    iput-object v1, p0, LG4/k;->g:LJ4/o;

    iput v4, p0, LG4/k;->o:I

    iget-object v6, p0, LG4/k;->b:LC4/L;

    iget-object v6, v6, LC4/L;->c:Ljava/net/InetSocketAddress;

    invoke-static {v6, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_a

    new-instance v3, LG4/m;

    invoke-direct {v3, v5}, LG4/m;-><init>(Ljava/io/IOException;)V

    goto :goto_6

    :cond_a
    iget-object v6, v3, LG4/m;->a:Ljava/io/IOException;

    invoke-static {v6, v5}, LL4/l;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    iput-object v5, v3, LG4/m;->b:Ljava/io/IOException;

    :goto_6
    if-eqz p4, :cond_c

    iput-boolean v4, v2, LG4/b;->d:Z

    iget-boolean v4, v2, LG4/b;->c:Z

    if-eqz v4, :cond_c

    instance-of v4, v5, Ljava/net/ProtocolException;

    if-nez v4, :cond_c

    instance-of v4, v5, Ljava/io/InterruptedIOException;

    if-nez v4, :cond_c

    instance-of v4, v5, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_b

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/CertificateException;

    if-nez v4, :cond_c

    :cond_b
    instance-of v4, v5, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-nez v4, :cond_c

    instance-of v4, v5, Ljavax/net/ssl/SSLException;

    if-eqz v4, :cond_c

    goto/16 :goto_1

    :cond_c
    throw v3

    :cond_d
    new-instance p1, LG4/m;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, LG4/m;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(IILG4/i;)V
    .locals 4

    iget-object v0, p0, LG4/k;->b:LC4/L;

    iget-object v1, v0, LC4/L;->b:Ljava/net/Proxy;

    iget-object v0, v0, LC4/L;->a:LC4/a;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    sget-object v3, LG4/j;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    iget-object v0, v0, LC4/a;->b:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    :goto_1
    iput-object v0, p0, LG4/k;->c:Ljava/net/Socket;

    iget-object v1, p0, LG4/k;->b:LC4/L;

    iget-object v1, v1, LC4/L;->c:Ljava/net/InetSocketAddress;

    const-string v2, "call"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "inetSocketAddress"

    invoke-static {v1, p3}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    sget-object p2, LL4/n;->a:LL4/n;

    sget-object p2, LL4/n;->a:LL4/n;

    iget-object p3, p0, LG4/k;->b:LC4/L;

    iget-object p3, p3, LC4/L;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p2, v0, p3, p1}, LL4/n;->e(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0}, LL4/l;->E(Ljava/net/Socket;)LQ4/c;

    move-result-object p1

    invoke-static {p1}, LL4/l;->g(LQ4/y;)LQ4/s;

    move-result-object p1

    iput-object p1, p0, LG4/k;->h:LQ4/s;

    invoke-static {v0}, LL4/l;->C(Ljava/net/Socket;)LQ4/b;

    move-result-object p1

    invoke-static {p1}, LL4/l;->f(LQ4/w;)LQ4/r;

    move-result-object p1

    iput-object p1, p0, LG4/k;->i:LQ4/r;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to connect to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LG4/k;->b:LC4/L;

    iget-object v0, v0, LC4/L;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method public final f(IIILG4/i;)V
    .locals 9

    new-instance v0, LC4/E;

    invoke-direct {v0}, LC4/E;-><init>()V

    iget-object v1, p0, LG4/k;->b:LC4/L;

    iget-object v2, v1, LC4/L;->a:LC4/a;

    const-string v3, "url"

    iget-object v2, v2, LC4/a;->h:LC4/y;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, LC4/E;->c:Ljava/lang/Object;

    const-string v2, "CONNECT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, LC4/E;->j(Ljava/lang/String;LC4/G;)V

    iget-object v1, v1, LC4/L;->a:LC4/a;

    iget-object v2, v1, LC4/a;->h:LC4/y;

    const/4 v4, 0x1

    invoke-static {v2, v4}, LD4/c;->w(LC4/y;Z)Ljava/lang/String;

    move-result-object v2

    const-string v5, "Host"

    invoke-virtual {v0, v5, v2}, LC4/E;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Proxy-Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v0, v2, v5}, LC4/E;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "User-Agent"

    const-string v5, "okhttp/4.12.0"

    invoke-virtual {v0, v2, v5}, LC4/E;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, LC4/E;->b()LC4/F;

    move-result-object v0

    new-instance v2, LC4/v;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, LC4/v;-><init>(I)V

    const-string v5, "Proxy-Authenticate"

    invoke-static {v5}, LL4/d;->e(Ljava/lang/String;)V

    const-string v6, "OkHttp-Preemptive"

    invoke-static {v6, v5}, LL4/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, LC4/v;->i(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, LC4/v;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, LC4/v;->e()LC4/w;

    iget-object v2, v1, LC4/a;->f:LC4/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p4}, LG4/k;->e(IILG4/i;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "CONNECT "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, v0, LC4/F;->c:Ljava/lang/Object;

    check-cast p4, LC4/y;

    invoke-static {p4, v4}, LD4/c;->w(LC4/y;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, LG4/k;->h:LQ4/s;

    invoke-static {p4}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object v2, p0, LG4/k;->i:LQ4/r;

    invoke-static {v2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    new-instance v4, LG4/o;

    invoke-direct {v4, v3, p0, p4, v2}, LG4/o;-><init>(LC4/C;LG4/k;LQ4/s;LQ4/r;)V

    iget-object v3, p4, LQ4/s;->a:LQ4/y;

    invoke-interface {v3}, LQ4/y;->a()LQ4/A;

    move-result-object v3

    int-to-long v5, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, p2}, LQ4/A;->g(JLjava/util/concurrent/TimeUnit;)LQ4/A;

    iget-object v3, v2, LQ4/r;->a:LQ4/w;

    invoke-interface {v3}, LQ4/w;->a()LQ4/A;

    move-result-object v3

    int-to-long v5, p3

    invoke-virtual {v3, v5, v6, p2}, LQ4/A;->g(JLjava/util/concurrent/TimeUnit;)LQ4/A;

    iget-object p3, v0, LC4/F;->d:Ljava/lang/Object;

    check-cast p3, LC4/w;

    invoke-virtual {v4, p3, p1}, LG4/o;->k(LC4/w;Ljava/lang/String;)V

    invoke-virtual {v4}, LG4/o;->a()V

    const/4 p1, 0x0

    invoke-virtual {v4, p1}, LG4/o;->b(Z)LC4/H;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iput-object v0, p1, LC4/H;->a:LC4/F;

    invoke-virtual {p1}, LC4/H;->a()LC4/I;

    move-result-object p1

    invoke-static {p1}, LD4/c;->k(LC4/I;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long p3, v5, v7

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v5, v6}, LG4/o;->j(J)LI4/e;

    move-result-object p3

    const v0, 0x7fffffff

    invoke-static {p3, v0, p2}, LD4/c;->u(LQ4/y;ILjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {p3}, LI4/e;->close()V

    :goto_0
    const/16 p2, 0xc8

    iget p1, p1, LC4/I;->d:I

    if-eq p1, p2, :cond_2

    const/16 p2, 0x197

    if-ne p1, p2, :cond_1

    iget-object p1, v1, LC4/a;->f:LC4/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Unexpected response code for CONNECT: "

    invoke-static {p1, p3}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    iget-object p1, p4, LQ4/s;->b:LQ4/g;

    invoke-virtual {p1}, LQ4/g;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v2, LQ4/r;->b:LQ4/g;

    invoke-virtual {p1}, LQ4/g;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(LG4/b;LG4/i;)V
    .locals 11

    const/4 v0, 0x1

    iget-object v1, p0, LG4/k;->b:LC4/L;

    iget-object v1, v1, LC4/L;->a:LC4/a;

    iget-object v2, v1, LC4/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v3, LC4/D;->c:LC4/D;

    if-nez v2, :cond_1

    iget-object p1, v1, LC4/a;->i:Ljava/util/List;

    sget-object p2, LC4/D;->f:LC4/D;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LG4/k;->c:Ljava/net/Socket;

    iput-object p1, p0, LG4/k;->d:Ljava/net/Socket;

    iput-object p2, p0, LG4/k;->f:LC4/D;

    invoke-virtual {p0}, LG4/k;->l()V

    return-void

    :cond_0
    iget-object p1, p0, LG4/k;->c:Ljava/net/Socket;

    iput-object p1, p0, LG4/k;->d:Ljava/net/Socket;

    iput-object v3, p0, LG4/k;->f:LC4/D;

    return-void

    :cond_1
    const-string v1, "call"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "Hostname "

    const-string v1, "\n              |Hostname "

    iget-object v2, p0, LG4/k;->b:LC4/L;

    iget-object v2, v2, LC4/L;->a:LC4/a;

    iget-object v4, v2, LC4/a;->c:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v4}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object v6, p0, LG4/k;->c:Ljava/net/Socket;

    iget-object v7, v2, LC4/a;->h:LC4/y;

    iget-object v8, v7, LC4/y;->d:Ljava/lang/String;

    iget v7, v7, LC4/y;->e:I

    invoke-virtual {v4, v6, v8, v7, v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v4

    const-string v6, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v4}, LG4/b;->a(Ljavax/net/ssl/SSLSocket;)LC4/q;

    move-result-object p1

    iget-boolean v6, p1, LC4/q;->b:Z

    if-eqz v6, :cond_2

    sget-object v6, LL4/n;->a:LL4/n;

    sget-object v6, LL4/n;->a:LL4/n;

    iget-object v7, v2, LC4/a;->h:LC4/y;

    iget-object v7, v7, LC4/y;->d:Ljava/lang/String;

    iget-object v8, v2, LC4/a;->i:Ljava/util/List;

    invoke-virtual {v6, v4, v7, v8}, LL4/n;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v5, v4

    goto/16 :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v6

    const-string v7, "sslSocketSession"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/support/v4/media/session/a;->k(Ljavax/net/ssl/SSLSession;)LC4/u;

    move-result-object v7

    iget-object v8, v2, LC4/a;->d:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v8}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object v9, v2, LC4/a;->h:LC4/y;

    iget-object v9, v9, LC4/y;->d:Ljava/lang/String;

    invoke-interface {v8, v9, v6}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v7}, LC4/u;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/security/cert/X509Certificate;

    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, LC4/a;->h:LC4/y;

    iget-object v1, v1, LC4/y;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not verified:\n              |    certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, LC4/l;->c:LC4/l;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sha256/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, LQ4/j;->d:LQ4/j;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    const-string v3, "publicKey.encoded"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lz2/e;->p([B)LQ4/j;

    move-result-object v2

    const-string v3, "SHA-256"

    invoke-virtual {v2, v3}, LQ4/j;->b(Ljava/lang/String;)LQ4/j;

    move-result-object v2

    invoke-virtual {v2}, LQ4/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n              |    DN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n              |    subjectAltNames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-static {p1, v1}, LP4/c;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, v2}, LP4/c;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p1

    invoke-static {v1, p1}, LZ3/g;->j0(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n              "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls4/f;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v2, LC4/a;->h:LC4/y;

    iget-object p2, p2, LC4/y;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not verified (no certificates)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p2, v2, LC4/a;->e:LC4/l;

    invoke-static {p2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    new-instance v1, LC4/u;

    iget-object v6, v7, LC4/u;->a:LC4/M;

    iget-object v8, v7, LC4/u;->b:LC4/n;

    iget-object v9, v7, LC4/u;->c:Ljava/util/List;

    new-instance v10, LC4/k;

    invoke-direct {v10, p2, v7, v2, v0}, LC4/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v1, v6, v8, v9, v10}, LC4/u;-><init>(LC4/M;LC4/n;Ljava/util/List;Lk4/a;)V

    iput-object v1, p0, LG4/k;->e:LC4/u;

    iget-object v1, v2, LC4/a;->h:LC4/y;

    iget-object v1, v1, LC4/y;->d:Ljava/lang/String;

    new-instance v2, LC4/t;

    invoke-direct {v2, p0, v0}, LC4/t;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v1, v2}, LC4/l;->a(Ljava/lang/String;Lk4/a;)V

    iget-boolean p1, p1, LC4/q;->b:Z

    if-eqz p1, :cond_5

    sget-object p1, LL4/n;->a:LL4/n;

    sget-object p1, LL4/n;->a:LL4/n;

    invoke-virtual {p1, v4}, LL4/n;->f(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    iput-object v4, p0, LG4/k;->d:Ljava/net/Socket;

    invoke-static {v4}, LL4/l;->E(Ljava/net/Socket;)LQ4/c;

    move-result-object p1

    invoke-static {p1}, LL4/l;->g(LQ4/y;)LQ4/s;

    move-result-object p1

    iput-object p1, p0, LG4/k;->h:LQ4/s;

    invoke-static {v4}, LL4/l;->C(Ljava/net/Socket;)LQ4/b;

    move-result-object p1

    invoke-static {p1}, LL4/l;->f(LQ4/w;)LQ4/r;

    move-result-object p1

    iput-object p1, p0, LG4/k;->i:LQ4/r;

    if-eqz v5, :cond_6

    invoke-static {v5}, LS4/b;->p(Ljava/lang/String;)LC4/D;

    move-result-object v3

    :cond_6
    iput-object v3, p0, LG4/k;->f:LC4/D;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p1, LL4/n;->a:LL4/n;

    sget-object p1, LL4/n;->a:LL4/n;

    invoke-virtual {p1, v4}, LL4/n;->a(Ljavax/net/ssl/SSLSocket;)V

    iget-object p1, p0, LG4/k;->f:LC4/D;

    sget-object p2, LC4/D;->e:LC4/D;

    if-ne p1, p2, :cond_7

    invoke-virtual {p0}, LG4/k;->l()V

    :cond_7
    return-void

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v5, :cond_8

    sget-object p2, LL4/n;->a:LL4/n;

    sget-object p2, LL4/n;->a:LL4/n;

    invoke-virtual {p2, v5}, LL4/n;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_8
    if-eqz v5, :cond_9

    invoke-static {v5}, LD4/c;->e(Ljava/net/Socket;)V

    :cond_9
    throw p1
.end method

.method public final h(LC4/a;Ljava/util/ArrayList;)Z
    .locals 8

    const/4 v0, 0x0

    sget-object v1, LD4/c;->a:[B

    iget-object v1, p0, LG4/k;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, LG4/k;->o:I

    if-ge v1, v2, :cond_9

    iget-boolean v1, p0, LG4/k;->j:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, LG4/k;->b:LC4/L;

    iget-object v2, v1, LC4/L;->a:LC4/a;

    invoke-virtual {v2, p1}, LC4/a;->a(LC4/a;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p1, LC4/a;->h:LC4/y;

    iget-object v3, v2, LC4/y;->d:Ljava/lang/String;

    iget-object v4, v1, LC4/L;->a:LC4/a;

    iget-object v5, v4, LC4/a;->h:LC4/y;

    iget-object v5, v5, LC4/y;->d:Ljava/lang/String;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    return v5

    :cond_2
    iget-object v3, p0, LG4/k;->g:LJ4/o;

    if-nez v3, :cond_3

    return v0

    :cond_3
    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LC4/L;

    iget-object v6, v3, LC4/L;->b:Ljava/net/Proxy;

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    sget-object v7, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v6, v7, :cond_5

    iget-object v6, v1, LC4/L;->b:Ljava/net/Proxy;

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v6

    if-ne v6, v7, :cond_5

    iget-object v3, v3, LC4/L;->c:Ljava/net/InetSocketAddress;

    iget-object v6, v1, LC4/L;->c:Ljava/net/InetSocketAddress;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object p2, LP4/c;->a:LP4/c;

    iget-object v1, p1, LC4/a;->d:Ljavax/net/ssl/HostnameVerifier;

    if-eq v1, p2, :cond_6

    return v0

    :cond_6
    sget-object p2, LD4/c;->a:[B

    iget-object p2, v4, LC4/a;->h:LC4/y;

    iget v1, p2, LC4/y;->e:I

    iget v3, v2, LC4/y;->e:I

    if-eq v3, v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object p2, p2, LC4/y;->d:Ljava/lang/String;

    iget-object v1, v2, LC4/y;->d:Ljava/lang/String;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_0

    :cond_8
    iget-boolean p2, p0, LG4/k;->k:Z

    if-nez p2, :cond_9

    iget-object p2, p0, LG4/k;->e:LC4/u;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, LC4/u;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-static {v1, p2}, LP4/c;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p2

    if-eqz p2, :cond_9

    :goto_0
    :try_start_0
    iget-object p1, p1, LC4/a;->e:LC4/l;

    invoke-static {p1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object p2, p0, LG4/k;->e:LC4/u;

    invoke-static {p2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, LC4/u;->a()Ljava/util/List;

    move-result-object p2

    const-string v2, "hostname"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "peerCertificates"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LC4/k;

    invoke-direct {v2, p1, p2, v1, v0}, LC4/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v1, v2}, LC4/l;->a(Ljava/lang/String;Lk4/a;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    :cond_9
    :goto_1
    return v0
.end method

.method public final i(Z)Z
    .locals 9

    sget-object v0, LD4/c;->a:[B

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, LG4/k;->c:Ljava/net/Socket;

    invoke-static {v2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object v3, p0, LG4/k;->d:Ljava/net/Socket;

    invoke-static {v3}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object v4, p0, LG4/k;->h:LQ4/s;

    invoke-static {v4}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    iget-object v2, p0, LG4/k;->g:LJ4/o;

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    monitor-enter v2

    :try_start_0
    iget-boolean p1, v2, LJ4/o;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit v2

    goto :goto_0

    :cond_1
    :try_start_1
    iget-wide v3, v2, LJ4/o;->s:J

    iget-wide v7, v2, LJ4/o;->r:J

    cmp-long p1, v3, v7

    if-gez p1, :cond_2

    iget-wide v3, v2, LJ4/o;->t:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p1, v0, v3

    if-ltz p1, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    monitor-exit v2

    move v5, v6

    :goto_0
    return v5

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    monitor-enter p0

    :try_start_3
    iget-wide v7, p0, LG4/k;->q:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sub-long/2addr v0, v7

    monitor-exit p0

    const-wide v7, 0x2540be400L

    cmp-long v0, v0, v7

    if-ltz v0, :cond_4

    if-eqz p1, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-virtual {v3, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {v4}, LQ4/s;->b()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    xor-int/2addr v0, v6

    :try_start_6
    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    move v5, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_0
    move v5, v6

    :catch_1
    :goto_2
    return v5

    :cond_4
    return v6

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    :goto_3
    return v5
.end method

.method public final j(LC4/C;LH4/g;)LH4/e;
    .locals 6

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LG4/k;->d:Ljava/net/Socket;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object v1, p0, LG4/k;->h:LQ4/s;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object v2, p0, LG4/k;->i:LQ4/r;

    invoke-static {v2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object v3, p0, LG4/k;->g:LJ4/o;

    if-eqz v3, :cond_0

    new-instance v0, LJ4/p;

    invoke-direct {v0, p1, p0, p2, v3}, LJ4/p;-><init>(LC4/C;LG4/k;LH4/g;LJ4/o;)V

    goto :goto_0

    :cond_0
    iget v3, p2, LH4/g;->g:I

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, v1, LQ4/s;->a:LQ4/y;

    invoke-interface {v0}, LQ4/y;->a()LQ4/A;

    move-result-object v0

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, LQ4/A;->g(JLjava/util/concurrent/TimeUnit;)LQ4/A;

    iget-object v0, v2, LQ4/r;->a:LQ4/w;

    invoke-interface {v0}, LQ4/w;->a()LQ4/A;

    move-result-object v0

    iget p2, p2, LH4/g;->h:I

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4, v5}, LQ4/A;->g(JLjava/util/concurrent/TimeUnit;)LQ4/A;

    new-instance v0, LG4/o;

    invoke-direct {v0, p1, p0, v1, v2}, LG4/o;-><init>(LC4/C;LG4/k;LQ4/s;LQ4/r;)V

    :goto_0
    return-object v0
.end method

.method public final declared-synchronized k()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, LG4/k;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final l()V
    .locals 10

    iget-object v0, p0, LG4/k;->d:Ljava/net/Socket;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object v1, p0, LG4/k;->h:LQ4/s;

    invoke-static {v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    iget-object v2, p0, LG4/k;->i:LQ4/r;

    invoke-static {v2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v4, LC4/F;

    sget-object v5, LF4/c;->h:LF4/c;

    invoke-direct {v4, v5}, LC4/F;-><init>(LF4/c;)V

    iget-object v6, p0, LG4/k;->b:LC4/L;

    iget-object v6, v6, LC4/L;->a:LC4/a;

    iget-object v6, v6, LC4/a;->h:LC4/y;

    iget-object v6, v6, LC4/y;->d:Ljava/lang/String;

    const-string v7, "peerName"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v4, LC4/F;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, LD4/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "<set-?>"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v4, LC4/F;->b:Ljava/io/Serializable;

    iput-object v1, v4, LC4/F;->e:Ljava/lang/Object;

    iput-object v2, v4, LC4/F;->f:Ljava/lang/Object;

    iput-object p0, v4, LC4/F;->g:Ljava/lang/Object;

    new-instance v0, LJ4/o;

    invoke-direct {v0, v4}, LJ4/o;-><init>(LC4/F;)V

    iput-object v0, p0, LG4/k;->g:LJ4/o;

    sget-object v1, LJ4/o;->E:LJ4/B;

    iget v2, v1, LJ4/B;->a:I

    and-int/lit8 v2, v2, 0x10

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    iget-object v1, v1, LJ4/B;->b:[I

    aget v1, v1, v4

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    :goto_0
    iput v1, p0, LG4/k;->o:I

    iget-object v1, v0, LJ4/o;->B:LJ4/x;

    const-string v2, ">> CONNECTION "

    monitor-enter v1

    :try_start_0
    iget-boolean v6, v1, LJ4/x;->d:Z

    if-nez v6, :cond_a

    sget-object v6, LJ4/x;->f:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, LJ4/f;->a:LQ4/j;

    invoke-virtual {v2}, LQ4/j;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v2, v7}, LD4/c;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    :goto_1
    iget-object v2, v1, LJ4/x;->a:LQ4/r;

    sget-object v6, LJ4/f;->a:LQ4/j;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "byteString"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v7, v2, LQ4/r;->c:Z

    if-nez v7, :cond_9

    iget-object v7, v2, LQ4/r;->b:LQ4/g;

    invoke-virtual {v7, v6}, LQ4/g;->B(LQ4/j;)V

    invoke-virtual {v2}, LQ4/r;->b()LQ4/h;

    iget-object v2, v1, LJ4/x;->a:LQ4/r;

    invoke-virtual {v2}, LQ4/r;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v2, v0, LJ4/o;->B:LJ4/x;

    iget-object v1, v0, LJ4/o;->u:LJ4/B;

    monitor-enter v2

    :try_start_1
    const-string v6, "settings"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v6, v2, LJ4/x;->d:Z

    if-nez v6, :cond_8

    iget v6, v1, LJ4/B;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x6

    invoke-virtual {v2, v3, v6, v4, v3}, LJ4/x;->e(IIII)V

    move v6, v3

    :goto_2
    const/16 v7, 0xa

    if-ge v6, v7, :cond_6

    const/4 v7, 0x1

    shl-int v8, v7, v6

    iget v9, v1, LJ4/B;->a:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    move v7, v3

    :goto_3
    if-eqz v7, :cond_5

    if-eq v6, v4, :cond_4

    const/4 v7, 0x7

    if-eq v6, v7, :cond_3

    move v7, v6

    goto :goto_4

    :cond_3
    move v7, v4

    goto :goto_4

    :cond_4
    const/4 v7, 0x3

    :goto_4
    iget-object v8, v2, LJ4/x;->a:LQ4/r;

    invoke-virtual {v8, v7}, LQ4/r;->f(I)LQ4/h;

    iget-object v7, v2, LJ4/x;->a:LQ4/r;

    iget-object v8, v1, LJ4/B;->b:[I

    aget v8, v8, v6

    invoke-virtual {v7, v8}, LQ4/r;->e(I)LQ4/h;

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_5
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, v2, LJ4/x;->a:LQ4/r;

    invoke-virtual {v1}, LQ4/r;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    iget-object v1, v0, LJ4/o;->u:LJ4/B;

    invoke-virtual {v1}, LJ4/B;->a()I

    move-result v1

    const v2, 0xffff

    if-eq v1, v2, :cond_7

    iget-object v4, v0, LJ4/o;->B:LJ4/x;

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v4, v3, v1, v2}, LJ4/x;->q(IJ)V

    :cond_7
    invoke-virtual {v5}, LF4/c;->e()LF4/b;

    move-result-object v1

    iget-object v2, v0, LJ4/o;->c:Ljava/lang/String;

    iget-object v0, v0, LJ4/o;->C:LJ4/k;

    new-instance v3, LE4/h;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v0, v4}, LE4/h;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, LF4/b;->c(LF4/a;J)V

    return-void

    :cond_8
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_6
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_9
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_7
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LG4/k;->b:LC4/L;

    iget-object v2, v1, LC4/L;->a:LC4/a;

    iget-object v2, v2, LC4/a;->h:LC4/y;

    iget-object v2, v2, LC4/y;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v1, LC4/L;->a:LC4/a;

    iget-object v2, v2, LC4/a;->h:LC4/y;

    iget v2, v2, LC4/y;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", proxy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, LC4/L;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hostAddress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, LC4/L;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LG4/k;->e:LC4/u;

    if-eqz v1, :cond_0

    iget-object v1, v1, LC4/u;->b:LC4/n;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "none"

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LG4/k;->f:LC4/D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
