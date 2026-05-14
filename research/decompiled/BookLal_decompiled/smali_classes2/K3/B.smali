.class public final LK3/B;
.super LK3/a;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:I

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LK3/x;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LK3/B;->c:I

    sget-object v0, LG3/d;->a:Ld3/a;

    .line 1
    invoke-direct {p0, p1}, LK3/a;-><init>(Lz3/d;)V

    .line 2
    iput-object v0, p0, LK3/B;->e:Ljava/lang/Object;

    .line 3
    iput p2, p0, LK3/B;->d:I

    return-void
.end method

.method public constructor <init>(Lz3/d;LE3/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LK3/B;->c:I

    .line 7
    invoke-direct {p0, p1}, LK3/a;-><init>(Lz3/d;)V

    .line 8
    iput-object p2, p0, LK3/B;->e:Ljava/lang/Object;

    const p1, 0x7fffffff

    .line 9
    iput p1, p0, LK3/B;->d:I

    return-void
.end method

.method public constructor <init>(Lz3/d;Lz3/p;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LK3/B;->c:I

    .line 4
    invoke-direct {p0, p1}, LK3/a;-><init>(Lz3/d;)V

    .line 5
    iput-object p2, p0, LK3/B;->e:Ljava/lang/Object;

    .line 6
    iput p3, p0, LK3/B;->d:I

    return-void
.end method


# virtual methods
.method public final e(Lz3/g;)V
    .locals 4

    iget v0, p0, LK3/B;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LK3/B;->e:Ljava/lang/Object;

    check-cast v0, Lz3/p;

    invoke-virtual {v0}, Lz3/p;->a()Lz3/o;

    move-result-object v0

    instance-of v1, p1, LH3/a;

    iget v2, p0, LK3/B;->d:I

    iget-object v3, p0, LK3/a;->b:Lz3/d;

    if-eqz v1, :cond_0

    new-instance v1, LK3/J;

    check-cast p1, LH3/a;

    invoke-direct {v1, p1, v0, v2}, LK3/J;-><init>(LH3/a;Lz3/o;I)V

    invoke-virtual {v3, v1}, Lz3/d;->d(Lz3/g;)V

    goto :goto_0

    :cond_0
    new-instance v1, LK3/K;

    invoke-direct {v1, p1, v0, v2}, LK3/K;-><init>(Lz3/g;Lz3/o;I)V

    invoke-virtual {v3, v1}, Lz3/d;->d(Lz3/g;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LK3/a;->b:Lz3/d;

    instance-of v1, v0, Ljava/util/concurrent/Callable;

    iget-object v2, p0, LK3/B;->e:Ljava/lang/Object;

    check-cast v2, Ld3/a;

    if-eqz v1, :cond_2

    :try_start_0
    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    invoke-static {p1}, LR3/d;->a(Lz3/g;)V

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1, v0}, LK3/m;->f(Lz3/g;Ljava/util/Iterator;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LR3/d;->b(Ljava/lang/Throwable;Lz3/g;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LR3/d;->b(Ljava/lang/Throwable;Lz3/g;)V

    goto :goto_1

    :cond_2
    new-instance v1, LK3/C;

    iget v3, p0, LK3/B;->d:I

    invoke-direct {v1, p1, v2, v3}, LK3/C;-><init>(Lz3/g;Ld3/a;I)V

    invoke-virtual {v0, v1}, Lz3/d;->d(Lz3/g;)V

    :goto_1
    return-void

    :pswitch_1
    new-instance v0, LK3/A;

    iget v1, p0, LK3/B;->d:I

    iget-object v2, p0, LK3/B;->e:Ljava/lang/Object;

    check-cast v2, LE3/c;

    invoke-direct {v0, p1, v2, v1}, LK3/A;-><init>(Lz3/g;LE3/c;I)V

    iget-object p1, p0, LK3/a;->b:Lz3/d;

    invoke-virtual {p1, v0}, Lz3/d;->d(Lz3/g;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
