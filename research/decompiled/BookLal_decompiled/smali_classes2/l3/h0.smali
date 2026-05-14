.class public final Ll3/h0;
.super LB/y;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lj3/I;


# direct methods
.method public synthetic constructor <init>(Lj3/I;I)V
    .locals 0

    iput p2, p0, Ll3/h0;->b:I

    iput-object p1, p0, Ll3/h0;->c:Lj3/I;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, LB/y;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget v0, p0, Ll3/h0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/h0;->c:Lj3/I;

    check-cast v0, Lm3/n;

    iget-object v0, v0, Lm3/n;->h:Lj0/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lj0/d;->e(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ll3/h0;->c:Lj3/I;

    check-cast v0, Ll3/L0;

    invoke-virtual {v0}, Ll3/L0;->r()V

    return-void

    :pswitch_1
    iget-object v0, p0, Ll3/h0;->c:Lj3/I;

    check-cast v0, Ll3/o0;

    iget-object v1, v0, Ll3/o0;->d:Ll3/R1;

    iget-object v1, v1, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v1, Ll3/K0;

    iget-object v1, v1, Ll3/K0;->j:Ll3/L0;

    iget-object v1, v1, Ll3/L0;->X:Ll3/h0;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, LB/y;->f(Ljava/lang/Object;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 3

    iget v0, p0, Ll3/h0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/h0;->c:Lj3/I;

    check-cast v0, Lm3/n;

    iget-object v0, v0, Lm3/n;->h:Lj0/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj0/d;->e(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ll3/h0;->c:Lj3/I;

    check-cast v0, Ll3/L0;

    iget-object v1, v0, Ll3/L0;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ll3/L0;->t()V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Ll3/h0;->c:Lj3/I;

    check-cast v0, Ll3/o0;

    iget-object v1, v0, Ll3/o0;->d:Ll3/R1;

    iget-object v1, v1, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v1, Ll3/K0;

    iget-object v1, v1, Ll3/K0;->j:Ll3/L0;

    iget-object v1, v1, Ll3/L0;->X:Ll3/h0;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LB/y;->f(Ljava/lang/Object;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
