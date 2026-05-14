.class public final Ll3/R1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/u;
.implements Lj3/Q;


# static fields
.field public static final d:Ll3/P1;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll3/P1;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ll3/P1;-><init>(I)V

    sput-object v0, Ll3/R1;->d:Ll3/P1;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Ll3/R1;->a:I

    sget-object v0, Ll3/P1;->b:Ll3/P1;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Ll3/J1;->p()Ll3/w0;

    move-result-object v1

    iput-object v1, p0, Ll3/R1;->c:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Ll3/R1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ll3/R1;->a:I

    iput-object p2, p0, Ll3/R1;->c:Ljava/lang/Object;

    iput-object p3, p0, Ll3/R1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Ll3/R1;->a:I

    .line 5
    invoke-static {}, Lj3/U;->a()Lj3/U;

    move-result-object v0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v1, "registry"

    invoke-static {v0, v1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ll3/R1;->b:Ljava/lang/Object;

    .line 8
    const-string v0, "defaultPolicy"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ll3/R1;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lj3/r;)V
    .locals 6

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/d1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lj3/r;->a:Lj3/q;

    sget-object v2, Lj3/q;->e:Lj3/q;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lj3/q;->c:Lj3/q;

    iget-object v3, v0, Ll3/d1;->c:Lj3/i;

    if-eq v1, v2, :cond_1

    sget-object v2, Lj3/q;->d:Lj3/q;

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-virtual {v3}, Lj3/i;->h()V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v4, 0x1

    iget-object v5, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v5, Lj3/P;

    if-eq v2, v4, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    const/4 p1, 0x3

    if-ne v2, p1, :cond_3

    new-instance p1, Ll3/c1;

    invoke-direct {p1, v0, v5}, Ll3/c1;-><init>(Ll3/d1;Lj3/P;)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported state:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance v0, Ll3/b1;

    iget-object p1, p1, Lj3/r;->b:Lj3/r0;

    invoke-static {p1}, Lj3/N;->a(Lj3/r0;)Lj3/N;

    move-result-object p1

    invoke-direct {v0, p1}, Ll3/b1;-><init>(Lj3/N;)V

    move-object p1, v0

    goto :goto_0

    :cond_5
    new-instance p1, Ll3/b1;

    const/4 v0, 0x0

    invoke-static {v5, v0}, Lj3/N;->b(Lj3/P;Ll3/t1;)Lj3/N;

    move-result-object v0

    invoke-direct {p1, v0}, Ll3/b1;-><init>(Lj3/N;)V

    goto :goto_0

    :cond_6
    new-instance p1, Ll3/b1;

    sget-object v0, Lj3/N;->e:Lj3/N;

    invoke-direct {p1, v0}, Ll3/b1;-><init>(Lj3/N;)V

    :goto_0
    invoke-virtual {v3, v1, p1}, Lj3/i;->i(Lj3/q;Lj3/B;)V

    :goto_1
    return-void
.end method

