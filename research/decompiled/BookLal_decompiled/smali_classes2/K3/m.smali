.class public final LK3/m;
.super Lz3/d;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LK3/m;->b:I

    iput-object p1, p0, LK3/m;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f(Lz3/g;Ljava/util/Iterator;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-static {p0}, LR3/d;->a(Lz3/g;)V

    return-void

    :cond_0
    instance-of v0, p0, LH3/a;

    if-eqz v0, :cond_1

    new-instance v0, LK3/E;

    move-object v1, p0

    check-cast v1, LH3/a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, LK3/E;-><init>(Lz3/g;Ljava/util/Iterator;I)V

    invoke-interface {p0, v0}, Lz3/g;->c(LT4/b;)V

    goto :goto_0

    :cond_1
    new-instance v0, LK3/E;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LK3/E;-><init>(Lz3/g;Ljava/util/Iterator;I)V

    invoke-interface {p0, v0}, Lz3/g;->c(LT4/b;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {p1, p0}, LR3/d;->b(Ljava/lang/Throwable;Lz3/g;)V

    return-void
.end method


# virtual methods
.method public final e(Lz3/g;)V
    .locals 4

    iget v0, p0, LK3/m;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LL3/s;

    invoke-direct {v0, p1}, LR3/c;-><init>(Lz3/g;)V

    iget-object p1, p0, LK3/m;->c:Ljava/lang/Object;

    check-cast p1, Lz3/h;

    invoke-virtual {p1, v0}, Lz3/h;->b(Lz3/j;)V

    return-void

    :pswitch_0
    new-instance v0, LK3/F;

    invoke-direct {v0, p1}, LK3/F;-><init>(Lz3/g;)V

    iget-object p1, p0, LK3/m;->c:Ljava/lang/Object;

    check-cast p1, Lz3/l;

    invoke-virtual {p1, v0}, Lz3/l;->b(Lz3/m;)V

    return-void

    :pswitch_1
    :try_start_0
    iget-object v0, p0, LK3/m;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Y;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v0}, LK3/m;->f(Lz3/g;Ljava/util/Iterator;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LR3/d;->b(Ljava/lang/Throwable;Lz3/g;)V

    :goto_0
    return-void

    :pswitch_2
    instance-of v0, p1, LH3/a;

    iget-object v1, p0, LK3/m;->c:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, LK3/D;

    move-object v2, p1

    check-cast v2, LH3/a;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, LK3/D;-><init>(Lz3/g;[Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Lz3/g;->c(LT4/b;)V

    goto :goto_1

    :cond_0
    new-instance v0, LK3/D;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, LK3/D;-><init>(Lz3/g;[Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Lz3/g;->c(LT4/b;)V

    :goto_1
    return-void

    :pswitch_3
    const/4 v0, 0x3

    invoke-static {v0}, Ls/e;->d(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    new-instance v0, LK3/j;

    sget v1, Lz3/d;->a:I

    invoke-direct {v0, p1, v1}, LK3/j;-><init>(Lz3/g;I)V

    goto :goto_2

    :cond_1
    new-instance v0, LK3/j;

    invoke-direct {v0, p1}, LK3/j;-><init>(Lz3/g;)V

    goto :goto_2

    :cond_2
    new-instance v0, LK3/k;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LK3/k;-><init>(Lz3/g;I)V

    goto :goto_2

    :cond_3
    new-instance v0, LK3/k;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LK3/k;-><init>(Lz3/g;I)V

    goto :goto_2

    :cond_4
    new-instance v0, LK3/l;

    invoke-direct {v0, p1}, LK3/i;-><init>(Lz3/g;)V

    :goto_2
    invoke-interface {p1, v0}, Lz3/g;->c(LT4/b;)V

    :try_start_1
    iget-object p1, p0, LK3/m;->c:Ljava/lang/Object;

    check-cast p1, Lz3/f;

    invoke-interface {p1, v0}, Lz3/f;->subscribe(Lz3/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, LK3/i;->c(Ljava/lang/Throwable;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
