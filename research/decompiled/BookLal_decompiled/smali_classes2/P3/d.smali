.class public final LP3/d;
.super Lz3/p;
.source "SourceFile"


# static fields
.field public static final b:LP3/b;

.field public static final c:LP3/l;

.field public static final d:I

.field public static final e:LP3/c;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const-string v1, "rx2.computation-threads"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    sput v0, LP3/d;->d:I

    new-instance v0, LP3/c;

    new-instance v1, LP3/l;

    const-string v3, "RxComputationShutdown"

    invoke-direct {v1, v3}, LP3/l;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, LP3/j;-><init>(LP3/l;)V

    sput-object v0, LP3/d;->e:LP3/c;

    invoke-virtual {v0}, LP3/j;->b()V

    const-string v0, "rx2.computation-priority"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v3, LP3/l;

    const-string v4, "RxComputationThreadPool"

    invoke-direct {v3, v4, v0, v1}, LP3/l;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, LP3/d;->c:LP3/l;

    new-instance v0, LP3/b;

    invoke-direct {v0, v2, v3}, LP3/b;-><init>(ILP3/l;)V

    sput-object v0, LP3/d;->b:LP3/b;

    iget-object v0, v0, LP3/b;->b:[LP3/c;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, LP3/j;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LP3/d;->c:LP3/l;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, LP3/d;->b:LP3/b;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, LP3/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, LP3/b;

    sget v3, LP3/d;->d:I

    invoke-direct {v1, v3, v0}, LP3/b;-><init>(ILP3/l;)V

    :cond_0
    iget-object v0, p0, LP3/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v2, :cond_0

    iget-object v0, v1, LP3/b;->b:[LP3/c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, LP3/j;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final a()Lz3/o;
    .locals 7

    new-instance v0, LP3/a;

    iget-object v1, p0, LP3/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LP3/b;

    iget v2, v1, LP3/b;->a:I

    if-nez v2, :cond_0

    sget-object v1, LP3/d;->e:LP3/c;

    goto :goto_0

    :cond_0
    iget-wide v3, v1, LP3/b;->c:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, v1, LP3/b;->c:J

    int-to-long v5, v2

    rem-long/2addr v3, v5

    long-to-int v2, v3

    iget-object v1, v1, LP3/b;->b:[LP3/c;

    aget-object v1, v1, v2

    :goto_0
    invoke-direct {v0, v1}, LP3/a;-><init>(LP3/c;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)LB3/b;
    .locals 5

    iget-object p2, p0, LP3/d;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LP3/b;

    iget v0, p2, LP3/b;->a:I

    if-nez v0, :cond_0

    sget-object p2, LP3/d;->e:LP3/c;

    goto :goto_0

    :cond_0
    iget-wide v1, p2, LP3/b;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p2, LP3/b;->c:J

    int-to-long v3, v0

    rem-long/2addr v1, v3

    long-to-int v0, v1

    iget-object p2, p2, LP3/b;->b:[LP3/c;

    aget-object p2, p2, v0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LP3/m;

    invoke-direct {v0, p1}, LP3/m;-><init>(Ljava/lang/Runnable;)V

    iget-object p1, p2, LP3/j;->a:Ljava/util/concurrent/ScheduledExecutorService;

    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v0, p1}, LP3/m;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, LL4/l;->y(Ljava/lang/Throwable;)V

    sget-object v0, LF3/b;->a:LF3/b;

    :goto_1
    return-object v0
.end method