.method public b(Lj3/f0;)V
    .locals 5

    iget v0, p0, Ll3/R1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v1, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v1, Ll3/z1;

    invoke-static {v0, v1}, Ll3/B0;->p(Ll3/B0;Ll3/z1;)V

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v0, v0, Ll3/B0;->o:Ll3/x1;

    iget-object v0, v0, Ll3/x1;->f:Ll3/z1;

    iget-object v1, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v1, Ll3/z1;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v0, v0, Ll3/B0;->m:Ll3/A1;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v1, v0, Ll3/A1;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, v0, Ll3/A1;->a:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v4, v0, Ll3/A1;->c:I

    add-int/2addr v4, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :goto_0
    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v0, v0, Ll3/B0;->c:Lj3/w0;

    new-instance v1, Ll3/B;

    const/16 v2, 0x16

    invoke-direct {v1, v2, p0, p1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :pswitch_0
    iget-object v0, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v0, Ll3/u;

    invoke-interface {v0, p1}, Ll3/u;->b(Lj3/f0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 3

    iget v0, p0, Ll3/R1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    invoke-virtual {v0}, Ll3/B0;->i()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, LA2/h;

    const/16 v2, 0x1b

    invoke-direct {v1, p0, v2}, LA2/h;-><init>(Ljava/lang/Object;I)V

    iget-object v0, v0, Ll3/B0;->c:Lj3/w0;

    invoke-virtual {v0, v1}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v0, Ll3/u;

    invoke-interface {v0}, Ll3/u;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lj1/a;)V
    .locals 3

    iget v0, p0, Ll3/R1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v0, v0, Ll3/B0;->o:Ll3/x1;

    iget-object v1, v0, Ll3/x1;->f:Ll3/z1;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Headers should be received prior to messages."

    invoke-static {v1, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, v0, Ll3/x1;->f:Ll3/z1;

    iget-object v1, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v1, Ll3/z1;

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v0, v0, Ll3/B0;->c:Lj3/w0;

    new-instance v1, Ll3/B;

    const/16 v2, 0x17

    invoke-direct {v1, v2, p0, p1}, Ll3/B;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v0, Ll3/u;

    invoke-interface {v0, p1}, Ll3/u;->d(Lj1/a;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public f(Lj3/r0;Ll3/t;Lj3/f0;)V
    .locals 10

    iget v0, p0, Ll3/R1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v0, v0, Ll3/B0;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v1, Ll3/B0;

    iget-object v2, v1, Ll3/B0;->o:Ll3/x1;

    iget-object v3, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v3, Ll3/z1;

    invoke-virtual {v2, v3}, Ll3/x1;->d(Ll3/z1;)Ll3/x1;

    move-result-object v2

    iput-object v2, v1, Ll3/B0;->o:Ll3/x1;

    iget-object v1, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v1, Ll3/B0;

    iget-object v1, v1, Ll3/B0;->n:LC4/v;

    iget-object v2, p1, Lj3/r0;->a:Lj3/q0;

    iget-object v1, v1, LC4/v;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v0, v0, Ll3/B0;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast p1, Ll3/B0;

    iget-object p2, p1, Ll3/B0;->s:Lj3/r0;

    sget-object p3, Ll3/t;->a:Ll3/t;

    new-instance v0, Lj3/f0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, p3, v0}, Ll3/B0;->x(Lj3/r0;Ll3/t;Lj3/f0;)V

    goto/16 :goto_e

    :cond_0
    iget-object v0, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v0, Ll3/z1;

    iget-boolean v1, v0, Ll3/z1;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v1, Ll3/B0;

    invoke-static {v1, v0}, Ll3/B0;->p(Ll3/B0;Ll3/z1;)V

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v0, v0, Ll3/B0;->o:Ll3/x1;

    iget-object v0, v0, Ll3/x1;->f:Ll3/z1;

    iget-object v1, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v1, Ll3/z1;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    invoke-virtual {v0, p1, p2, p3}, Ll3/B0;->x(Lj3/r0;Ll3/t;Lj3/f0;)V

    goto/16 :goto_e

    :cond_1
    sget-object v0, Ll3/t;->d:Ll3/t;

    if-ne p2, v0, :cond_2

    iget-object v1, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v1, Ll3/B0;

    iget-object v1, v1, Ll3/B0;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_2

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v1, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v1, Ll3/z1;

    invoke-static {v0, v1}, Ll3/B0;->p(Ll3/B0;Ll3/z1;)V

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v0, v0, Ll3/B0;->o:Ll3/x1;

    iget-object v0, v0, Ll3/x1;->f:Ll3/z1;

    iget-object v1, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v1, Ll3/z1;

    if-ne v0, v1, :cond_1b

    sget-object v0, Lj3/r0;->l:Lj3/r0;

    const-string v1, "Too many transparent retries. Might be a bug in gRPC"

    invoke-virtual {v0, v1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    invoke-virtual {p1}, Lj3/r0;->a()Lj3/t0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object p1

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    invoke-virtual {v0, p1, p2, p3}, Ll3/B0;->x(Lj3/r0;Ll3/t;Lj3/f0;)V

    goto/16 :goto_e

    :cond_2
    iget-object v1, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v1, Ll3/B0;

    iget-object v1, v1, Ll3/B0;->o:Ll3/x1;

    iget-object v1, v1, Ll3/x1;->f:Ll3/z1;

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_14

    sget-object v0, Ll3/t;->b:Ll3/t;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v0, v0, Ll3/B0;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_9

    :cond_3
    sget-object v0, Ll3/t;->c:Ll3/t;

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-boolean v1, v0, Ll3/B0;->h:Z

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Ll3/B0;->v()V

    goto/16 :goto_d

    :cond_4
    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v0, v0, Ll3/B0;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-boolean v3, v0, Ll3/B0;->h:Z

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v3, :cond_c

    sget-object v0, Ll3/B0;->F:Lj3/a0;

    invoke-virtual {p3, v0}, Lj3/f0;->c(Lj3/c0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_5
    :goto_0
    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v3, v0, Ll3/B0;->g:Ll3/d0;

    iget-object v3, v3, Ll3/d0;->c:LK2/g;

    iget-object v5, p1, Lj3/r0;->a:Lj3/q0;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget-object v5, v0, Ll3/B0;->m:Ll3/A1;

    if-eqz v5, :cond_7

    if-nez v3, :cond_6

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_7

    :cond_6
    iget-object v0, v0, Ll3/B0;->m:Ll3/A1;

    invoke-virtual {v0}, Ll3/A1;->a()Z

    move-result v0

    xor-int/2addr v0, v2

    goto :goto_1

    :cond_7
    move v0, v1

    :goto_1
    if-eqz v3, :cond_8

    if-nez v0, :cond_8

    move v1, v2

    :cond_8
    if-eqz v1, :cond_9

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    invoke-static {v0, v4}, Ll3/B0;->q(Ll3/B0;Ljava/lang/Integer;)V

    :cond_9
    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v3, v0, Ll3/B0;->i:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v2, v0, Ll3/B0;->o:Ll3/x1;

    iget-object v4, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v4, Ll3/z1;

    invoke-virtual {v2, v4}, Ll3/x1;->b(Ll3/z1;)Ll3/x1;

    move-result-object v2

    iput-object v2, v0, Ll3/B0;->o:Ll3/x1;

    if-eqz v1, :cond_b

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v1, v0, Ll3/B0;->o:Ll3/x1;

    invoke-virtual {v0, v1}, Ll3/B0;->w(Ll3/x1;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v0, v0, Ll3/B0;->o:Ll3/x1;

    iget-object v0, v0, Ll3/x1;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_a
    :goto_2
    monitor-exit v3

    goto/16 :goto_e

    :cond_b
    monitor-exit v3

    goto/16 :goto_d

    :goto_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_c
    iget-object v3, v0, Ll3/B0;->f:Ll3/B1;

    const-wide/16 v6, 0x0

    if-nez v3, :cond_d

    new-instance v0, LJ2/j;

    invoke-direct {v0, v6, v7, v1}, LJ2/j;-><init>(JZ)V

    goto/16 :goto_8

    :cond_d
    iget-object v3, v3, Ll3/B1;->f:LK2/g;

    iget-object v8, p1, Lj3/r0;->a:Lj3/q0;

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    sget-object v8, Ll3/B0;->F:Lj3/a0;

    invoke-virtual {p3, v8}, Lj3/f0;->c(Lj3/c0;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_e

    :try_start_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_e
    :goto_4
    iget-object v5, v0, Ll3/B0;->m:Ll3/A1;

    if-eqz v5, :cond_10

    if-nez v3, :cond_f

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_10

    :cond_f
    iget-object v5, v0, Ll3/B0;->m:Ll3/A1;

    invoke-virtual {v5}, Ll3/A1;->a()Z

    move-result v5

    xor-int/2addr v5, v2

    goto :goto_5

    :cond_10
    move v5, v1

    :goto_5
    iget-object v8, v0, Ll3/B0;->f:Ll3/B1;

    iget v8, v8, Ll3/B1;->a:I

    iget-object v9, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v9, Ll3/z1;

    iget v9, v9, Ll3/z1;->d:I

    add-int/2addr v9, v2

    if-le v8, v9, :cond_12

    if-nez v5, :cond_12

    if-nez v4, :cond_11

    if-eqz v3, :cond_12

    iget-wide v3, v0, Ll3/B0;->x:J

    long-to-double v3, v3

    sget-object v5, Ll3/B0;->H:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-long v6, v5

    iget-wide v3, v0, Ll3/B0;->x:J

    long-to-double v3, v3

    iget-object v5, v0, Ll3/B0;->f:Ll3/B1;

    iget-wide v8, v5, Ll3/B1;->d:D

    mul-double/2addr v3, v8

    double-to-long v3, v3

    iget-wide v8, v5, Ll3/B1;->c:J

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, v0, Ll3/B0;->x:J

    :goto_6
    move v0, v2

    goto :goto_7

    :cond_11
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_12

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    iget-object v3, v0, Ll3/B0;->f:Ll3/B1;

    iget-wide v3, v3, Ll3/B1;->b:J

    iput-wide v3, v0, Ll3/B0;->x:J

    goto :goto_6

    :cond_12
    move v0, v1

    :goto_7
    new-instance v3, LJ2/j;

    invoke-direct {v3, v6, v7, v0}, LJ2/j;-><init>(JZ)V

    move-object v0, v3

    :goto_8
    iget-boolean v3, v0, LJ2/j;->b:Z

    if-eqz v3, :cond_1a

    iget-object p1, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast p1, Ll3/B0;

    iget-object p2, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast p2, Ll3/z1;

    iget p2, p2, Ll3/z1;->d:I

    add-int/2addr p2, v2

    invoke-virtual {p1, p2, v1}, Ll3/B0;->s(IZ)Ll3/z1;

    move-result-object p1

    if-nez p1, :cond_13

    goto/16 :goto_e

    :cond_13
    iget-object p2, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast p2, Ll3/B0;

    iget-object v1, p2, Ll3/B0;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object p2, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast p2, Ll3/B0;

    new-instance p3, Lj0/d;

    iget-object v2, p2, Ll3/B0;->i:Ljava/lang/Object;

    invoke-direct {p3, v2}, Lj0/d;-><init>(Ljava/lang/Object;)V

    iput-object p3, p2, Ll3/B0;->v:Lj0/d;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object p2, p2, Ll3/B0;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ll3/y1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ll3/y1;-><init>(Ll3/R1;Ll3/z1;I)V

    iget-wide v2, v0, LJ2/j;->c:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {p3, p1}, Lj0/d;->d(Ljava/util/concurrent/ScheduledFuture;)V

    goto/16 :goto_e

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :cond_14
    :goto_9
    iget-object p1, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast p1, Ll3/B0;

    iget-object p2, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast p2, Ll3/z1;

    iget p2, p2, Ll3/z1;->d:I

    invoke-virtual {p1, p2, v2}, Ll3/B0;->s(IZ)Ll3/z1;

    move-result-object p1

    if-nez p1, :cond_15

    goto/16 :goto_e

    :cond_15
    iget-object p2, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast p2, Ll3/B0;

    iget-boolean p3, p2, Ll3/B0;->h:Z

    if-eqz p3, :cond_17

    iget-object p3, p2, Ll3/B0;->i:Ljava/lang/Object;

    monitor-enter p3

    :try_start_6
    iget-object p2, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast p2, Ll3/B0;

    iget-object v0, p2, Ll3/B0;->o:Ll3/x1;

    iget-object v3, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v3, Ll3/z1;

    invoke-virtual {v0, v3, p1}, Ll3/x1;->c(Ll3/z1;Ll3/z1;)Ll3/x1;

    move-result-object v0

    iput-object v0, p2, Ll3/B0;->o:Ll3/x1;

    iget-object p2, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast p2, Ll3/B0;

    iget-object v0, p2, Ll3/B0;->o:Ll3/x1;

    invoke-virtual {p2, v0}, Ll3/B0;->w(Ll3/x1;)Z

    move-result p2

    if-nez p2, :cond_16

    iget-object p2, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast p2, Ll3/B0;

    iget-object p2, p2, Ll3/B0;->o:Ll3/x1;

    iget-object p2, p2, Ll3/x1;->d:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    if-ne p2, v2, :cond_16

    move v1, v2

    goto :goto_a

    :catchall_2
    move-exception p1

    goto :goto_b

    :cond_16
    :goto_a
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_19

    iget-object p2, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast p2, Ll3/B0;

    invoke-static {p2, p1}, Ll3/B0;->p(Ll3/B0;Ll3/z1;)V

    goto :goto_c

    :goto_b
    :try_start_7
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1

    :cond_17
    iget-object p3, p2, Ll3/B0;->f:Ll3/B1;

    if-eqz p3, :cond_18

    iget p3, p3, Ll3/B1;->a:I

    if-ne p3, v2, :cond_19

    :cond_18
    invoke-virtual {p2, p1}, Ll3/B0;->r(Ll3/z1;)LU0/n;

    move-result-object p2

    if-eqz p2, :cond_19

    invoke-virtual {p2}, LU0/n;->run()V

    :cond_19
    :goto_c
    iget-object p2, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast p2, Ll3/B0;

    iget-object p2, p2, Ll3/B0;->b:Ljava/util/concurrent/Executor;

    new-instance p3, Ll3/y1;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p1, v0}, Ll3/y1;-><init>(Ll3/R1;Ll3/z1;I)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_e

    :cond_1a
    :goto_d
    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v1, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v1, Ll3/z1;

    invoke-static {v0, v1}, Ll3/B0;->p(Ll3/B0;Ll3/z1;)V

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v0, v0, Ll3/B0;->o:Ll3/x1;

    iget-object v0, v0, Ll3/x1;->f:Ll3/z1;

    iget-object v1, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v1, Ll3/z1;

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    invoke-virtual {v0, p1, p2, p3}, Ll3/B0;->x(Lj3/r0;Ll3/t;Lj3/f0;)V

    :cond_1b
    :goto_e
    return-void

    :catchall_3
    move-exception p1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p1

    :pswitch_0
    iget-object v0, p0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/k0;

    iget-object v0, v0, Ll3/k0;->b:Ll3/l0;

    iget-object v0, v0, Ll3/l0;->b:LR0/i;

    invoke-virtual {p1}, Lj3/r0;->f()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v0, v0, LR0/i;->c:Ljava/lang/Object;

    check-cast v0, Ll3/w0;

    invoke-interface {v0}, Ll3/w0;->a()V

    goto :goto_f

    :cond_1c
    iget-object v0, v0, LR0/i;->d:Ljava/lang/Object;

    check-cast v0, Ll3/w0;

    invoke-interface {v0}, Ll3/w0;->a()V

    :goto_f
    iget-object v0, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v0, Ll3/u;

    invoke-interface {v0, p1, p2, p3}, Ll3/u;->f(Lj3/r0;Ll3/t;Lj3/f0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Ll3/R1;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "delegate"

    iget-object v2, p0, Ll3/R1;->b:Ljava/lang/Object;

    check-cast v2, Ll3/u;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
