.class public final Lm3/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/z;


# static fields
.field public static final P:Ljava/util/Map;

.field public static final Q:Ljava/util/logging/Logger;


# instance fields
.field public final A:Ljavax/net/SocketFactory;

.field public final B:Ljavax/net/ssl/SSLSocketFactory;

.field public C:I

.field public final D:Ljava/util/LinkedList;

.field public final E:Ln3/b;

.field public F:Ll3/u0;

.field public G:Z

.field public H:J

.field public I:J

.field public final J:LA2/h;

.field public final K:I

.field public final L:Ll3/R1;

.field public final M:Ll3/h0;

.field public final N:Lj3/C;

.field public final O:I

.field public final a:Ljava/net/InetSocketAddress;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Random;

.field public final e:Ll3/P1;

.field public final f:I

.field public final g:Lo3/j;

.field public h:Lj0/d;

.field public i:Lm3/d;

.field public j:Lm3/w;

.field public final k:Ljava/lang/Object;

.field public final l:Lj3/J;

.field public m:I

.field public final n:Ljava/util/HashMap;

.field public final o:Ljava/util/concurrent/Executor;

.field public final p:Ll3/G1;

.field public final q:Ljava/util/concurrent/ScheduledExecutorService;

.field public final r:I

.field public s:I

.field public t:Lm3/m;

.field public u:Lj3/b;

.field public v:Lj3/r0;

.field public w:Z

