.class public final LL0/l;
.super LL4/d;
.source "SourceFile"


# static fields
.field public static k:LL0/l;

.field public static l:LL0/l;

.field public static final m:Ljava/lang/Object;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Landroidx/work/b;

.field public final d:Landroidx/work/impl/WorkDatabase;

.field public final e:LJ2/e;

.field public final f:Ljava/util/List;

.field public final g:LL0/b;

.field public final h:LU0/f;

.field public i:Z

.field public j:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    invoke-static {v0}, Landroidx/work/n;->e(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, LL0/l;->k:LL0/l;

    sput-object v0, LL0/l;->l:LL0/l;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LL0/l;->m:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/b;LJ2/e;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    const/4 v2, 0x2

    const/4 v9, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050015

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v8, LJ2/e;->b:Ljava/lang/Object;

    check-cast v6, LU0/i;

    sget v7, Landroidx/work/impl/WorkDatabase;->k:I

    if-eqz v4, :cond_0

    new-instance v4, Lv0/g;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7}, Lv0/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v3, v4, Lv0/g;->g:Z

    goto :goto_0

    :cond_0
    sget-object v4, LL0/k;->a:Ljava/lang/String;

    new-instance v4, Lv0/g;

    const-string v7, "androidx.work.workdb"

    invoke-direct {v4, v5, v7}, Lv0/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v7, LL0/f;

    invoke-direct {v7, v5, v9}, LL0/f;-><init>(Landroid/content/Context;Z)V

    iput-object v7, v4, Lv0/g;->f:Lz0/a;

    :goto_0
    iput-object v6, v4, Lv0/g;->d:Ljava/util/concurrent/Executor;

    new-instance v6, LL0/g;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v7, v4, Lv0/g;->c:Ljava/util/ArrayList;

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v4, Lv0/g;->c:Ljava/util/ArrayList;

    :cond_1
    iget-object v7, v4, Lv0/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v6, v3, [Lw0/a;

    sget-object v7, LL0/j;->a:LL0/h;

    aput-object v7, v6, v9

    invoke-virtual {v4, v6}, Lv0/g;->a([Lw0/a;)V

    new-instance v6, LL0/i;

    const/4 v7, 0x3

    invoke-direct {v6, v5, v2, v7}, LL0/i;-><init>(Landroid/content/Context;II)V

    new-array v10, v3, [Lw0/a;

    aput-object v6, v10, v9

    invoke-virtual {v4, v10}, Lv0/g;->a([Lw0/a;)V

    new-array v6, v3, [Lw0/a;

    sget-object v10, LL0/j;->b:LL0/h;

    aput-object v10, v6, v9

    invoke-virtual {v4, v6}, Lv0/g;->a([Lw0/a;)V

    new-array v6, v3, [Lw0/a;

    sget-object v10, LL0/j;->c:LL0/h;

    aput-object v10, v6, v9

    invoke-virtual {v4, v6}, Lv0/g;->a([Lw0/a;)V

    new-instance v6, LL0/i;

    const/4 v10, 0x5

    const/4 v11, 0x6

    invoke-direct {v6, v5, v10, v11}, LL0/i;-><init>(Landroid/content/Context;II)V

    new-array v10, v3, [Lw0/a;

    aput-object v6, v10, v9

    invoke-virtual {v4, v10}, Lv0/g;->a([Lw0/a;)V

    new-array v6, v3, [Lw0/a;

    sget-object v10, LL0/j;->d:LL0/h;

    aput-object v10, v6, v9

    invoke-virtual {v4, v6}, Lv0/g;->a([Lw0/a;)V

    new-array v6, v3, [Lw0/a;

    sget-object v10, LL0/j;->e:LL0/h;

    aput-object v10, v6, v9

    invoke-virtual {v4, v6}, Lv0/g;->a([Lw0/a;)V

    new-array v6, v3, [Lw0/a;

    sget-object v10, LL0/j;->f:LL0/h;

    aput-object v10, v6, v9

    invoke-virtual {v4, v6}, Lv0/g;->a([Lw0/a;)V

    new-instance v6, LL0/i;

    invoke-direct {v6, v5}, LL0/i;-><init>(Landroid/content/Context;)V

    new-array v10, v3, [Lw0/a;

    aput-object v6, v10, v9

    invoke-virtual {v4, v10}, Lv0/g;->a([Lw0/a;)V

    new-instance v6, LL0/i;

    const/16 v10, 0xa

    const/16 v11, 0xb

    invoke-direct {v6, v5, v10, v11}, LL0/i;-><init>(Landroid/content/Context;II)V

    new-array v5, v3, [Lw0/a;

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Lv0/g;->a([Lw0/a;)V

    new-array v5, v3, [Lw0/a;

    sget-object v6, LL0/j;->g:LL0/h;

    aput-object v6, v5, v9

    invoke-virtual {v4, v5}, Lv0/g;->a([Lw0/a;)V

    iput-boolean v9, v4, Lv0/g;->h:Z

    iput-boolean v3, v4, Lv0/g;->i:Z

    iget-object v5, v4, Lv0/g;->b:Landroid/content/Context;

    if-eqz v5, :cond_c

    const-class v6, Landroidx/work/impl/WorkDatabase;

    iget-object v10, v4, Lv0/g;->d:Ljava/util/concurrent/Executor;

    if-nez v10, :cond_2

    iget-object v11, v4, Lv0/g;->e:Ljava/util/concurrent/Executor;

    if-nez v11, :cond_2

    sget-object v10, Lm/b;->d:Lm/a;

    iput-object v10, v4, Lv0/g;->e:Ljava/util/concurrent/Executor;

    iput-object v10, v4, Lv0/g;->d:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_2
    if-eqz v10, :cond_3

    iget-object v11, v4, Lv0/g;->e:Ljava/util/concurrent/Executor;

    if-nez v11, :cond_3

    iput-object v10, v4, Lv0/g;->e:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_3
    if-nez v10, :cond_4

    iget-object v10, v4, Lv0/g;->e:Ljava/util/concurrent/Executor;

    if-eqz v10, :cond_4

    iput-object v10, v4, Lv0/g;->d:Ljava/util/concurrent/Executor;

    :cond_4
    :goto_1
    iget-object v10, v4, Lv0/g;->f:Lz0/a;

    if-nez v10, :cond_5

    new-instance v10, Ld3/a;

    invoke-direct {v10, v3}, Ld3/a;-><init>(I)V

    iput-object v10, v4, Lv0/g;->f:Lz0/a;

    :cond_5
    new-instance v10, Lv/e;

    iget-object v11, v4, Lv0/g;->f:Lz0/a;

    iget-object v12, v4, Lv0/g;->c:Ljava/util/ArrayList;

    iget-boolean v13, v4, Lv0/g;->g:Z

    const-string v14, "activity"

    invoke-virtual {v5, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager;

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v14

    if-nez v14, :cond_6

    move v14, v7

    goto :goto_2

    :cond_6
    move v14, v2

    :goto_2
    iget-object v15, v4, Lv0/g;->d:Ljava/util/concurrent/Executor;

    iget-object v2, v4, Lv0/g;->e:Ljava/util/concurrent/Executor;

    iget-boolean v9, v4, Lv0/g;->h:Z

    iget-boolean v7, v4, Lv0/g;->i:Z

    iget-object v3, v4, Lv0/g;->a:Ljava/lang/String;

    iget-object v4, v4, Lv0/g;->j:Le1/x;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-object v11, v10, Lv/e;->c:Ljava/lang/Object;

    iput-object v5, v10, Lv/e;->d:Ljava/lang/Object;

    iput-object v3, v10, Lv/e;->e:Ljava/io/Serializable;

    iput-object v4, v10, Lv/e;->f:Ljava/lang/Object;

    iput-object v15, v10, Lv/e;->g:Ljava/lang/Object;

    iput-object v2, v10, Lv/e;->h:Ljava/lang/Object;

    iput-boolean v9, v10, Lv/e;->a:Z

    iput-boolean v7, v10, Lv/e;->b:Z

    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    const/16 v7, 0x5f

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_Impl"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v2, v3

    goto :goto_4

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v2, Lv0/h;

    invoke-virtual {v2, v10}, Lv0/h;->e(Lv/e;)Lz0/b;

    move-result-object v3

    iput-object v3, v2, Lv0/h;->c:Lz0/b;

    instance-of v4, v3, Lv0/j;

    if-eqz v4, :cond_9

    move-object v4, v3

    check-cast v4, Lv0/j;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_9
    const/4 v4, 0x3

    if-ne v14, v4, :cond_a

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    invoke-interface {v3, v4}, Lz0/b;->setWriteAheadLoggingEnabled(Z)V

    iput-object v12, v2, Lv0/h;->g:Ljava/util/ArrayList;

    iput-object v15, v2, Lv0/h;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-boolean v13, v2, Lv0/h;->e:Z

    iput-boolean v4, v2, Lv0/h;->f:Z

    move-object v9, v2

    check-cast v9, Landroidx/work/impl/WorkDatabase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroidx/work/n;

    iget v4, v0, Landroidx/work/b;->f:I

    invoke-direct {v3, v4}, Landroidx/work/n;-><init>(I)V

    const-class v4, Landroidx/work/n;

    monitor-enter v4

    :try_start_1
    sput-object v3, Landroidx/work/n;->b:Landroidx/work/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    sget-object v3, LL0/d;->a:Ljava/lang/String;

    new-instance v3, LO0/b;

    invoke-direct {v3, v2, v1}, LO0/b;-><init>(Landroid/content/Context;LL0/l;)V

    const-class v4, Landroidx/work/impl/background/systemjob/SystemJobService;

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, LU0/g;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v4

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Throwable;

    sget-object v10, LL0/d;->a:Ljava/lang/String;

    const-string v11, "Created SystemJobScheduler and enabled SystemJobService"

    invoke-virtual {v4, v10, v11, v7}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    new-instance v4, LM0/b;

    invoke-direct {v4, v2, v0, v8, v1}, LM0/b;-><init>(Landroid/content/Context;Landroidx/work/b;LJ2/e;LL0/l;)V

    const/4 v2, 0x2

    new-array v2, v2, [LL0/c;

    aput-object v3, v2, v6

    aput-object v4, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    new-instance v11, LL0/b;

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, LL0/b;-><init>(Landroid/content/Context;Landroidx/work/b;LJ2/e;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, LL0/l;->b:Landroid/content/Context;

    iput-object v0, v1, LL0/l;->c:Landroidx/work/b;

    iput-object v8, v1, LL0/l;->e:LJ2/e;

    iput-object v9, v1, LL0/l;->d:Landroidx/work/impl/WorkDatabase;

    iput-object v10, v1, LL0/l;->f:Ljava/util/List;

    iput-object v11, v1, LL0/l;->g:LL0/b;

    new-instance v0, LU0/f;

    invoke-direct {v0, v9}, LU0/f;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iput-object v0, v1, LL0/l;->h:LU0/f;

    const/4 v0, 0x0

    iput-boolean v0, v1, LL0/l;->i:Z

    invoke-virtual {v2}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, LL0/l;->e:LJ2/e;

    new-instance v3, LU0/e;

    invoke-direct {v3, v2, v1}, LU0/e;-><init>(Landroid/content/Context;LL0/l;)V

    invoke-virtual {v0, v3}, LJ2/e;->o(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create an instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot access the constructor"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "cannot find implementation for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot provide null context for the database."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static I(Landroid/content/Context;)LL0/l;
    .locals 2

    sget-object v0, LL0/l;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, LL0/l;->k:LL0/l;

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v1, LL0/l;->l:LL0/l;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_2
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static J(Landroid/content/Context;Landroidx/work/b;)V
    .locals 4

    sget-object v0, LL0/l;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LL0/l;->k:LL0/l;

    if-eqz v1, :cond_1

    sget-object v2, LL0/l;->l:LL0/l;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, LL0/l;->l:LL0/l;

    if-nez v1, :cond_2

    new-instance v1, LL0/l;

    new-instance v2, LJ2/e;

    iget-object v3, p1, Landroidx/work/b;->b:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v3}, LJ2/e;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-direct {v1, p0, p1, v2}, LL0/l;-><init>(Landroid/content/Context;Landroidx/work/b;LJ2/e;)V

    sput-object v1, LL0/l;->l:LL0/l;

    :cond_2
    sget-object p0, LL0/l;->l:LL0/l;

    sput-object p0, LL0/l;->k:LL0/l;

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final K()V
    .locals 2

    sget-object v0, LL0/l;->m:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, LL0/l;->i:Z

    iget-object v1, p0, LL0/l;->j:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    iput-object v1, p0, LL0/l;->j:Landroid/content/BroadcastReceiver$PendingResult;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final L()V
    .locals 5

    iget-object v0, p0, LL0/l;->d:Landroidx/work/impl/WorkDatabase;

    iget-object v1, p0, LL0/l;->b:Landroid/content/Context;

    sget-object v2, LO0/b;->e:Ljava/lang/String;

    const-string v2, "jobscheduler"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    if-eqz v2, :cond_0

    invoke-static {v1, v2}, LO0/b;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-static {v2, v3}, LO0/b;->c(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->n()LT0/j;

    move-result-object v1

    iget-object v2, v1, LT0/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v2}, Lv0/h;->b()V

    iget-object v1, v1, LT0/j;->i:LT0/e;

    invoke-virtual {v1}, Lv0/k;->a()LA0/f;

    move-result-object v3

    invoke-virtual {v2}, Lv0/h;->c()V

    :try_start_0
    iget-object v4, v3, LA0/f;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    invoke-virtual {v2}, Lv0/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lv0/h;->f()V

    invoke-virtual {v1, v3}, Lv0/k;->c(LA0/f;)V

    iget-object v1, p0, LL0/l;->c:Landroidx/work/b;

    iget-object v2, p0, LL0/l;->f:Ljava/util/List;

    invoke-static {v1, v0, v2}, LL0/d;->a(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lv0/h;->f()V

    invoke-virtual {v1, v3}, Lv0/k;->c(LA0/f;)V

    throw v0
.end method

.method public final M(Ljava/lang/String;LJ2/e;)V
    .locals 3

    iget-object v0, p0, LL0/l;->e:LJ2/e;

    new-instance v1, LJ/k;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, LJ/k;-><init>(I)V

    iput-object p0, v1, LJ/k;->b:Ljava/lang/Object;

    iput-object p1, v1, LJ/k;->c:Ljava/lang/Object;

    iput-object p2, v1, LJ/k;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, LJ2/e;->o(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final N(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, LL0/l;->e:LJ2/e;

    new-instance v1, LU0/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, LU0/j;-><init>(LL0/l;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, LJ2/e;->o(Ljava/lang/Runnable;)V

    return-void
.end method
