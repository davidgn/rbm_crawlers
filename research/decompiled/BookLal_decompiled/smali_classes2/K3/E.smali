.class public final LK3/E;
.super LR3/b;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Iterator;

.field public volatile b:Z

.field public c:Z

.field public final synthetic d:I

.field public final e:Lz3/g;


# direct methods
.method public constructor <init>(Lz3/g;Ljava/util/Iterator;I)V
    .locals 0

    iput p3, p0, LK3/E;->d:I

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p2, p0, LK3/E;->a:Ljava/util/Iterator;

    iput-object p1, p0, LK3/E;->e:Lz3/g;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/E;->b:Z

    return-void
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LK3/E;->a:Ljava/util/Iterator;

    return-void
.end method

.method public final f(J)V
    .locals 8

    invoke-static {p1, p2}, LR3/f;->c(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {p0, p1, p2}, Landroid/support/v4/media/session/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_a

    iget p1, p0, LK3/E;->d:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LK3/E;->a:Ljava/util/Iterator;

    iget-object p2, p0, LK3/E;->e:Lz3/g;

    :cond_0
    iget-boolean v0, p0, LK3/E;->b:Z

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-boolean v1, p0, LK3/E;->b:Z

    if-eqz v1, :cond_2

    goto/16 :goto_2

    :cond_2
    if-nez v0, :cond_3

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Iterator.next() returned a null value"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_3
    invoke-interface {p2, v0}, Lz3/g;->onNext(Ljava/lang/Object;)V

    iget-boolean v0, p0, LK3/E;->b:Z

    if-eqz v0, :cond_4

    goto/16 :goto_2

    :cond_4
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    iget-boolean p1, p0, LK3/E;->b:Z

    if-nez p1, :cond_1b

    invoke-interface {p2}, Lz3/g;->onComplete()V

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {p2, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catchall_1
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {p2, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, LK3/E;->a:Ljava/util/Iterator;

    iget-object p2, p0, LK3/E;->e:Lz3/g;

    check-cast p2, LH3/a;

    :cond_5
    iget-boolean v0, p0, LK3/E;->b:Z

    if-eqz v0, :cond_6

    goto/16 :goto_2

    :cond_6
    :try_start_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    iget-boolean v1, p0, LK3/E;->b:Z

    if-eqz v1, :cond_7

    goto/16 :goto_2

    :cond_7
    if-nez v0, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Iterator.next() returned a null value"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_8
    invoke-interface {p2, v0}, LH3/a;->e(Ljava/lang/Object;)Z

    iget-boolean v0, p0, LK3/E;->b:Z

    if-eqz v0, :cond_9

    goto/16 :goto_2

    :cond_9
    :try_start_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v0, :cond_5

    iget-boolean p1, p0, LK3/E;->b:Z

    if-nez p1, :cond_1b

    invoke-interface {p2}, Lz3/g;->onComplete()V

    goto/16 :goto_2

    :catchall_2
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {p2, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catchall_3
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {p2, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_a
    iget v0, p0, LK3/E;->d:I

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, LK3/E;->a:Ljava/util/Iterator;

    iget-object v1, p0, LK3/E;->e:Lz3/g;

    const-wide/16 v2, 0x0

    :cond_b
    move-wide v4, v2

    :cond_c
    :goto_0
    cmp-long v6, v4, p1

    if-eqz v6, :cond_12

    iget-boolean v6, p0, LK3/E;->b:Z

    if-eqz v6, :cond_d

    goto/16 :goto_2

    :cond_d
    :try_start_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    iget-boolean v7, p0, LK3/E;->b:Z

    if-eqz v7, :cond_e

    goto/16 :goto_2

    :cond_e
    if-nez v6, :cond_f

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Iterator.next() returned a null value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_f
    invoke-interface {v1, v6}, Lz3/g;->onNext(Ljava/lang/Object;)V

    iget-boolean v6, p0, LK3/E;->b:Z

    if-eqz v6, :cond_10

    goto/16 :goto_2

    :cond_10
    :try_start_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-nez v6, :cond_11

    iget-boolean p1, p0, LK3/E;->b:Z

    if-nez p1, :cond_1b

    invoke-interface {v1}, Lz3/g;->onComplete()V

    goto/16 :goto_2

    :cond_11
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_0

    :catchall_4
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {v1, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catchall_5
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {v1, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_12
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    cmp-long v6, v4, p1

    if-nez v6, :cond_c

    neg-long p1, v4

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    cmp-long v4, p1, v2

    if-nez v4, :cond_b

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, LK3/E;->a:Ljava/util/Iterator;

    iget-object v1, p0, LK3/E;->e:Lz3/g;

    check-cast v1, LH3/a;

    const-wide/16 v2, 0x0

    :cond_13
    move-wide v4, v2

    :cond_14
    :goto_1
    cmp-long v6, v4, p1

    if-eqz v6, :cond_1a

    iget-boolean v6, p0, LK3/E;->b:Z

    if-eqz v6, :cond_15

    goto :goto_2

    :cond_15
    :try_start_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    iget-boolean v7, p0, LK3/E;->b:Z

    if-eqz v7, :cond_16

    goto :goto_2

    :cond_16
    if-nez v6, :cond_17

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Iterator.next() returned a null value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_17
    invoke-interface {v1, v6}, LH3/a;->e(Ljava/lang/Object;)Z

    move-result v6

    iget-boolean v7, p0, LK3/E;->b:Z

    if-eqz v7, :cond_18

    goto :goto_2

    :cond_18
    :try_start_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-nez v7, :cond_19

    iget-boolean p1, p0, LK3/E;->b:Z

    if-nez p1, :cond_1b

    invoke-interface {v1}, Lz3/g;->onComplete()V

    goto :goto_2

    :cond_19
    if-eqz v6, :cond_14

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_1

    :catchall_6
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {v1, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_7
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {v1, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1a
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    cmp-long v6, v4, p1

    if-nez v6, :cond_14

    neg-long p1, v4

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    cmp-long v4, p1, v2

    if-nez v4, :cond_13

    :cond_1b
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final g(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, LK3/E;->a:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LK3/E;->a:Ljava/util/Iterator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v2, p0, LK3/E;->c:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/E;->c:Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    :goto_0
    iget-object v0, p0, LK3/E;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Iterator.next() returned a null value"

    invoke-static {v0, v1}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
