.class public final LL3/d;
.super Lz3/h;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LL3/d;->a:I

    iput-object p1, p0, LL3/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lz3/j;)V
    .locals 2

    iget v0, p0, LL3/d;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LL3/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LL3/l;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p0, LL3/d;->b:Ljava/lang/Object;

    check-cast p1, Lz3/a;

    invoke-virtual {p1, v0}, Lz3/a;->d(Lz3/b;)V

    return-void

    :pswitch_0
    new-instance v0, LL3/c;

    invoke-direct {v0, p1}, LL3/c;-><init>(Lz3/j;)V

    invoke-interface {p1, v0}, Lz3/j;->a(LB3/b;)V

    :try_start_0
    iget-object p1, p0, LL3/d;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/inappmessaging/internal/a;

    iget-object v1, p1, Lcom/google/firebase/inappmessaging/internal/a;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/tasks/Task;

    iget-object p1, p1, Lcom/google/firebase/inappmessaging/internal/a;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-static {v1, p1, v0}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->D(Lcom/google/android/gms/tasks/Task;Ljava/util/concurrent/Executor;LL3/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, LL3/c;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
