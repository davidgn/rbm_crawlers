.class public abstract Ll3/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Ljava/util/Set;

.field public static final c:Lj3/a0;

.field public static final d:Lj3/a0;

.field public static final e:Lj3/d0;

.field public static final f:Lj3/a0;

.field public static final g:Lj3/d0;

.field public static final h:Lj3/a0;

.field public static final i:Lj3/a0;

.field public static final j:Lj3/a0;

.field public static final k:Lj3/a0;

.field public static final l:J

.field public static final m:Ll3/g1;

.field public static final n:LG3/b;

.field public static final o:Ll3/Z;

.field public static final p:Ll3/P1;

.field public static final q:Ll3/P1;

.field public static final r:Ll3/P1;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Ll3/b0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ll3/b0;->a:Ljava/util/logging/Logger;

    sget-object v0, Lj3/q0;->c:Lj3/q0;

    sget-object v1, Lj3/q0;->f:Lj3/q0;

    sget-object v2, Lj3/q0;->m:Lj3/q0;

    sget-object v3, Lj3/q0;->n:Lj3/q0;

    sget-object v4, Lj3/q0;->q:Lj3/q0;

    sget-object v5, Lj3/q0;->r:Lj3/q0;

    sget-object v6, Lj3/q0;->s:Lj3/q0;

    sget-object v7, Lj3/q0;->w:Lj3/q0;

    filled-new-array/range {v1 .. v7}, [Lj3/q0;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ll3/b0;->b:Ljava/util/Set;

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    new-instance v0, Ll3/P1;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ll3/P1;-><init>(I)V

    new-instance v1, Lj3/a0;

    const-string v2, "grpc-timeout"

    invoke-direct {v1, v2, v0}, Lj3/a0;-><init>(Ljava/lang/String;Lj3/b0;)V

    sput-object v1, Ll3/b0;->c:Lj3/a0;

    sget-object v0, Lj3/f0;->d:Lj3/n;

    new-instance v1, Lj3/a0;

    const-string v2, "grpc-encoding"

    invoke-direct {v1, v2, v0}, Lj3/a0;-><init>(Ljava/lang/String;Lj3/b0;)V

    sput-object v1, Ll3/b0;->d:Lj3/a0;

    new-instance v1, Ll3/P1;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ll3/P1;-><init>(I)V

    const-string v2, "grpc-accept-encoding"

    invoke-static {v2, v1}, Lj3/K;->a(Ljava/lang/String;Ll3/P1;)Lj3/d0;

    move-result-object v1

    sput-object v1, Ll3/b0;->e:Lj3/d0;

    new-instance v1, Lj3/a0;

    const-string v2, "content-encoding"

    invoke-direct {v1, v2, v0}, Lj3/a0;-><init>(Ljava/lang/String;Lj3/b0;)V

    sput-object v1, Ll3/b0;->f:Lj3/a0;

    new-instance v1, Ll3/P1;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ll3/P1;-><init>(I)V

    const-string v2, "accept-encoding"

    invoke-static {v2, v1}, Lj3/K;->a(Ljava/lang/String;Ll3/P1;)Lj3/d0;

    move-result-object v1

    sput-object v1, Ll3/b0;->g:Lj3/d0;

    new-instance v1, Lj3/a0;

    const-string v2, "content-length"

    invoke-direct {v1, v2, v0}, Lj3/a0;-><init>(Ljava/lang/String;Lj3/b0;)V

    sput-object v1, Ll3/b0;->h:Lj3/a0;

    new-instance v1, Lj3/a0;

    const-string v2, "content-type"

    invoke-direct {v1, v2, v0}, Lj3/a0;-><init>(Ljava/lang/String;Lj3/b0;)V

    sput-object v1, Ll3/b0;->i:Lj3/a0;

    new-instance v1, Lj3/a0;

    const-string v2, "te"

    invoke-direct {v1, v2, v0}, Lj3/a0;-><init>(Ljava/lang/String;Lj3/b0;)V

    sput-object v1, Ll3/b0;->j:Lj3/a0;

    new-instance v1, Lj3/a0;

    const-string v2, "user-agent"

    invoke-direct {v1, v2, v0}, Lj3/a0;-><init>(Ljava/lang/String;Lj3/b0;)V

    sput-object v1, Ll3/b0;->k:Lj3/a0;

    sget-object v0, LJ2/b;->c:LJ2/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Ll3/b0;->l:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    new-instance v0, Ll3/g1;

    invoke-direct {v0}, Ll3/g1;-><init>()V

    sput-object v0, Ll3/b0;->m:Ll3/g1;

    new-instance v0, LG3/b;

    const-string v1, "io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ll3/b0;->n:LG3/b;

    new-instance v0, Ll3/Z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ll3/b0;->o:Ll3/Z;

    new-instance v0, Ll3/P1;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ll3/P1;-><init>(I)V

    sput-object v0, Ll3/b0;->p:Ll3/P1;

    new-instance v0, Ll3/P1;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ll3/P1;-><init>(I)V

    sput-object v0, Ll3/b0;->q:Ll3/P1;

    new-instance v0, Ll3/P1;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ll3/P1;-><init>(I)V

    sput-object v0, Ll3/b0;->r:Ll3/P1;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/net/URI;
    .locals 7

    const-string v0, "authority"

    invoke-static {p0, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/net/URI;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid authority: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/io/Closeable;)V
    .locals 3

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "exception caught in closeQuietly"

    sget-object v2, Ll3/b0;->a:Ljava/util/logging/Logger;

    invoke-virtual {v2, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static c(Lj3/g;Lj3/f0;IZ)[Lj3/B;
    .locals 1

    iget-object p0, p0, Lj3/g;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    new-array p2, p2, [Lj3/B;

    sget-object p3, Lj3/g;->i:Lj3/g;

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/t1;

    invoke-virtual {v0}, Ll3/t1;->a()Lj3/B;

    move-result-object v0

    aput-object v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Ll3/b0;->o:Ll3/Z;

    aput-object p0, p2, p1

    return-object p2
.end method

.method public static d(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-class v0, Ljava/net/InetSocketAddress;

    const-string v1, "getHostString"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)LN2/p;
    .locals 5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v2, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    new-instance v3, LN2/p;

    invoke-direct {v3, v1, p0, v2, v0}, LN2/p;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;)V

    return-object v3
.end method

.method public static f(Lj3/N;Z)Ll3/v;
    .locals 5

    iget-object v0, p0, Lj3/N;->a:Lj3/P;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lj3/P;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/o0;

    iget-object v2, v0, Ll3/o0;->u:Ll3/l0;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Ll3/o0;->j:Lj3/w0;

    new-instance v3, Ll3/i0;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Ll3/i0;-><init>(Ll3/o0;I)V

    invoke-virtual {v2, v3}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_3

    iget-object p0, p0, Lj3/N;->b:Ll3/t1;

    if-nez p0, :cond_2

    return-object v2

    :cond_2
    new-instance p1, Ll3/V;

    invoke-direct {p1, p0, v2}, Ll3/V;-><init>(Ll3/t1;Ll3/T0;)V

    return-object p1

    :cond_3
    iget-object v0, p0, Lj3/N;->c:Lj3/r0;

    invoke-virtual {v0}, Lj3/r0;->f()Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean p0, p0, Lj3/N;->d:Z

    if-eqz p0, :cond_4

    new-instance p0, Ll3/V;

    invoke-static {v0}, Ll3/b0;->h(Lj3/r0;)Lj3/r0;

    move-result-object p1

    sget-object v0, Ll3/t;->c:Ll3/t;

    invoke-direct {p0, p1, v0}, Ll3/V;-><init>(Lj3/r0;Ll3/t;)V

    return-object p0

    :cond_4
    if-nez p1, :cond_5

    new-instance p0, Ll3/V;

    invoke-static {v0}, Ll3/b0;->h(Lj3/r0;)Lj3/r0;

    move-result-object p1

    sget-object v0, Ll3/t;->a:Ll3/t;

    invoke-direct {p0, p1, v0}, Ll3/V;-><init>(Lj3/r0;Ll3/t;)V

    return-object p0

    :cond_5
    return-object v1
.end method

.method public static g(I)Lj3/r0;
    .locals 3

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    sget-object v0, Lj3/q0;->u:Lj3/q0;

    goto :goto_0

    :cond_0
    const/16 v0, 0x190

    if-eq p0, v0, :cond_5

    const/16 v0, 0x191

    if-eq p0, v0, :cond_4

    const/16 v0, 0x193

    if-eq p0, v0, :cond_3

    const/16 v0, 0x194

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1ad

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1af

    if-eq p0, v0, :cond_5

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lj3/q0;->e:Lj3/q0;

    goto :goto_0

    :cond_1
    :pswitch_0
    sget-object v0, Lj3/q0;->v:Lj3/q0;

    goto :goto_0

    :cond_2
    sget-object v0, Lj3/q0;->t:Lj3/q0;

    goto :goto_0

    :cond_3
    sget-object v0, Lj3/q0;->o:Lj3/q0;

    goto :goto_0

    :cond_4
    sget-object v0, Lj3/q0;->x:Lj3/q0;

    goto :goto_0

    :cond_5
    sget-object v0, Lj3/q0;->u:Lj3/q0;

    :goto_0
    invoke-virtual {v0}, Lj3/q0;->a()Lj3/r0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP status code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static h(Lj3/r0;)Lj3/r0;
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, LZ2/l;->e(Z)V

    iget-object v0, p0, Lj3/r0;->a:Lj3/q0;

    sget-object v1, Ll3/b0;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lj3/r0;->l:Lj3/r0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inappropriate status code from control plane: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lj3/r0;->a:Lj3/q0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj3/r0;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    iget-object p0, p0, Lj3/r0;->c:Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object p0

    :cond_1
    return-object p0
.end method
