.class public final Ls3/c;
.super Lj3/i;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public e:Ljava/lang/Object;

.field public final synthetic f:Lj3/S;


# direct methods
.method public constructor <init>(Ls3/d;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ls3/c;->d:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls3/c;->f:Lj3/S;

    return-void
.end method

.method public constructor <init>(Ls3/l;Lj3/i;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ls3/c;->d:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ls3/c;->f:Lj3/S;

    .line 5
    iput-object p2, p0, Ls3/c;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(LJ2/e;)Lj3/P;
    .locals 5

    iget v0, p0, Ls3/c;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Ls3/c;->j()Lj3/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj3/i;->a(LJ2/e;)Lj3/P;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-instance v0, Ls3/k;

    iget-object v1, p0, Ls3/c;->e:Ljava/lang/Object;

    check-cast v1, Lj3/i;

    invoke-virtual {v1, p1}, Lj3/i;->a(LJ2/e;)Lj3/P;

    move-result-object v1

    iget-object v2, p0, Ls3/c;->f:Lj3/S;

    check-cast v2, Ls3/l;

    invoke-direct {v0, v2, v1}, Ls3/k;-><init>(Ls3/l;Lj3/P;)V

    iget-object p1, p1, LJ2/e;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ls3/l;->g(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v2, Ls3/l;->c:Ls3/f;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj3/y;

    iget-object v4, v4, Lj3/y;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v1, v1, Ls3/f;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj3/y;

    iget-object p1, p1, Lj3/y;->a:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, v2, Ls3/l;->c:Ls3/f;

    iget-object v1, v1, Ls3/f;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls3/e;

    invoke-virtual {p1, v0}, Ls3/e;->a(Ls3/k;)V

    iget-object p1, p1, Ls3/e;->d:Ljava/lang/Long;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, v0, Ls3/k;->c:Z

    iget-object v1, v0, Ls3/k;->e:Lj3/Q;

    sget-object v2, Lj3/r0;->m:Lj3/r0;

    invoke-virtual {v2}, Lj3/r0;->f()Z

    move-result v3

    xor-int/2addr p1, v3

    const-string v3, "The error status must not be OK"

    invoke-static {p1, v3}, LZ2/l;->f(ZLjava/lang/String;)V

    new-instance p1, Lj3/r;

    sget-object v3, Lj3/q;->c:Lj3/q;

    invoke-direct {p1, v3, v2}, Lj3/r;-><init>(Lj3/q;Lj3/r0;)V

    invoke-interface {v1, p1}, Lj3/Q;->a(Lj3/r;)V

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-virtual {p0}, Ls3/c;->j()Lj3/i;

    move-result-object v0

    invoke-virtual {v0}, Lj3/i;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lj3/w0;
    .locals 1

    invoke-virtual {p0}, Ls3/c;->j()Lj3/i;

    move-result-object v0

    invoke-virtual {v0}, Lj3/i;->c()Lj3/w0;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 1

    invoke-virtual {p0}, Ls3/c;->j()Lj3/i;

    move-result-object v0

    invoke-virtual {v0}, Lj3/i;->h()V

    return-void
.end method

.method public final i(Lj3/q;Lj3/B;)V
    .locals 5

    iget v0, p0, Ls3/c;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ll3/b1;

    invoke-direct {v0, p2}, Ll3/b1;-><init>(Lj3/B;)V

    iget-object p2, p0, Ls3/c;->e:Ljava/lang/Object;

    check-cast p2, Lj3/i;

    invoke-virtual {p2, p1, v0}, Lj3/i;->i(Lj3/q;Lj3/B;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ls3/c;->e:Ljava/lang/Object;

    check-cast v0, Lj3/S;

    iget-object v1, p0, Ls3/c;->f:Lj3/S;

    check-cast v1, Ls3/d;

    iget-object v2, v1, Ls3/d;->h:Lj3/S;

    sget-object v3, Lj3/q;->b:Lj3/q;

    if-ne v0, v2, :cond_0

    iget-boolean v0, v1, Ls3/d;->k:Z

    const-string v2, "there\'s pending lb while current lb has been out of READY"

    invoke-static {v0, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    iput-object p1, v1, Ls3/d;->i:Lj3/q;

    iput-object p2, v1, Ls3/d;->j:Lj3/B;

    if-ne p1, v3, :cond_3

    invoke-virtual {v1}, Ls3/d;->h()V

    goto :goto_1

    :cond_0
    iget-object v4, v1, Ls3/d;->f:Lj3/S;

    if-ne v0, v4, :cond_3

    if-ne p1, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Ls3/d;->k:Z

    if-nez v0, :cond_2

    iget-object v0, v1, Ls3/d;->c:Ls3/b;

    if-eq v2, v0, :cond_2

    invoke-virtual {v1}, Ls3/d;->h()V

    goto :goto_1

    :cond_2
    iget-object v0, v1, Ls3/d;->d:Ls3/c;

    invoke-virtual {v0, p1, p2}, Ls3/c;->i(Lj3/q;Lj3/B;)V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Lj3/i;
    .locals 1

    iget v0, p0, Ls3/c;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ls3/c;->e:Ljava/lang/Object;

    check-cast v0, Lj3/i;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Ls3/c;->f:Lj3/S;

    check-cast v0, Ls3/d;

    iget-object v0, v0, Ls3/d;->d:Ls3/c;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Ls3/c;->j()Lj3/i;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
