.class public final Lt4/I;
.super Lt4/a0;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lt4/I;->e:I

    invoke-direct {p0}, Ly4/k;-><init>()V

    iput-object p1, p0, Lt4/I;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lt4/I;->e:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lt4/I;->k(Ljava/lang/Throwable;)V

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lt4/I;->k(Ljava/lang/Throwable;)V

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lt4/I;->k(Ljava/lang/Throwable;)V

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lt4/I;->k(Ljava/lang/Throwable;)V

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 2

    iget v0, p0, Lt4/I;->e:I

    packed-switch v0, :pswitch_data_0

    sget-object p1, LY3/j;->a:LY3/j;

    iget-object v0, p0, Lt4/I;->f:Ljava/lang/Object;

    check-cast v0, Lt4/f;

    invoke-virtual {v0, p1}, Lt4/f;->resumeWith(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lt4/a0;->j()Lt4/g0;

    move-result-object p1

    invoke-virtual {p1}, Lt4/g0;->A()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lt4/n;

    iget-object v1, p0, Lt4/I;->f:Ljava/lang/Object;

    check-cast v1, Lt4/b0;

    if-eqz v0, :cond_0

    check-cast p1, Lt4/n;

    iget-object p1, p1, Lt4/n;->a:Ljava/lang/Throwable;

    invoke-static {p1}, LS4/b;->j(Ljava/lang/Throwable;)LY3/f;

    move-result-object p1

    invoke-virtual {v1, p1}, Lt4/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lt4/w;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lt4/f;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lt4/I;->f:Ljava/lang/Object;

    check-cast v0, Lk4/l;

    invoke-interface {v0, p1}, Lk4/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_2
    iget-object p1, p0, Lt4/I;->f:Ljava/lang/Object;

    check-cast p1, Lt4/G;

    invoke-interface {p1}, Lt4/G;->b()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
