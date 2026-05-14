.class public final LK3/D;
.super LR3/b;
.source "SourceFile"


# instance fields
.field public final a:[Ljava/lang/Object;

.field public b:I

.field public volatile c:Z

.field public final synthetic d:I

.field public final e:Lz3/g;


# direct methods
.method public constructor <init>(Lz3/g;[Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LK3/D;->d:I

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p2, p0, LK3/D;->a:[Ljava/lang/Object;

    iput-object p1, p0, LK3/D;->e:Lz3/g;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LK3/D;->c:Z

    return-void
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, LK3/D;->a:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, LK3/D;->b:I

    return-void
.end method

.method public final f(J)V
    .locals 10

    invoke-static {p1, p2}, LR3/f;->c(J)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0, p1, p2}, Landroid/support/v4/media/session/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    iget p1, p0, LK3/D;->d:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, LK3/D;->a:[Ljava/lang/Object;

    array-length p2, p1

    iget-object v0, p0, LK3/D;->e:Lz3/g;

    iget v1, p0, LK3/D;->b:I

    :goto_0
    if-eq v1, p2, :cond_2

    iget-boolean v2, p0, LK3/D;->c:Z

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    aget-object v2, p1, v1

    if-nez v2, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "array element is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_1
    invoke-interface {v0, v2}, Lz3/g;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, LK3/D;->c:Z

    if-eqz p1, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-interface {v0}, Lz3/g;->onComplete()V

    goto/16 :goto_4

    :pswitch_0
    iget-object p1, p0, LK3/D;->a:[Ljava/lang/Object;

    array-length p2, p1

    iget-object v0, p0, LK3/D;->e:Lz3/g;

    check-cast v0, LH3/a;

    iget v1, p0, LK3/D;->b:I

    :goto_1
    if-eq v1, p2, :cond_6

    iget-boolean v2, p0, LK3/D;->c:Z

    if-eqz v2, :cond_4

    goto/16 :goto_4

    :cond_4
    aget-object v2, p1, v1

    if-nez v2, :cond_5

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "array element is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_5
    invoke-interface {v0, v2}, LH3/a;->e(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iget-boolean p1, p0, LK3/D;->c:Z

    if-eqz p1, :cond_7

    goto/16 :goto_4

    :cond_7
    invoke-interface {v0}, Lz3/g;->onComplete()V

    goto/16 :goto_4

    :cond_8
    iget v0, p0, LK3/D;->d:I

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, LK3/D;->a:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, LK3/D;->b:I

    iget-object v3, p0, LK3/D;->e:Lz3/g;

    const-wide/16 v4, 0x0

    :cond_9
    move-wide v6, v4

    :cond_a
    :goto_2
    cmp-long v8, v6, p1

    if-eqz v8, :cond_d

    if-eq v2, v1, :cond_d

    iget-boolean v8, p0, LK3/D;->c:Z

    if-eqz v8, :cond_b

    goto/16 :goto_4

    :cond_b
    aget-object v8, v0, v2

    if-nez v8, :cond_c

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "array element is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_c
    invoke-interface {v3, v8}, Lz3/g;->onNext(Ljava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_d
    if-ne v2, v1, :cond_e

    iget-boolean p1, p0, LK3/D;->c:Z

    if-nez p1, :cond_16

    invoke-interface {v3}, Lz3/g;->onComplete()V

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    cmp-long v8, v6, p1

    if-nez v8, :cond_a

    iput v2, p0, LK3/D;->b:I

    neg-long p1, v6

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    cmp-long v6, p1, v4

    if-nez v6, :cond_9

    goto :goto_4

    :pswitch_1
    iget-object v0, p0, LK3/D;->a:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, LK3/D;->b:I

    iget-object v3, p0, LK3/D;->e:Lz3/g;

    check-cast v3, LH3/a;

    const-wide/16 v4, 0x0

    :cond_f
    move-wide v6, v4

    :cond_10
    :goto_3
    cmp-long v8, v6, p1

    if-eqz v8, :cond_14

    if-eq v2, v1, :cond_14

    iget-boolean v8, p0, LK3/D;->c:Z

    if-eqz v8, :cond_11

    goto :goto_4

    :cond_11
    aget-object v8, v0, v2

    if-nez v8, :cond_12

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "array element is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, p1}, Lz3/g;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_12
    invoke-interface {v3, v8}, LH3/a;->e(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_14
    if-ne v2, v1, :cond_15

    iget-boolean p1, p0, LK3/D;->c:Z

    if-nez p1, :cond_16

    invoke-interface {v3}, Lz3/g;->onComplete()V

    goto :goto_4

    :cond_15
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    cmp-long v8, v6, p1

    if-nez v8, :cond_10

    iput v2, p0, LK3/D;->b:I

    neg-long p1, v6

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    cmp-long v6, p1, v4

    if-nez v6, :cond_f

    :cond_16
    :goto_4
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
    .locals 2

    iget v0, p0, LK3/D;->b:I

    iget-object v1, p0, LK3/D;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LK3/D;->b:I

    iget-object v1, p0, LK3/D;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, LK3/D;->b:I

    aget-object v0, v1, v0

    const-string v1, "array element is null"

    invoke-static {v0, v1}, LG3/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
