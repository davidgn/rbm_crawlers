.class public final Ll3/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:J


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:LJ2/j;

.field public final c:Li1/D;

.field public d:I

.field public e:Ljava/util/concurrent/ScheduledFuture;

.field public f:Ljava/util/concurrent/ScheduledFuture;

.field public final g:Ll3/v0;

.field public final h:Ll3/v0;

.field public final i:J

.field public final j:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    sput-wide v3, Ll3/u0;->k:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    return-void
.end method

.method public constructor <init>(Li1/D;Ljava/util/concurrent/ScheduledExecutorService;JJ)V
    .locals 4

    new-instance v0, LJ2/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LJ2/j;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Ll3/u0;->d:I

    new-instance v1, Ll3/v0;

    new-instance v2, Ll3/s0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ll3/s0;-><init>(Ll3/u0;I)V

    invoke-direct {v1, v2}, Ll3/v0;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Ll3/u0;->g:Ll3/v0;

    new-instance v1, Ll3/v0;

    new-instance v2, Ll3/s0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Ll3/s0;-><init>(Ll3/u0;I)V

    invoke-direct {v1, v2}, Ll3/v0;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Ll3/u0;->h:Ll3/v0;

    iput-object p1, p0, Ll3/u0;->c:Li1/D;

    const-string p1, "scheduler"

    invoke-static {p2, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Ll3/u0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Ll3/u0;->b:LJ2/j;

    iput-wide p3, p0, Ll3/u0;->i:J

    iput-wide p5, p0, Ll3/u0;->j:J

    const/4 p1, 0x0

    iput-boolean p1, v0, LJ2/j;->b:Z

    invoke-virtual {v0}, LJ2/j;->b()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ll3/u0;->b:LJ2/j;

    const/4 v1, 0x0

    iput-boolean v1, v0, LJ2/j;->b:Z

    invoke-virtual {v0}, LJ2/j;->b()V

    iget v0, p0, Ll3/u0;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Ll3/u0;->d:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_5

    :cond_1
    iget-object v0, p0, Ll3/u0;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    iget v0, p0, Ll3/u0;->d:I

    const/4 v4, 0x1

    if-ne v0, v3, :cond_3

    iput v4, p0, Ll3/u0;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    iput v2, p0, Ll3/u0;->d:I

    iget-object v0, p0, Ll3/u0;->f:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_4

    move v1, v4

    :cond_4
    const-string v0, "There should be no outstanding pingFuture"

    invoke-static {v1, v0}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Ll3/u0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Ll3/u0;->h:Ll3/v0;

    iget-wide v2, p0, Ll3/u0;->i:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Ll3/u0;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ll3/u0;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Ll3/u0;->d:I

    iget-object v0, p0, Ll3/u0;->f:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    iget-object v0, p0, Ll3/u0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Ll3/u0;->h:Ll3/v0;

    iget-wide v2, p0, Ll3/u0;->i:J

    iget-object v4, p0, Ll3/u0;->b:LJ2/j;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5}, LJ2/j;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-interface {v0, v1, v2, v3, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Ll3/u0;->f:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Ll3/u0;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
