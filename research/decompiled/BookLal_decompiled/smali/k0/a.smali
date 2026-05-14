.class public final Lk0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static l:Landroid/os/Handler;


# instance fields
.field public final a:Lk0/f;

.field public volatile b:I

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Z

.field public final synthetic f:Lk0/b;


# direct methods
.method public constructor <init>(Lk0/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/a;->f:Lk0/b;

    const/4 p1, 0x1

    iput p1, p0, Lk0/a;->b:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lk0/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lk0/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, LG3/c;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, LG3/c;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lk0/f;

    invoke-direct {v0, p0, p1}, Lk0/f;-><init>(Lk0/a;LG3/c;)V

    iput-object v0, p0, Lk0/a;->a:Lk0/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    const-class v0, Lk0/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lk0/a;->l:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lk0/a;->l:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lk0/a;->l:Landroid/os/Handler;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, LB/h;

    const/16 v2, 0xf

    invoke-direct {v0, v2, p0, p1}, LB/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final run()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk0/a;->e:Z

    iget-object v0, p0, Lk0/a;->f:Lk0/b;

    invoke-virtual {v0}, Lk0/b;->executePendingTask()V

    return-void
.end method
