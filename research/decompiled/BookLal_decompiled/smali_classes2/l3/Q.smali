.class public final Ll3/Q;
.super Lj3/B;
.source "SourceFile"


# static fields
.field public static final s:Ljava/util/logging/Logger;

.field public static final t:Ljava/util/Set;

.field public static final u:Z

.field public static final v:Z

.field public static final w:Z

.field public static x:Ljava/lang/String;


# instance fields
.field public final a:Ll3/g1;

.field public final b:Ljava/util/Random;

.field public volatile c:Ll3/O;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I

.field public final h:Ll3/P1;

.field public final i:J

.field public final j:Lj3/w0;

.field public final k:LJ2/j;

.field public l:Z

.field public m:Z

.field public n:Ljava/util/concurrent/Executor;

.field public final o:Z

.field public final p:Ll3/C1;

.field public q:Z

.field public r:LJ2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, Ll3/Q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Ll3/Q;->s:Ljava/util/logging/Logger;

    new-instance v2, Ljava/util/HashSet;

    const-string v3, "clientLanguage"

    const-string v4, "percentage"

    const-string v5, "clientHostname"

    const-string v6, "serviceConfig"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Ll3/Q;->t:Ljava/util/Set;

    const-string v2, "io.grpc.internal.DnsNameResolverProvider.enable_jndi"

    const-string v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost"

    const-string v4, "false"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "io.grpc.internal.DnsNameResolverProvider.enable_service_config"

    invoke-static {v5, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Ll3/Q;->u:Z

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Ll3/Q;->v:Z

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Ll3/Q;->w:Z

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_0
    const-string v2, "l3.p0"

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ll3/P;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_0

    throw v2

    :cond_0
    :try_start_3
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Can\'t construct JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Can\'t find JndiResourceResolverFactory ctor, skipping."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :goto_0
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to cast JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to find JndiResourceResolverFactory, skipping."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LG4/o;Ll3/P1;LJ2/j;Z)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Ll3/Q;->b:Ljava/util/Random;

    sget-object v0, Ll3/O;->a:Ll3/O;

    iput-object v0, p0, Ll3/Q;->c:Ll3/O;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Ll3/Q;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "args"

    invoke-static {p2, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Ll3/Q;->h:Ll3/P1;

    const-string p3, "name"

    invoke-static {p1, p3}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "//"

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Invalid DNS name: %s"

    invoke-static {v0, v3, p1}, LZ2/l;->h(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iput-object p1, p0, Ll3/Q;->e:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll3/Q;->f:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/net/URI;->getPort()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget p1, p2, LG4/o;->b:I

    iput p1, p0, Ll3/Q;->g:I

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/net/URI;->getPort()I

    move-result p1

    iput p1, p0, Ll3/Q;->g:I

    :goto_1
    iget-object p1, p2, LG4/o;->c:Ljava/lang/Object;

    check-cast p1, Ll3/g1;

    const-string p3, "proxyDetector"

    invoke-static {p1, p3}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ll3/Q;->a:Ll3/g1;

    const-wide/16 v3, 0x0

    if-eqz p5, :cond_2

    goto :goto_3

    :cond_2
    const-string p1, "networkaddress.cache.ttl"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-wide/16 v5, 0x1e

    if-eqz p3, :cond_3

    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object p5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Ll3/Q;->s:Ljava/util/logging/Logger;

    const-string v0, "Property({0}) valid is not valid number format({1}), fall back to default({2})"

    invoke-virtual {p3, p5, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    cmp-long p1, v5, v3

    if-lez p1, :cond_4

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    goto :goto_3

    :cond_4
    move-wide v3, v5

    :goto_3
    iput-wide v3, p0, Ll3/Q;->i:J

    iput-object p4, p0, Ll3/Q;->k:LJ2/j;

    iget-object p1, p2, LG4/o;->d:Ljava/lang/Object;

    check-cast p1, Lj3/w0;

    const-string p3, "syncContext"

    invoke-static {p1, p3}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ll3/Q;->j:Lj3/w0;

    iget-object p1, p2, LG4/o;->h:Ljava/lang/Object;

    check-cast p1, Ll3/D0;

    iput-object p1, p0, Ll3/Q;->n:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, p0, Ll3/Q;->o:Z

    iget-object p1, p2, LG4/o;->e:Ljava/lang/Object;

    check-cast p1, Ll3/C1;

    const-string p2, "serviceConfigParser"

    invoke-static {p1, p2}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ll3/Q;->p:Ll3/C1;

    return-void

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "nameUri (%s) doesn\'t have an authority"

    invoke-static {p3, p2}, La/a;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static i(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;
    .locals 6

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ll3/Q;->t:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Bad key: %s"

    invoke-static {v2, v3, v1}, Landroid/support/v4/media/session/a;->B(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "clientLanguage"

    invoke-static {v0, p0}, Ll3/r0;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "java"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    const-string v0, "percentage"

    invoke-static {v0, p0}, Ll3/r0;->d(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v2

    const/16 v3, 0x64

    if-ltz v2, :cond_4

    if-gt v2, v3, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    const-string v5, "Bad percentage: %s"

    invoke-static {v4, v5, v0}, Landroid/support/v4/media/session/a;->B(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    if-lt p1, v2, :cond_5

    return-object v1

    :cond_5
    const-string p1, "clientHostname"

    invoke-static {p1, p0}, Ll3/r0;->c(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_7
    return-object v1

    :cond_8
    :goto_3
    const-string p1, "serviceConfig"

    invoke-static {p1, p0}, Ll3/r0;->f(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_9

    return-object p2

    :cond_9
    new-instance p2, LB0/c;

    const-string v0, "key \'%s\' missing in \'%s\'"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    invoke-direct {p2, p0, p1}, LB0/c;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public static j(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "grpc_config="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Ll3/Q;->s:Ljava/util/logging/Logger;

    const-string v4, "Ignoring non service config {0}"

    invoke-virtual {v3, v2, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to close"

    sget-object v3, Ll3/q0;->a:Ljava/util/logging/Logger;

    new-instance v4, LX2/a;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, LX2/a;-><init>(Ljava/io/StringReader;)V

    :try_start_0
    invoke-static {v4}, Ll3/q0;->a(LX2/a;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, LX2/a;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v3, v5, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ll3/r0;->a(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "wrong type "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v4}, LX2/a;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v3, v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll3/Q;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Ll3/Q;->r:LJ2/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "not started"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    invoke-virtual {p0}, Ll3/Q;->k()V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Ll3/Q;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ll3/Q;->m:Z

    iget-object v0, p0, Ll3/Q;->n:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Ll3/Q;->o:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Ll3/Q;->h:Ll3/P1;

    invoke-static {v1, v0}, Ll3/M1;->b(Ll3/L1;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ll3/Q;->n:Ljava/util/concurrent/Executor;

    :cond_1
    return-void
.end method

.method public final f(LJ2/e;)V
    .locals 2

    iget-object v0, p0, Ll3/Q;->r:LJ2/e;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-boolean v0, p0, Ll3/Q;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ll3/Q;->h:Ll3/P1;

    invoke-static {v0}, Ll3/M1;->a(Ll3/L1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Ll3/Q;->n:Ljava/util/concurrent/Executor;

    :cond_1
    iput-object p1, p0, Ll3/Q;->r:LJ2/e;

    invoke-virtual {p0}, Ll3/Q;->k()V

    return-void
.end method

.method public final h()LJ2/e;
    .locals 9

    iget-object v0, p0, Ll3/Q;->f:Ljava/lang/String;

    new-instance v1, LJ2/e;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, LJ2/e;-><init>(I)V

    :try_start_0
    invoke-virtual {p0}, Ll3/Q;->l()Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, LJ2/e;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    sget-boolean v2, Ll3/Q;->w:Z

    if-eqz v2, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    sget-boolean v3, Ll3/Q;->u:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "localhost"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v4, Ll3/Q;->v:Z

    goto :goto_2

    :cond_1
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    move v6, v3

    move v5, v4

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_4

    const/16 v8, 0x30

    if-lt v7, v8, :cond_3

    const/16 v8, 0x39

    if-gt v7, v8, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    move v7, v4

    :goto_1
    and-int/2addr v6, v7

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    xor-int/lit8 v4, v6, 0x1

    :goto_2
    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    iget-object v3, p0, Ll3/Q;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_12

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_10

    iget-object v0, p0, Ll3/Q;->b:Ljava/util/Random;

    sget-object v3, Ll3/Q;->x:Ljava/lang/String;

    if-nez v3, :cond_7

    :try_start_1
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ll3/Q;->x:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    :goto_4
    sget-object v3, Ll3/Q;->x:Ljava/lang/String;

    :try_start_2
    invoke-static {v2}, Ll3/Q;->j(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v5, v4

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    :try_start_3
    invoke-static {v5, v0, v3}, Ll3/Q;->i(Ljava/util/Map;Ljava/util/Random;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v5, :cond_8

    goto :goto_5

    :catch_1
    move-exception v0

    sget-object v2, Lj3/r0;->g:Lj3/r0;

    const-string v3, "failed to pick service config choice"

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object v0

    new-instance v2, Lj3/i0;

    invoke-direct {v2, v0}, Lj3/i0;-><init>(Lj3/r0;)V

    goto :goto_7

    :cond_9
    :goto_5
    if-nez v5, :cond_a

    move-object v2, v4

    goto :goto_7

    :cond_a
    new-instance v2, Lj3/i0;

    invoke-direct {v2, v5}, Lj3/i0;-><init>(Ljava/lang/Object;)V

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_6
    sget-object v2, Lj3/r0;->g:Lj3/r0;

    const-string v3, "failed to parse TXT records"

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object v0

    new-instance v2, Lj3/i0;

    invoke-direct {v2, v0}, Lj3/i0;-><init>(Lj3/r0;)V

    :goto_7
    if-eqz v2, :cond_11

    iget-object v0, v2, Lj3/i0;->a:Lj3/r0;

    if-eqz v0, :cond_b

    new-instance v4, Lj3/i0;

    invoke-direct {v4, v0}, Lj3/i0;-><init>(Lj3/r0;)V

    goto/16 :goto_d

    :cond_b
    iget-object v0, v2, Lj3/i0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Ll3/Q;->p:Ll3/C1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4
    iget-object v3, v2, Ll3/C1;->d:Ll3/R1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    if-eqz v0, :cond_c

    :try_start_5
    invoke-static {v0}, Ll3/J1;->r(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ll3/J1;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto :goto_8

    :catch_4
    move-exception v3

    goto :goto_9

    :cond_c
    move-object v5, v4

    :goto_8
    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v3, v3, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v3, Lj3/U;

    invoke-static {v5, v3}, Ll3/J1;->v(Ljava/util/List;Lj3/U;)Lj3/i0;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_a

    :goto_9
    :try_start_6
    sget-object v5, Lj3/r0;->g:Lj3/r0;

    const-string v6, "can\'t parse load balancer configuration"

    invoke-virtual {v5, v6}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v5

    invoke-virtual {v5, v3}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object v3

    new-instance v5, Lj3/i0;

    invoke-direct {v5, v3}, Lj3/i0;-><init>(Lj3/r0;)V

    move-object v3, v5

    goto :goto_a

    :cond_d
    move-object v3, v4

    :goto_a
    if-nez v3, :cond_e

    goto :goto_b

    :cond_e
    iget-object v4, v3, Lj3/i0;->a:Lj3/r0;

    if-eqz v4, :cond_f

    new-instance v0, Lj3/i0;

    invoke-direct {v0, v4}, Lj3/i0;-><init>(Lj3/r0;)V

    move-object v4, v0

    goto :goto_d

    :cond_f
    iget-object v4, v3, Lj3/i0;->b:Ljava/lang/Object;

    :goto_b
    iget-boolean v3, v2, Ll3/C1;->a:Z

    iget v5, v2, Ll3/C1;->b:I

    iget v2, v2, Ll3/C1;->c:I

    invoke-static {v0, v3, v5, v2, v4}, Ll3/R0;->a(Ljava/util/Map;ZIILjava/lang/Object;)Ll3/R0;

    move-result-object v0

    new-instance v2, Lj3/i0;

    invoke-direct {v2, v0}, Lj3/i0;-><init>(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_c
    move-object v4, v2

    goto :goto_d

    :catch_5
    move-exception v0

    sget-object v2, Lj3/r0;->g:Lj3/r0;

    const-string v3, "failed to parse service config"

    invoke-virtual {v2, v3}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object v0

    new-instance v2, Lj3/i0;

    invoke-direct {v2, v0}, Lj3/i0;-><init>(Lj3/r0;)V

    goto :goto_c

    :cond_10
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Ll3/Q;->s:Ljava/util/logging/Logger;

    const-string v5, "No TXT records found for {0}"

    invoke-virtual {v3, v2, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    :goto_d
    iput-object v4, v1, LJ2/e;->d:Ljava/lang/Object;

    goto :goto_e

    :cond_12
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_13
    :goto_e
    return-object v1

    :catch_6
    move-exception v2

    sget-object v3, Lj3/r0;->m:Lj3/r0;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to resolve host "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    invoke-virtual {v0, v2}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object v0

    iput-object v0, v1, LJ2/e;->b:Ljava/lang/Object;

    return-object v1
.end method

.method public final k()V
    .locals 4

    iget-boolean v0, p0, Ll3/Q;->q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ll3/Q;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ll3/Q;->l:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ll3/Q;->i:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    if-lez v2, :cond_1

    iget-object v2, p0, Ll3/Q;->k:LJ2/j;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, LJ2/j;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ll3/Q;->q:Z

    iget-object v0, p0, Ll3/Q;->n:Ljava/util/concurrent/Executor;

    new-instance v1, Ll3/B;

    iget-object v2, p0, Ll3/Q;->r:LJ2/e;

    invoke-direct {v1, p0, v2}, Ll3/B;-><init>(Ll3/Q;LJ2/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final l()Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ll3/Q;->c:Ll3/O;

    iget-object v2, p0, Ll3/Q;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    new-instance v3, Lj3/y;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget v5, p0, Ll3/Q;->g:I

    invoke-direct {v4, v2, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v3, v4}, Lj3/y;-><init>(Ljava/net/SocketAddress;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, LJ2/l;->a(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_1

    sget-object v2, Ll3/Q;->s:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Address resolution failure"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    throw v1
.end method
