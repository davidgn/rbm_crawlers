.class public final Ll3/M0;
.super Lj3/W;
.source "SourceFile"


# static fields
.field public static final A:Lj1/a;

.field public static final B:Lj3/x;

.field public static final C:Lj3/p;

.field public static final x:Ljava/util/logging/Logger;

.field public static final y:J

.field public static final z:J


# instance fields
.field public final a:Lj1/a;

.field public final b:Lj1/a;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lj3/l0;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lj3/x;

.field public final h:Lj3/p;

.field public final i:J

.field public final j:I

.field public final k:I

.field public final l:J

.field public final m:J

.field public final n:Z

.field public final o:Lj3/F;

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:Lj1/a;

.field public final w:Li1/D;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ll3/M0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ll3/M0;->x:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Ll3/M0;->y:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Ll3/M0;->z:J

    sget-object v0, Ll3/b0;->p:Ll3/P1;

    new-instance v1, Lj1/a;

    const/16 v2, 0x9

    invoke-direct {v1, v0, v2}, Lj1/a;-><init>(Ljava/lang/Object;I)V

    sput-object v1, Ll3/M0;->A:Lj1/a;

    sget-object v0, Lj3/x;->d:Lj3/x;

    sput-object v0, Ll3/M0;->B:Lj3/x;

    sget-object v0, Lj3/p;->b:Lj3/p;

    sput-object v0, Ll3/M0;->C:Lj3/p;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lj1/a;Li1/D;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ll3/M0;->A:Lj1/a;

    iput-object v0, p0, Ll3/M0;->a:Lj1/a;

    iput-object v0, p0, Ll3/M0;->b:Lj1/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll3/M0;->c:Ljava/util/ArrayList;

    sget-object v0, Lj3/m0;->e:Ljava/util/logging/Logger;

    const-class v0, Lj3/m0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lj3/m0;->f:Lj3/m0;

    if-nez v1, :cond_2

    const-class v1, Lj3/k0;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-class v3, Ll3/S;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Unable to find DNS NameResolver"

    sget-object v6, Lj3/m0;->e:Ljava/util/logging/Logger;

    invoke-virtual {v6, v4, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const-class v3, Lj3/k0;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lj3/n;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lj3/n;-><init>(I)V

    invoke-static {v1, v2, v3, v4}, Lj3/i;->d(Ljava/lang/Class;Ljava/util/List;Ljava/lang/ClassLoader;Lj3/p0;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lj3/m0;->e:Ljava/util/logging/Logger;

    const-string v3, "No NameResolverProviders found via ServiceLoader, including for DNS. This is probably due to a broken build. If using ProGuard, check your configuration"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_1
    new-instance v2, Lj3/m0;

    invoke-direct {v2}, Lj3/m0;-><init>()V

    sput-object v2, Lj3/m0;->f:Lj3/m0;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj3/k0;

    sget-object v3, Lj3/m0;->e:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service loader found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    sget-object v3, Lj3/m0;->f:Lj3/m0;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Lj3/k0;->j()Z

    move-result v4

    const-string v5, "isAvailable() returned false"

    invoke-static {v4, v5}, LZ2/l;->f(ZLjava/lang/String;)V

    iget-object v4, v3, Lj3/m0;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :cond_1
    sget-object v1, Lj3/m0;->f:Lj3/m0;

    invoke-virtual {v1}, Lj3/m0;->a()V

    :cond_2
    sget-object v1, Lj3/m0;->f:Lj3/m0;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    iget-object v0, v1, Lj3/m0;->a:Lj3/l0;

    iput-object v0, p0, Ll3/M0;->d:Lj3/l0;

    const-string v0, "pick_first"

    iput-object v0, p0, Ll3/M0;->f:Ljava/lang/String;

    sget-object v0, Ll3/M0;->B:Lj3/x;

    iput-object v0, p0, Ll3/M0;->g:Lj3/x;

    sget-object v0, Ll3/M0;->C:Lj3/p;

    iput-object v0, p0, Ll3/M0;->h:Lj3/p;

    sget-wide v0, Ll3/M0;->y:J

    iput-wide v0, p0, Ll3/M0;->i:J

    const/4 v0, 0x5

    iput v0, p0, Ll3/M0;->j:I

    iput v0, p0, Ll3/M0;->k:I

    const-wide/32 v0, 0x1000000

    iput-wide v0, p0, Ll3/M0;->l:J

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Ll3/M0;->m:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll3/M0;->n:Z

    sget-object v1, Lj3/F;->e:Lj3/F;

    iput-object v1, p0, Ll3/M0;->o:Lj3/F;

    iput-boolean v0, p0, Ll3/M0;->p:Z

    iput-boolean v0, p0, Ll3/M0;->q:Z

    iput-boolean v0, p0, Ll3/M0;->r:Z

    iput-boolean v0, p0, Ll3/M0;->s:Z

    iput-boolean v0, p0, Ll3/M0;->t:Z

    iput-boolean v0, p0, Ll3/M0;->u:Z

    const-string v0, "target"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ll3/M0;->e:Ljava/lang/String;

    iput-object p2, p0, Ll3/M0;->v:Lj1/a;

    iput-object p3, p0, Ll3/M0;->w:Li1/D;

    return-void

    :goto_3
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a()Lj3/V;
    .locals 24

    move-object/from16 v8, p0

    new-instance v9, Ll3/O0;

    new-instance v10, Ll3/L0;

    iget-object v0, v8, Ll3/M0;->v:Lj1/a;

    iget-object v0, v0, Lj1/a;->b:Ljava/lang/Object;

    check-cast v0, Lm3/g;

    iget-wide v1, v0, Lm3/g;->i:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move/from16 v16, v3

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    new-instance v4, Lm3/f;

    iget-object v12, v0, Lm3/g;->d:Ll3/a1;

    iget-object v13, v0, Lm3/g;->e:Ll3/a1;

    iget v1, v0, Lm3/g;->h:I

    invoke-static {v1}, Ls/e;->d(I)I

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    move-object v14, v5

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    iget v0, v0, Lm3/g;->h:I

    invoke-static {v0}, Le1/i;->n(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown negotiation type: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :try_start_0
    iget-object v1, v0, Lm3/g;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_3

    const-string v1, "Default"

    sget-object v3, Ln3/j;->d:Ln3/j;

    iget-object v3, v3, Ln3/j;->a:Ljava/security/Provider;

    invoke-static {v1, v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lm3/g;->f:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_e

    :cond_3
    :goto_1
    iget-object v1, v0, Lm3/g;->f:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v14, v1

    :goto_2
    iget-wide v6, v0, Lm3/g;->i:J

    iget v1, v0, Lm3/g;->l:I

    iget-object v3, v0, Lm3/g;->c:Ll3/P1;

    iget-object v15, v0, Lm3/g;->g:Ln3/b;

    move-object/from16 v23, v3

    iget-wide v2, v0, Lm3/g;->j:J

    iget v0, v0, Lm3/g;->k:I

    move-object v11, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v2

    move/from16 v21, v0

    move/from16 v22, v1

    invoke-direct/range {v11 .. v23}, Lm3/f;-><init>(Ll3/a1;Ll3/a1;Ljavax/net/ssl/SSLSocketFactory;Ln3/b;ZJJIILl3/P1;)V

    new-instance v6, Ll3/P1;

    const/4 v0, 0x7

    invoke-direct {v6, v0}, Ll3/P1;-><init>(I)V

    sget-object v0, Ll3/b0;->p:Ll3/P1;

    new-instance v7, Lj1/a;

    const/16 v1, 0x9

    invoke-direct {v7, v0, v1}, Lj1/a;-><init>(Ljava/lang/Object;I)V

    sget-object v11, Ll3/b0;->r:Ll3/P1;

    new-instance v12, Ljava/util/ArrayList;

    iget-object v0, v8, Ll3/M0;->c:Ljava/util/ArrayList;

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-class v0, Lj3/B;

    monitor-enter v0

    monitor-exit v0

    iget-boolean v0, v8, Ll3/M0;->q:Z

    if-eqz v0, :cond_4

    :try_start_1
    const-string v0, "io.grpc.census.InternalCensusStatsAccessor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getClientInterceptor"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v2, v2, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-boolean v1, v8, Ll3/M0;->r:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, v8, Ll3/M0;->s:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-boolean v13, v8, Ll3/M0;->t:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    filled-new-array {v1, v2, v3, v13}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/g;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_6

    :goto_3
    sget-object v1, Ll3/M0;->x:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to apply census stats"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_4
    sget-object v1, Ll3/M0;->x:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to apply census stats"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_5
    sget-object v1, Ll3/M0;->x:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to apply census stats"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_6
    sget-object v1, Ll3/M0;->x:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to apply census stats"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    move-object v0, v5

    :goto_8
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4
    iget-boolean v0, v8, Ll3/M0;->u:Z

    if-eqz v0, :cond_5

    :try_start_2
    const-string v0, "io.grpc.census.InternalCensusTracingAccessor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getClientInterceptor"

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr3/g;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v5, v0

    goto :goto_d

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_b

    :catch_8
    move-exception v0

    goto :goto_c

    :goto_9
    sget-object v1, Ll3/M0;->x:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to apply census stats"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :goto_a
    sget-object v1, Ll3/M0;->x:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to apply census stats"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :goto_b
    sget-object v1, Ll3/M0;->x:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to apply census stats"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :goto_c
    sget-object v1, Ll3/M0;->x:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to apply census stats"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    if-eqz v5, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_5
    move-object v1, v10

    move-object/from16 v2, p0

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v11

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Ll3/L0;-><init>(Ll3/M0;Lm3/f;Ll3/P1;Lj1/a;Ll3/P1;Ljava/util/ArrayList;)V

    invoke-direct {v9, v10}, Ll3/O0;-><init>(Ll3/L0;)V

    return-object v9

    :goto_e
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "TLS Provider failure"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
