.class public final Ly4/i;
.super Lt4/s;
.source "SourceFile"

# interfaces
.implements Lt4/B;


# static fields
.field public static final synthetic m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final c:LA4/l;

.field public final d:I

.field public final synthetic e:Lt4/B;

.field public final f:Ly4/l;

.field public final l:Ljava/lang/Object;

.field private volatile synthetic runningWorkers$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Ly4/i;

    const-string v1, "runningWorkers$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Ly4/i;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(LA4/l;I)V
    .locals 0

    invoke-direct {p0}, Lt4/s;-><init>()V

    iput-object p1, p0, Ly4/i;->c:LA4/l;

    iput p2, p0, Ly4/i;->d:I

    instance-of p2, p1, Lt4/B;

    if-eqz p2, :cond_0

    check-cast p1, Lt4/B;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object p1, Lt4/y;->a:Lt4/B;

    :cond_1
    iput-object p1, p0, Ly4/i;->e:Lt4/B;

    new-instance p1, Ly4/l;

    invoke-direct {p1}, Ly4/l;-><init>()V

    iput-object p1, p0, Ly4/i;->f:Ly4/l;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/i;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final g(JLt4/t0;Lb4/h;)Lt4/G;
    .locals 1

    iget-object v0, p0, Ly4/i;->e:Lt4/B;

    invoke-interface {v0, p1, p2, p3, p4}, Lt4/B;->g(JLt4/t0;Lb4/h;)Lt4/G;

    move-result-object p1

    return-object p1
.end method

.method public final q(Lb4/h;Ljava/lang/Runnable;)V
    .locals 2

    iget-object p1, p0, Ly4/i;->f:Ly4/l;

    invoke-virtual {p1, p2}, Ly4/l;->a(Ljava/lang/Runnable;)Z

    sget-object p1, Ly4/i;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p2

    iget v0, p0, Ly4/i;->d:I

    if-ge p2, v0, :cond_2

    iget-object p2, p0, Ly4/i;->l:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Ly4/i;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    monitor-exit p2

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p2

    invoke-virtual {p0}, Ly4/i;->s()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, LB/h;

    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, p1, v1}, LB/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p1, p0, Ly4/i;->c:LA4/l;

    invoke-virtual {p1, p0, p2}, LA4/l;->q(Lb4/h;Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final s()Ljava/lang/Runnable;
    .locals 3

    :goto_0
    iget-object v0, p0, Ly4/i;->f:Ly4/l;

    invoke-virtual {v0}, Ly4/l;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Ly4/i;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ly4/i;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    iget-object v2, p0, Ly4/i;->f:Ly4/l;

    invoke-virtual {v2}, Ly4/l;->c()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    return-object v0
.end method
