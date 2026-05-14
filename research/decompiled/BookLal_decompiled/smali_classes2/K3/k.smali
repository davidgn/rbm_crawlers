.class public final LK3/k;
.super LK3/i;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lz3/g;I)V
    .locals 0

    iput p2, p0, LK3/k;->c:I

    invoke-direct {p0, p1}, LK3/i;-><init>(Lz3/g;)V

    return-void
.end method

.method private final j()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onNext(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LK3/i;->b:LB3/c;

    invoke-virtual {v0}, LB3/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK3/i;->c(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, LK3/i;->a:Lz3/g;

    invoke-interface {v0, p1}, Lz3/g;->onNext(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Landroid/support/v4/media/session/a;->u(Ljava/util/concurrent/atomic/AtomicLong;J)V

    goto :goto_0

    :cond_2
    iget p1, p0, LK3/k;->c:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, LC3/c;

    const-string v0, "create: could not emit value due to lack of requests"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, LK3/i;->c(Ljava/lang/Throwable;)V

    :goto_0
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
