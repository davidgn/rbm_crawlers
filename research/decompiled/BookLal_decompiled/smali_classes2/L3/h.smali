.class public final LL3/h;
.super Lz3/h;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LL3/h;->a:I

    iput-object p2, p0, LL3/h;->b:Ljava/lang/Object;

    iput-object p3, p0, LL3/h;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lz3/j;)V
    .locals 6

    iget v0, p0, LL3/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL3/h;->b:Ljava/lang/Object;

    check-cast v0, [Lz3/k;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    aget-object v0, v0, v3

    new-instance v1, LJ3/d;

    new-instance v2, LK0/j;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, LK0/j;-><init>(Ljava/lang/Object;I)V

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, LJ3/d;-><init>(Lz3/j;Ljava/lang/Object;I)V

    check-cast v0, Lz3/h;

    invoke-virtual {v0, v1}, Lz3/h;->b(Lz3/j;)V

    goto :goto_2

    :cond_0
    new-instance v2, LL3/v;

    iget-object v4, p0, LL3/h;->c:Ljava/lang/Object;

    check-cast v4, Ld3/a;

    invoke-direct {v2, p1, v1, v4}, LL3/v;-><init>(Lz3/j;ILd3/a;)V

    invoke-interface {p1, v2}, Lz3/j;->a(LB3/b;)V

    move p1, v3

    :goto_0
    if-ge p1, v1, :cond_5

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-gtz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    aget-object v4, v0, p1

    if-nez v4, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "One of the sources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v2, p1}, LL3/v;->a(I)V

    iget-object p1, v2, LL3/v;->a:Lz3/j;

    invoke-interface {p1, v0}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-static {v0}, LL4/l;->y(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    iget-object v5, v2, LL3/v;->c:[LL3/w;

    aget-object v5, v5, p1

    check-cast v4, Lz3/h;

    invoke-virtual {v4, v5}, Lz3/h;->b(Lz3/j;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void

    :pswitch_0
    new-instance v0, LL3/f;

    iget-object v1, p0, LL3/h;->c:Ljava/lang/Object;

    check-cast v1, LE3/d;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, LL3/f;-><init>(Lz3/j;LE3/d;I)V

    iget-object p1, p0, LL3/h;->b:Ljava/lang/Object;

    check-cast p1, Lz3/q;

    invoke-virtual {p1, v0}, Lz3/q;->b(Lz3/r;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