.field public x:Ll3/g0;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lo3/a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lo3/a;->b:Lo3/a;

    sget-object v2, Lj3/r0;->l:Lj3/r0;

    const-string v3, "No error: A GRPC status of OK should have been sent"

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo3/a;->c:Lo3/a;

    const-string v3, "Protocol error"

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo3/a;->d:Lo3/a;

    const-string v3, "Internal error"

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo3/a;->e:Lo3/a;

    const-string v3, "Flow control error"

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo3/a;->f:Lo3/a;

    const-string v3, "Stream closed"

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo3/a;->l:Lo3/a;

    const-string v3, "Frame too large"

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo3/a;->m:Lo3/a;

    sget-object v3, Lj3/r0;->m:Lj3/r0;

    const-string v4, "Refused stream"

    invoke-virtual {v3, v4}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo3/a;->n:Lo3/a;

    sget-object v3, Lj3/r0;->f:Lj3/r0;

    const-string v4, "Cancelled"

    invoke-virtual {v3, v4}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo3/a;->o:Lo3/a;

    const-string v3, "Compression error"

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo3/a;->p:Lo3/a;

    const-string v3, "Connect error"

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo3/a;->q:Lo3/a;

    sget-object v2, Lj3/r0;->k:Lj3/r0;

    const-string v3, "Enhance your calm"

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lo3/a;->r:Lo3/a;

    sget-object v2, Lj3/r0;->i:Lj3/r0;

    const-string v3, "Inadequate security"

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lm3/n;->P:Ljava/util/Map;

    const-class v0, Lm3/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lm3/n;->Q:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lm3/f;Ljava/net/InetSocketAddress;Ljava/lang/String;Lj3/b;Lj3/C;LA2/h;)V
    .locals 5

    sget-object v0, Ll3/b0;->r:Ll3/P1;

    new-instance v1, Lo3/j;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Lm3/n;->d:Ljava/util/Random;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lm3/n;->k:Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lm3/n;->n:Ljava/util/HashMap;

    const/4 v3, 0x0

    iput v3, p0, Lm3/n;->C:I

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lm3/n;->D:Ljava/util/LinkedList;

    new-instance v3, Ll3/h0;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Ll3/h0;-><init>(Lj3/I;I)V

    iput-object v3, p0, Lm3/n;->M:Ll3/h0;

    const/16 v3, 0x7530

    iput v3, p0, Lm3/n;->O:I

    const-string v3, "address"

    invoke-static {p2, v3}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lm3/n;->a:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lm3/n;->b:Ljava/lang/String;

    iget p3, p1, Lm3/f;->m:I

    iput p3, p0, Lm3/n;->r:I

    iget p3, p1, Lm3/f;->q:I

    iput p3, p0, Lm3/n;->f:I

    iget-object p3, p1, Lm3/f;->b:Ljava/util/concurrent/Executor;

    const-string v3, "executor"

    invoke-static {p3, v3}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lm3/n;->o:Ljava/util/concurrent/Executor;

    new-instance p3, Ll3/G1;

    iget-object v3, p1, Lm3/f;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p3, v3}, Ll3/G1;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p3, p0, Lm3/n;->p:Ll3/G1;

    iget-object p3, p1, Lm3/f;->d:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v3, "scheduledExecutorService"

    invoke-static {p3, v3}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lm3/n;->q:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 p3, 0x3

    iput p3, p0, Lm3/n;->m:I

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p3

    iput-object p3, p0, Lm3/n;->A:Ljavax/net/SocketFactory;

    iget-object p3, p1, Lm3/f;->f:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p3, p0, Lm3/n;->B:Ljavax/net/ssl/SSLSocketFactory;

    iget-object p3, p1, Lm3/f;->l:Ln3/b;

    const-string v3, "connectionSpec"

    invoke-static {p3, v3}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lm3/n;->E:Ln3/b;

    const-string p3, "stopwatchFactory"

    invoke-static {v0, p3}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lm3/n;->e:Ll3/P1;

    iput-object v1, p0, Lm3/n;->g:Lo3/j;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "grpc-java-okhttp/1.52.1"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lm3/n;->c:Ljava/lang/String;

    iput-object p5, p0, Lm3/n;->N:Lj3/C;

    iput-object p6, p0, Lm3/n;->J:LA2/h;

    iget p3, p1, Lm3/f;->r:I

    iput p3, p0, Lm3/n;->K:I

    iget-object p1, p1, Lm3/f;->e:Ll3/P1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ll3/R1;

    invoke-direct {p1}, Ll3/R1;-><init>()V

    iput-object p1, p0, Lm3/n;->L:Ll3/R1;

    const-class p1, Lm3/n;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lj3/J;->a(Ljava/lang/Class;Ljava/lang/String;)Lj3/J;

    move-result-object p1

    iput-object p1, p0, Lm3/n;->l:Lj3/J;

    sget-object p1, Lj3/b;->b:Lj3/b;

    sget-object p2, Ll3/J1;->b:Lj3/a;

    new-instance p3, Ljava/util/IdentityHashMap;

    const/4 p5, 0x1

    invoke-direct {p3, p5}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-virtual {p3, p2, p4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lj3/b;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lj3/a;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Lj3/b;

    invoke-direct {p1, p3}, Lj3/b;-><init>(Ljava/util/IdentityHashMap;)V

    iput-object p1, p0, Lm3/n;->u:Lj3/b;

    monitor-enter v2

    :try_start_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static f(Lm3/n;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lo3/a;->c:Lo3/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lm3/n;->v(Lo3/a;)Lj3/r0;

    move-result-object v1

    invoke-virtual {v1, p1}, Lj3/r0;->b(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lm3/n;->r(ILo3/a;Lj3/r0;)V

    return-void
.end method

.method public static g(Lm3/n;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\r\n"

    const-string v1, "CONNECT "

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lm3/n;->A:Ljavax/net/SocketFactory;

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p2

    invoke-virtual {v4, v3, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p2

    invoke-virtual {v4, v3, p2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {p2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget v3, p0, Lm3/n;->O:I

    invoke-virtual {p2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {p2}, LL4/l;->E(Ljava/net/Socket;)LQ4/c;

    move-result-object v3

    invoke-static {p2}, LL4/l;->C(Ljava/net/Socket;)LQ4/b;

    move-result-object v4

    invoke-static {v4}, LL4/l;->f(LQ4/w;)LQ4/r;

    move-result-object v4

    invoke-virtual {p0, p1, p3, p4}, Lm3/n;->h(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Lj3/G;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    iget-object p1, p0, Lj3/G;->c:Ljava/lang/Object;

    check-cast p1, Li1/D;

    :try_start_3
    iget-object p0, p0, Lj3/G;->b:Ljava/lang/Object;

    check-cast p0, Lp3/a;

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object p3, p0, Lp3/a;->a:Ljava/lang/String;

    iget p0, p0, Lp3/a;->b:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " HTTP/1.1"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {v4, v0}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    iget-object p0, p1, Li1/D;->b:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    array-length p0, p0

    div-int/lit8 p0, p0, 0x2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 p3, 0x0

    move p4, p3

    :goto_1
    if-ge p4, p0, :cond_5

    mul-int/lit8 v1, p4, 0x2

    iget-object v5, p1, Li1/D;->b:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    if-ltz v1, :cond_2

    :try_start_4
    array-length v6, v5

    if-lt v1, v6, :cond_1

    goto :goto_3

    :cond_1
    aget-object v6, v5, v1

    goto :goto_4

    :goto_2
    move-object v2, p2

    goto/16 :goto_9

    :cond_2
    :goto_3
    move-object v6, v2

    :goto_4
    invoke-virtual {v4, v6}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    const-string v6, ": "

    invoke-virtual {v4, v6}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_4

    array-length v6, v5

    if-lt v1, v6, :cond_3

    goto :goto_5

    :cond_3
    aget-object v1, v5, v1

    goto :goto_6

    :cond_4
    :goto_5
    move-object v1, v2

    :goto_6
    invoke-interface {v4, v1}, LQ4/h;->h(Ljava/lang/String;)LQ4/h;

    invoke-interface {v4, v0}, LQ4/h;->h(Ljava/lang/String;)LQ4/h;

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v0}, LQ4/r;->h(Ljava/lang/String;)LQ4/h;

    invoke-virtual {v4}, LQ4/r;->flush()V

    invoke-static {v3}, Lm3/n;->p(LQ4/c;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LH4/h;->a(Ljava/lang/String;)LH4/h;

    move-result-object p0

    :goto_7
    invoke-static {v3}, Lm3/n;->p(LQ4/c;)Ljava/lang/String;

    move-result-object p1

    const-string p4, ""

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    if-nez p1, :cond_6

    goto :goto_7

    :cond_6
    const/16 p1, 0xc8

    iget p4, p0, LH4/h;->b:I

    if-lt p4, p1, :cond_7

    const/16 p1, 0x12c

    if-ge p4, p1, :cond_7

    :try_start_5
    invoke-virtual {p2, p3}, Ljava/net/Socket;->setSoTimeout(I)V

    return-object p2

    :cond_7
    new-instance p1, LQ4/g;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    invoke-virtual {p2}, Ljava/net/Socket;->shutdownOutput()V

    const-wide/16 v0, 0x400

    invoke-virtual {v3, p1, v0, v1}, LQ4/c;->l(LQ4/g;J)J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_8

    :catch_2
    move-exception p3

    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to read body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, LQ4/g;->J(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :catch_3
    :try_start_9
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object p0, p0, LH4/h;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1}, LQ4/g;->w()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Response returned from proxy was not successful (expected 2xx, got "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "). Response body:\n"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lj3/r0;->m:Lj3/r0;

    invoke-virtual {p1, p0}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p0

    new-instance p1, Lj3/s0;

    invoke-direct {p1, p0}, Lj3/s0;-><init>(Lj3/r0;)V

    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    if-eqz v2, :cond_8

    invoke-static {v2}, Ll3/b0;->b(Ljava/io/Closeable;)V

    :cond_8
    sget-object p1, Lj3/r0;->m:Lj3/r0;

    const-string p2, "Failed trying to connect with proxy"

    invoke-virtual {p1, p2}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p1

    invoke-virtual {p1, p0}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object p0

    new-instance p1, Lj3/s0;

    invoke-direct {p1, p0}, Lj3/s0;-><init>(Lj3/r0;)V

    throw p1
.end method

.method public static p(LQ4/c;)Ljava/lang/String;
    .locals 13

    new-instance v6, LQ4/g;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    :cond_0
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v6, v0, v1}, LQ4/c;->l(LQ4/g;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    iget-wide v2, v6, LQ4/g;->b:J

    sub-long/2addr v2, v0

    invoke-virtual {v6, v2, v3}, LQ4/g;->g(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v0, 0x0

    cmp-long p0, v7, v0

    if-ltz p0, :cond_4

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p0, v7, v0

    const-wide/16 v9, 0x1

    if-nez p0, :cond_1

    :goto_0
    move-wide v11, v0

    goto :goto_1

    :cond_1
    add-long v0, v7, v9

    goto :goto_0

    :goto_1
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object v0, v6

    move-wide v4, v11

    invoke-virtual/range {v0 .. v5}, LQ4/g;->m(BJJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_2

    invoke-static {v6, v0, v1}, LR4/a;->a(LQ4/g;J)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    iget-wide v0, v6, LQ4/g;->b:J

    cmp-long p0, v11, v0

    if-gez p0, :cond_3

    sub-long v0, v11, v9

    invoke-virtual {v6, v0, v1}, LQ4/g;->g(J)B

    move-result p0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_3

    invoke-virtual {v6, v11, v12}, LQ4/g;->g(J)B

    move-result p0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_3

    invoke-static {v6, v11, v12}, LR4/a;->a(LQ4/g;J)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_3
    new-instance p0, LQ4/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, v6, LQ4/g;->b:J

    const/16 v2, 0x20

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, LQ4/g;->e(LQ4/g;JJ)V

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\n not found: limit="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v6, LQ4/g;->b:J

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, LQ4/g;->b:J

    invoke-virtual {p0, v2, v3}, LQ4/g;->s(J)LQ4/j;

    move-result-object p0

    invoke-virtual {p0}, LQ4/j;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2026

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p0, "limit < 0: "

    invoke-static {v7, v8, p0}, Le1/i;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p0, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\n not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v6, LQ4/g;->b:J

    invoke-virtual {v6, v1, v2}, LQ4/g;->s(J)LQ4/j;

    move-result-object v1

    invoke-virtual {v1}, LQ4/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static v(Lo3/a;)Lj3/r0;
    .locals 3

    sget-object v0, Lm3/n;->P:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj3/r0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lj3/r0;->g:Lj3/r0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown http2 error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lo3/a;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Ll3/S0;)Ljava/lang/Runnable;
    .locals 7

    check-cast p1, Lj0/d;

    iput-object p1, p0, Lm3/n;->h:Lj0/d;

    iget-boolean p1, p0, Lm3/n;->G:Z

    if-eqz p1, :cond_0

    new-instance p1, Ll3/u0;

    new-instance v1, Li1/D;

    const/4 v0, 0x7

    invoke-direct {v1, p0, v0}, Li1/D;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Lm3/n;->q:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v3, p0, Lm3/n;->H:J

    iget-wide v5, p0, Lm3/n;->I:J

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ll3/u0;-><init>(Li1/D;Ljava/util/concurrent/ScheduledExecutorService;JJ)V

    iput-object p1, p0, Lm3/n;->F:Ll3/u0;

    monitor-enter p1

    monitor-exit p1

    :cond_0
    iget-object p1, p0, Lm3/n;->p:Ll3/G1;

    new-instance v0, Lm3/c;

    invoke-direct {v0, p1, p0}, Lm3/c;-><init>(Ll3/G1;Lm3/n;)V

    iget-object p1, p0, Lm3/n;->g:Lo3/j;

    invoke-static {v0}, LL4/l;->f(LQ4/w;)LQ4/r;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lo3/i;

    invoke-direct {p1, v1}, Lo3/i;-><init>(LQ4/r;)V

    new-instance v1, Lm3/b;

    invoke-direct {v1, v0, p1}, Lm3/b;-><init>(Lm3/c;Lo3/i;)V

    iget-object p1, p0, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    new-instance v2, Lm3/d;

    invoke-direct {v2, p0, v1}, Lm3/d;-><init>(Lm3/n;Lm3/b;)V

    iput-object v2, p0, Lm3/n;->i:Lm3/d;

    new-instance v1, Lm3/w;

    invoke-direct {v1, p0, v2}, Lm3/w;-><init>(Lm3/n;Lm3/d;)V

    iput-object v1, p0, Lm3/n;->j:Lm3/w;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lm3/n;->p:Ll3/G1;

    new-instance v2, LJ/k;

    const/16 v3, 0xd

    invoke-direct {v2, p0, p1, v0, v3}, LJ/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ll3/G1;->execute(Ljava/lang/Runnable;)V

    :try_start_1
    invoke-virtual {p0}, Lm3/n;->q()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p1, p0, Lm3/n;->p:Ll3/G1;

    new-instance v0, Lm3/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm3/l;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Ll3/G1;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final b(Lj3/r0;)V
    .locals 7

    invoke-virtual {p0, p1}, Lm3/n;->c(Lj3/r0;)V

    iget-object v0, p0, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm3/n;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm3/j;

    iget-object v3, v3, Lm3/j;->n:Lm3/i;

    new-instance v4, Lj3/f0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5, v4}, Ll3/a;->g(Lj3/r0;ZLj3/f0;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm3/j;

    invoke-virtual {p0, v2}, Lm3/n;->n(Lm3/j;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lm3/n;->D:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm3/j;

    iget-object v3, v2, Lm3/j;->n:Lm3/i;

    sget-object v4, Ll3/t;->d:Ll3/t;

    new-instance v5, Lj3/f0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v3, p1, v4, v6, v5}, Ll3/a;->f(Lj3/r0;Ll3/t;ZLj3/f0;)V

    invoke-virtual {p0, v2}, Lm3/n;->n(Lm3/j;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lm3/n;->D:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p0}, Lm3/n;->u()V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Lj3/r0;)V
    .locals 2

    iget-object v0, p0, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm3/n;->v:Lj3/r0;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lm3/n;->v:Lj3/r0;

    iget-object v1, p0, Lm3/n;->h:Lj0/d;

    invoke-virtual {v1, p1}, Lj0/d;->f(Lj3/r0;)V

    invoke-virtual {p0}, Lm3/n;->u()V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Lj3/h0;Lj3/f0;Lj3/g;[Lj3/B;)Ll3/s;
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p4

    const-string v1, "method"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "headers"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Ll3/N1;

    invoke-direct {v12, v0}, Ll3/N1;-><init>([Lj3/B;)V

    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v14, v15, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    new-instance v0, Lm3/j;

    iget-object v4, v15, Lm3/n;->i:Lm3/d;

    iget-object v6, v15, Lm3/n;->j:Lm3/w;

    iget-object v7, v15, Lm3/n;->k:Ljava/lang/Object;

    iget v8, v15, Lm3/n;->r:I

    iget v9, v15, Lm3/n;->f:I

    iget-object v10, v15, Lm3/n;->b:Ljava/lang/String;

    iget-object v11, v15, Lm3/n;->c:Ljava/lang/String;

    iget-object v13, v15, Lm3/n;->L:Ll3/R1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p0

    move-object/from16 v16, v14

    move-object/from16 v14, p3

    :try_start_1
    invoke-direct/range {v1 .. v14}, Lm3/j;-><init>(Lj3/h0;Lj3/f0;Lm3/d;Lm3/n;Lm3/w;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Ll3/N1;Ll3/R1;Lj3/g;)V

    monitor-exit v16

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v14

    :goto_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final e()Lj3/J;
    .locals 1

    iget-object v0, p0, Lm3/n;->l:Lj3/J;

    return-object v0
.end method

.method public final h(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Lj3/G;
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    new-instance v2, LH4/h;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, LH4/h;-><init>(I)V

    const/4 v3, -0x1

    iput v3, v2, LH4/h;->b:I

    const-string v4, "https"

    iput-object v4, v2, LH4/h;->d:Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "host == null"

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_3

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x25

    if-eq v9, v10, :cond_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-instance v9, LQ4/g;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9, v7, v8, v4}, LQ4/g;->I(IILjava/lang/String;)V

    :goto_1
    if-ge v8, v6, :cond_2

    invoke-virtual {v4, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    if-ne v11, v10, :cond_1

    add-int/lit8 v12, v8, 0x2

    if-ge v12, v6, :cond_1

    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lp3/a;->a(C)I

    move-result v13

    invoke-virtual {v4, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Lp3/a;->a(C)I

    move-result v14

    if-eq v13, v3, :cond_1

    if-eq v14, v3, :cond_1

    shl-int/lit8 v8, v13, 0x4

    add-int/2addr v8, v14

    invoke-virtual {v9, v8}, LQ4/g;->E(I)V

    move v8, v12

    goto :goto_2

    :cond_1
    invoke-virtual {v9, v11}, LQ4/g;->K(I)V

    :goto_2
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v8, v11

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, LQ4/g;->w()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_3
    const-string v8, "["

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v9, ":"

    if-eqz v8, :cond_27

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    const/16 v12, 0x10

    new-array v13, v12, [B

    move v10, v3

    move/from16 v16, v10

    move v15, v7

    move v14, v11

    :goto_4
    if-ge v14, v8, :cond_1a

    if-ne v15, v12, :cond_5

    :cond_4
    :goto_5
    move v3, v7

    :goto_6
    const/4 v6, 0x0

    goto/16 :goto_12

    :cond_5
    add-int/lit8 v11, v14, 0x2

    const/4 v12, 0x2

    if-gt v11, v8, :cond_8

    const-string v3, "::"

    invoke-virtual {v6, v14, v3, v7, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, -0x1

    if-eq v10, v3, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v15, v15, 0x2

    if-ne v11, v8, :cond_7

    move v10, v15

    :goto_7
    const/16 v3, 0x10

    goto/16 :goto_10

    :cond_7
    move v14, v11

    move v10, v15

    :goto_8
    const/4 v3, 0x1

    goto/16 :goto_d

    :cond_8
    if-eqz v15, :cond_16

    const/4 v3, 0x1

    invoke-virtual {v6, v14, v9, v7, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_9

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_d

    :cond_9
    const-string v11, "."

    invoke-virtual {v6, v14, v11, v7, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, v15, -0x2

    move v12, v3

    move/from16 v11, v16

    :goto_9
    if-ge v11, v8, :cond_13

    const/16 v14, 0x10

    if-ne v12, v14, :cond_a

    goto :goto_c

    :cond_a
    if-eq v12, v3, :cond_c

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v7, 0x2e

    if-eq v14, v7, :cond_b

    goto :goto_c

    :cond_b
    add-int/lit8 v11, v11, 0x1

    :cond_c
    move v7, v11

    const/4 v14, 0x0

    :goto_a
    move/from16 v17, v3

    if-ge v7, v8, :cond_10

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v18, v10

    const/16 v10, 0x30

    if-lt v3, v10, :cond_11

    const/16 v10, 0x39

    if-le v3, v10, :cond_d

    goto :goto_b

    :cond_d
    if-nez v14, :cond_e

    if-eq v11, v7, :cond_e

    goto :goto_c

    :cond_e
    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v14, v3

    const/16 v3, 0x30

    sub-int/2addr v14, v3

    const/16 v3, 0xff

    if-le v14, v3, :cond_f

    goto :goto_c

    :cond_f
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v17

    move/from16 v10, v18

    goto :goto_a

    :cond_10
    move/from16 v18, v10

    :cond_11
    :goto_b
    sub-int v3, v7, v11

    if-nez v3, :cond_12

    goto :goto_c

    :cond_12
    add-int/lit8 v3, v12, 0x1

    int-to-byte v10, v14

    aput-byte v10, v13, v12

    move v12, v3

    move v11, v7

    move/from16 v3, v17

    move/from16 v10, v18

    const/4 v7, 0x0

    goto :goto_9

    :cond_13
    move/from16 v18, v10

    add-int/lit8 v3, v15, 0x2

    if-eq v12, v3, :cond_15

    :cond_14
    :goto_c
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_15
    add-int/lit8 v15, v15, 0x2

    move/from16 v10, v18

    goto/16 :goto_7

    :cond_16
    move/from16 v18, v10

    goto/16 :goto_8

    :goto_d
    move v7, v14

    const/4 v11, 0x0

    :goto_e
    if-ge v7, v8, :cond_18

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Lp3/a;->a(C)I

    move-result v3

    const/4 v12, -0x1

    if-ne v3, v12, :cond_17

    goto :goto_f

    :cond_17
    shl-int/lit8 v11, v11, 0x4

    add-int/2addr v11, v3

    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x1

    const/4 v12, 0x2

    goto :goto_e

    :cond_18
    :goto_f
    sub-int v3, v7, v14

    if-eqz v3, :cond_14

    const/4 v12, 0x4

    if-le v3, v12, :cond_19

    goto :goto_c

    :cond_19
    add-int/lit8 v3, v15, 0x1

    ushr-int/lit8 v12, v11, 0x8

    move/from16 v18, v7

    const/16 v7, 0xff

    and-int/2addr v7, v12

    int-to-byte v7, v7

    aput-byte v7, v13, v15

    const/4 v7, 0x2

    add-int/2addr v15, v7

    and-int/lit16 v7, v11, 0xff

    int-to-byte v7, v7

    aput-byte v7, v13, v3

    move/from16 v16, v14

    move/from16 v14, v18

    const/4 v3, -0x1

    const/4 v7, 0x0

    const/16 v12, 0x10

    goto/16 :goto_4

    :cond_1a
    move/from16 v18, v10

    move v3, v12

    :goto_10
    if-eq v15, v3, :cond_1c

    const/4 v6, -0x1

    if-ne v10, v6, :cond_1b

    goto :goto_c

    :cond_1b
    sub-int v6, v15, v10

    rsub-int/lit8 v7, v6, 0x10

    invoke-static {v13, v10, v13, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v12, v15, 0x10

    add-int/2addr v12, v10

    const/4 v3, 0x0

    invoke-static {v13, v10, v12, v3}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_11

    :cond_1c
    const/4 v3, 0x0

    :goto_11
    :try_start_0
    invoke-static {v13}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_12
    if-nez v6, :cond_1e

    :catch_0
    :cond_1d
    :goto_13
    const/4 v10, 0x0

    goto/16 :goto_18

    :cond_1e
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    array-length v7, v6

    const/16 v8, 0x10

    if-ne v7, v8, :cond_26

    move v10, v3

    move v11, v10

    const/4 v7, -0x1

    :goto_14
    array-length v12, v6

    if-ge v10, v12, :cond_21

    move v12, v10

    :goto_15
    if-ge v12, v8, :cond_1f

    aget-byte v8, v6, v12

    if-nez v8, :cond_1f

    add-int/lit8 v8, v12, 0x1

    aget-byte v8, v6, v8

    if-nez v8, :cond_1f

    add-int/lit8 v12, v12, 0x2

    const/16 v8, 0x10

    goto :goto_15

    :cond_1f
    sub-int v8, v12, v10

    if-le v8, v11, :cond_20

    move v11, v8

    move v7, v10

    :cond_20
    add-int/lit8 v10, v12, 0x2

    const/16 v8, 0x10

    goto :goto_14

    :cond_21
    new-instance v8, LQ4/g;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    :cond_22
    :goto_16
    array-length v10, v6

    if-ge v3, v10, :cond_25

    const/16 v10, 0x3a

    if-ne v3, v7, :cond_23

    invoke-virtual {v8, v10}, LQ4/g;->E(I)V

    add-int/2addr v3, v11

    const/16 v12, 0x10

    if-ne v3, v12, :cond_22

    invoke-virtual {v8, v10}, LQ4/g;->E(I)V

    goto :goto_16

    :cond_23
    const/16 v12, 0x10

    if-lez v3, :cond_24

    invoke-virtual {v8, v10}, LQ4/g;->E(I)V

    :cond_24
    aget-byte v10, v6, v3

    const/16 v13, 0xff

    and-int/2addr v10, v13

    shl-int/lit8 v10, v10, 0x8

    add-int/lit8 v14, v3, 0x1

    aget-byte v14, v6, v14

    and-int/2addr v14, v13

    or-int/2addr v10, v14

    int-to-long v14, v10

    invoke-virtual {v8, v14, v15}, LQ4/g;->G(J)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_16

    :cond_25
    invoke-virtual {v8}, LQ4/g;->w()Ljava/lang/String;

    move-result-object v10

    goto :goto_18

    :cond_26
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_27
    move v3, v7

    :try_start_1
    invoke-static {v6}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_28

    goto/16 :goto_13

    :cond_28
    move v7, v3

    :goto_17
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v7, v3, :cond_2b

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x1f

    if-le v3, v8, :cond_1d

    const/16 v8, 0x7f

    if-lt v3, v8, :cond_29

    goto/16 :goto_13

    :cond_29
    const-string v8, " #%/:?@[\\]"

    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v8, -0x1

    if-eq v3, v8, :cond_2a

    goto/16 :goto_13

    :cond_2a
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_2b
    move-object v10, v6

    :goto_18
    if-eqz v10, :cond_30

    iput-object v10, v2, LH4/h;->c:Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    if-lez v3, :cond_2f

    const v4, 0xffff

    if-gt v3, v4, :cond_2f

    iput v3, v2, LH4/h;->b:I

    iget-object v3, v2, LH4/h;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2e

    new-instance v3, Lp3/a;

    invoke-direct {v3, v2}, Lp3/a;-><init>(LH4/h;)V

    new-instance v2, Lj3/G;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lj3/G;-><init>(IZ)V

    new-instance v4, LC4/v;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, LC4/v;-><init>(I)V

    iput-object v4, v2, Lj3/G;->c:Ljava/lang/Object;

    iput-object v3, v2, Lj3/G;->b:Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lp3/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lp3/a;->b:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Host"

    invoke-virtual {v2, v4, v3}, Lj3/G;->q(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "User-Agent"

    move-object/from16 v6, p0

    iget-object v4, v6, Lm3/n;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lj3/G;->q(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2c

    if-eqz v1, :cond_2c

    const-string v3, "Basic "

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, LQ4/j;->h([B)LQ4/j;

    move-result-object v0

    invoke-virtual {v0}, LQ4/j;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    const-string v1, "Proxy-Authorization"

    invoke-virtual {v2, v1, v0}, Lj3/G;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :catch_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2c
    :goto_19
    iget-object v0, v2, Lj3/G;->b:Ljava/lang/Object;

    check-cast v0, Lp3/a;

    if-eqz v0, :cond_2d

    new-instance v0, Lj3/G;

    invoke-direct {v0, v2}, Lj3/G;-><init>(Lj3/G;)V

    return-object v0

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    move-object/from16 v6, p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    move-object/from16 v6, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected port: "

    invoke-static {v3, v1}, Le1/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    move-object/from16 v6, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected host: "

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    move-object/from16 v6, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i(ILj3/r0;Ll3/t;ZLo3/a;Lj3/f0;)V
    .locals 3

    iget-object v0, p0, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm3/n;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm3/j;

    if-eqz v1, :cond_3

    if-eqz p5, :cond_0

    iget-object p5, p0, Lm3/n;->i:Lm3/d;

    sget-object v2, Lo3/a;->n:Lo3/a;

    invoke-virtual {p5, p1, v2}, Lm3/d;->f(ILo3/a;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    iget-object p1, v1, Lm3/j;->n:Lm3/i;

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    new-instance p6, Lj3/f0;

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    :goto_1
    invoke-virtual {p1, p2, p3, p4, p6}, Ll3/a;->f(Lj3/r0;Ll3/t;ZLj3/f0;)V

    :cond_2
    invoke-virtual {p0}, Lm3/n;->s()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lm3/n;->u()V

    invoke-virtual {p0, v1}, Lm3/n;->n(Lm3/j;)V

    :cond_3
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final j()[Lm3/v;
    .locals 7

    iget-object v0, p0, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm3/n;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Lm3/v;

    iget-object v2, p0, Lm3/n;->n:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm3/j;

    add-int/lit8 v5, v3, 0x1

    iget-object v4, v4, Lm3/j;->n:Lm3/i;

    iget-object v6, v4, Lm3/i;->w:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v4, Lm3/i;->J:Lm3/v;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    aput-object v4, v1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v5

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :cond_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public final k()I
    .locals 3

    iget-object v0, p0, Lm3/n;->b:Ljava/lang/String;

    invoke-static {v0}, Ll3/b0;->a(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lm3/n;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public final l()Lj3/s0;
    .locals 3

    iget-object v0, p0, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm3/n;->v:Lj3/r0;

    if-eqz v1, :cond_0

    new-instance v2, Lj3/s0;

    invoke-direct {v2, v1}, Lj3/s0;-><init>(Lj3/r0;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    sget-object v1, Lj3/r0;->m:Lj3/r0;

    const-string v2, "Connection closed"

    invoke-virtual {v1, v2}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v1

    new-instance v2, Lj3/s0;

    invoke-direct {v2, v1}, Lj3/s0;-><init>(Lj3/r0;)V

    monitor-exit v0

    return-object v2

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final m(I)Z
    .locals 2

    iget-object v0, p0, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lm3/n;->m:I

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final n(Lm3/j;)V
    .locals 4

    iget-boolean v0, p0, Lm3/n;->z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lm3/n;->D:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lm3/n;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lm3/n;->z:Z

    iget-object v0, p0, Lm3/n;->F:Ll3/u0;

    if-eqz v0, :cond_3

    monitor-enter v0

    :try_start_0
    iget v2, v0, Ll3/u0;->d:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    iput v2, v0, Ll3/u0;->d:I

    :cond_1
    iget v2, v0, Ll3/u0;->d:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/4 v2, 0x5

    iput v2, v0, Ll3/u0;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_2
    iget-boolean v0, p1, Ll3/b;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lm3/n;->M:Ll3/h0;

    invoke-virtual {v0, p1, v1}, LB/y;->f(Ljava/lang/Object;Z)V

    :cond_4
    return-void
.end method

.method public final o(Ljava/lang/Exception;)V
    .locals 2

    sget-object v0, Lj3/r0;->m:Lj3/r0;

    invoke-virtual {v0, p1}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object p1

    sget-object v0, Lo3/a;->d:Lo3/a;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lm3/n;->r(ILo3/a;Lj3/r0;)V

    return-void
.end method

.method public final q()V
    .locals 5

    iget-object v0, p0, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm3/n;->i:Lm3/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v1, Lm3/d;->b:Lm3/b;

    invoke-virtual {v2}, Lm3/b;->c()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    iget-object v1, v1, Lm3/d;->a:Lm3/n;

    invoke-virtual {v1, v2}, Lm3/n;->o(Ljava/lang/Exception;)V

    :goto_0
    new-instance v1, LG4/n;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LG4/n;-><init>(I)V

    iget v2, p0, Lm3/n;->f:I

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, LG4/n;->f(II)V

    iget-object v2, p0, Lm3/n;->i:Lm3/d;

    const/4 v3, 0x2

    iget-object v4, v2, Lm3/d;->c:Lj3/G;

    invoke-virtual {v4, v3, v1}, Lj3/G;->z(ILG4/n;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, v2, Lm3/d;->b:Lm3/b;

    invoke-virtual {v3, v1}, Lm3/b;->m(LG4/n;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    iget-object v2, v2, Lm3/d;->a:Lm3/n;

    invoke-virtual {v2, v1}, Lm3/n;->o(Ljava/lang/Exception;)V

    :goto_1
    iget v1, p0, Lm3/n;->f:I

    const v2, 0xffff

    if-le v1, v2, :cond_0

    iget-object v3, p0, Lm3/n;->i:Lm3/d;

    sub-int/2addr v1, v2

    int-to-long v1, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v2}, Lm3/d;->g(IJ)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public final r(ILo3/a;Lj3/r0;)V
    .locals 7

    iget-object v0, p0, Lm3/n;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm3/n;->v:Lj3/r0;

    if-nez v1, :cond_0

    iput-object p3, p0, Lm3/n;->v:Lj3/r0;

    iget-object v1, p0, Lm3/n;->h:Lj0/d;

    invoke-virtual {v1, p3}, Lj0/d;->f(Lj3/r0;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget-boolean v3, p0, Lm3/n;->w:Z

    if-nez v3, :cond_1

    iput-boolean v1, p0, Lm3/n;->w:Z

    iget-object v3, p0, Lm3/n;->i:Lm3/d;

    new-array v4, v2, [B

    invoke-virtual {v3, p2, v4}, Lm3/d;->c(Lo3/a;[B)V

    :cond_1
    iget-object p2, p0, Lm3/n;->n:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, p1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm3/j;

    iget-object v4, v4, Lm3/j;->n:Lm3/i;

    sget-object v5, Ll3/t;->b:Ll3/t;

    new-instance v6, Lj3/f0;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, p3, v5, v2, v6}, Ll3/a;->f(Lj3/r0;Ll3/t;ZLj3/f0;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm3/j;

    invoke-virtual {p0, v3}, Lm3/n;->n(Lm3/j;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lm3/n;->D:Ljava/util/LinkedList;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lm3/j;

    iget-object v2, p2, Lm3/j;->n:Lm3/i;

    sget-object v3, Ll3/t;->d:Ll3/t;

    new-instance v4, Lj3/f0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, p3, v3, v1, v4}, Ll3/a;->f(Lj3/r0;Ll3/t;ZLj3/f0;)V

    invoke-virtual {p0, p2}, Lm3/n;->n(Lm3/j;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lm3/n;->D:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p0}, Lm3/n;->u()V

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final s()Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lm3/n;->D:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lm3/n;->n:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget v3, p0, Lm3/n;->C:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm3/j;

    invoke-virtual {p0, v0}, Lm3/n;->t(Lm3/j;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final t(Lm3/j;)V
    .locals 8

    iget-object v0, p1, Lm3/j;->n:Lm3/i;

    iget v0, v0, Lm3/i;->K:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v4, "StreamId already assigned"

    invoke-static {v0, v4}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Lm3/n;->n:Ljava/util/HashMap;

    iget v4, p0, Lm3/n;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lm3/n;->z:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lm3/n;->z:Z

    iget-object v0, p0, Lm3/n;->F:Ll3/u0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ll3/u0;->b()V

    :cond_1
    iget-boolean v0, p1, Ll3/b;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lm3/n;->M:Ll3/h0;

    invoke-virtual {v0, p1, v1}, LB/y;->f(Ljava/lang/Object;Z)V

    :cond_2
    iget-object v0, p1, Lm3/j;->n:Lm3/i;

    iget v4, p0, Lm3/n;->m:I

    iget v5, v0, Lm3/i;->K:I

    if-ne v5, v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    const-string v5, "the stream has been started with id %s"

    if-eqz v3, :cond_e

    iput v4, v0, Lm3/i;->K:I

    iget-object v3, v0, Lm3/i;->F:Lm3/w;

    new-instance v5, Lm3/v;

    iget v6, v3, Lm3/w;->c:I

    invoke-direct {v5, v3, v4, v6, v0}, Lm3/v;-><init>(Lm3/w;IILm3/u;)V

    iput-object v5, v0, Lm3/i;->J:Lm3/v;

    iget-object v3, v0, Lm3/i;->L:Lm3/j;

    iget-object v3, v3, Lm3/j;->n:Lm3/i;

    iget-object v4, v3, Ll3/a;->j:Ll3/u;

    if-eqz v4, :cond_d

    iget-object v4, v3, Ll3/a;->b:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v5, v3, Ll3/a;->f:Z

    xor-int/2addr v5, v1

    const-string v6, "Already allocated"

    invoke-static {v5, v6}, LZ2/l;->m(ZLjava/lang/String;)V

    iput-boolean v1, v3, Ll3/a;->f:Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, v3, Ll3/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {v3}, Ll3/a;->e()Z

    move-result v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_4

    iget-object v1, v3, Ll3/a;->j:Ll3/u;

    invoke-interface {v1}, Ll3/u;->c()V

    :cond_4
    iget-object v1, v3, Ll3/a;->c:Ll3/R1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v1, Ll3/P1;

    invoke-virtual {v1}, Ll3/P1;->f()J

    iget-boolean v1, v0, Lm3/i;->H:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lm3/i;->E:Lm3/d;

    iget-object v3, v0, Lm3/i;->L:Lm3/j;

    iget-boolean v3, v3, Lm3/j;->q:Z

    iget v4, v0, Lm3/i;->K:I

    iget-object v5, v0, Lm3/i;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget-object v6, v1, Lm3/d;->b:Lm3/b;

    iget-object v6, v6, Lm3/b;->a:Lo3/i;

    monitor-enter v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-boolean v7, v6, Lo3/i;->e:Z

    if-nez v7, :cond_5

    invoke-virtual {v6, v3, v4, v5}, Lo3/i;->c(ZILjava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_5
    :try_start_5
    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v3

    iget-object v1, v1, Lm3/d;->a:Lm3/n;

    invoke-virtual {v1, v3}, Lm3/n;->o(Ljava/lang/Exception;)V

    :goto_2
    iget-object v1, v0, Lm3/i;->L:Lm3/j;

    iget-object v1, v1, Lm3/j;->l:Ll3/N1;

    iget-object v1, v1, Ll3/N1;->a:[Lj3/B;

    array-length v3, v1

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_6

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    iput-object v1, v0, Lm3/i;->x:Ljava/util/ArrayList;

    iget-object v1, v0, Lm3/i;->y:LQ4/g;

    iget-wide v3, v1, LQ4/g;->b:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    iget-object v3, v0, Lm3/i;->F:Lm3/w;

    iget-boolean v4, v0, Lm3/i;->z:Z

    iget-object v5, v0, Lm3/i;->J:Lm3/v;

    iget-boolean v6, v0, Lm3/i;->A:Z

    invoke-virtual {v3, v4, v5, v1, v6}, Lm3/w;->a(ZLm3/v;LQ4/g;Z)V

    :cond_7
    iput-boolean v2, v0, Lm3/i;->H:Z

    :cond_8
    iget-object v0, p1, Lm3/j;->j:Lj3/h0;

    iget-object v0, v0, Lj3/h0;->a:Lj3/g0;

    sget-object v1, Lj3/g0;->a:Lj3/g0;

    if-eq v0, v1, :cond_9

    sget-object v1, Lj3/g0;->b:Lj3/g0;

    if-ne v0, v1, :cond_a

    :cond_9
    iget-boolean p1, p1, Lm3/j;->q:Z

    if-eqz p1, :cond_b

    :cond_a
    iget-object p1, p0, Lm3/n;->i:Lm3/d;

    invoke-virtual {p1}, Lm3/d;->flush()V

    :cond_b
    iget p1, p0, Lm3/n;->m:I

    const v0, 0x7ffffffd

    if-lt p1, v0, :cond_c

    const p1, 0x7fffffff

    iput p1, p0, Lm3/n;->m:I

    sget-object v0, Lo3/a;->b:Lo3/a;

    sget-object v1, Lj3/r0;->m:Lj3/r0;

    const-string v2, "Stream ids exhausted"

    invoke-virtual {v1, v2}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lm3/n;->r(ILo3/a;Lj3/r0;)V

    goto :goto_4

    :cond_c
    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lm3/n;->m:I

    :goto_4
    return-void

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, La/a;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    iget-object v1, p0, Lm3/n;->l:Lj3/J;

    iget-wide v1, v1, Lj3/J;->c:J

    const-string v3, "logId"

    invoke-virtual {v0, v1, v2, v3}, LE4/d;->c(JLjava/lang/String;)V

    const-string v1, "address"

    iget-object v2, p0, Lm3/n;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 9

    iget-object v0, p0, Lm3/n;->v:Lj3/r0;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lm3/n;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lm3/n;->D:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-boolean v0, p0, Lm3/n;->y:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm3/n;->y:Z

    iget-object v1, p0, Lm3/n;->F:Ll3/u0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    monitor-enter v1

    :try_start_0
    iget v4, v1, Ll3/u0;->d:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_3

    iput v5, v1, Ll3/u0;->d:I

    iget-object v4, v1, Ll3/u0;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_2

    invoke-interface {v4, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v4, v1, Ll3/u0;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v4, :cond_3

    invoke-interface {v4, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v2, v1, Ll3/u0;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v1

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lm3/n;->x:Ll3/g0;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lm3/n;->l()Lj3/s0;

    move-result-object v4

    monitor-enter v1

    :try_start_2
    iget-boolean v5, v1, Ll3/g0;->d:Z

    if-eqz v5, :cond_5

    monitor-exit v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_5
    iput-boolean v0, v1, Ll3/g0;->d:Z

    iput-object v4, v1, Ll3/g0;->e:Lj3/s0;

    iget-object v5, v1, Ll3/g0;->c:Ljava/util/LinkedHashMap;

    iput-object v2, v1, Ll3/g0;->c:Ljava/util/LinkedHashMap;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll3/t0;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    new-instance v7, Ll3/f0;

    invoke-direct {v7, v6, v4}, Ll3/f0;-><init>(Ll3/t0;Lj3/s0;)V

    :try_start_3
    invoke-interface {v5, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v5

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "Failed to execute PingCallback"

    sget-object v8, Ll3/g0;->g:Ljava/util/logging/Logger;

    invoke-virtual {v8, v6, v7, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    :goto_4
    iput-object v2, p0, Lm3/n;->x:Ll3/g0;

    goto :goto_6

    :goto_5
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_7
    :goto_6
    iget-boolean v1, p0, Lm3/n;->w:Z

    if-nez v1, :cond_8

    iput-boolean v0, p0, Lm3/n;->w:Z

    iget-object v0, p0, Lm3/n;->i:Lm3/d;

    sget-object v1, Lo3/a;->b:Lo3/a;

    new-array v2, v3, [B

    invoke-virtual {v0, v1, v2}, Lm3/d;->c(Lo3/a;[B)V

    :cond_8
    iget-object v0, p0, Lm3/n;->i:Lm3/d;

    invoke-virtual {v0}, Lm3/d;->close()V

    :cond_9
    :goto_7
    return-void
.end method
