.class public final LG2/B;
.super LG2/A;
.source "SourceFile"


# instance fields
.field public final synthetic l:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic m:LG2/A;

.field public final synthetic n:LG2/d;


# direct methods
.method public constructor <init>(LG2/d;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;LG2/A;)V
    .locals 0

    iput-object p1, p0, LG2/B;->n:LG2/d;

    iput-object p3, p0, LG2/B;->l:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, LG2/B;->m:LG2/A;

    invoke-direct {p0, p2}, LG2/A;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    iget-object v0, p0, LG2/B;->n:LG2/d;

    iget-object v0, v0, LG2/d;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LG2/B;->n:LG2/d;

    iget-object v2, p0, LG2/B;->l:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v3, v1, LG2/d;->e:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, LE2/h;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v2, v5}, LE2/h;-><init>(Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, LG2/B;->n:LG2/d;

    iget-object v1, v1, LG2/d;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, LG2/B;->n:LG2/d;

    iget-object v1, v1, LG2/d;->b:LG2/z;

    const-string v2, "Already connected to the service."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, LG2/z;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, LG2/B;->n:LG2/d;

    iget-object v2, p0, LG2/B;->m:LG2/A;

    invoke-static {v1, v2}, LG2/d;->b(LG2/d;LG2/A;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
