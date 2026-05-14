.class public final Ll3/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll3/L0;


# direct methods
.method public synthetic constructor <init>(Ll3/L0;I)V
    .locals 0

    iput p2, p0, Ll3/y0;->a:I

    iput-object p1, p0, Ll3/y0;->b:Ll3/L0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Ll3/y0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/y0;->b:Ll3/L0;

    iget-object v1, v0, Ll3/L0;->w:Ll3/E0;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ll3/L0;->n(Ll3/L0;)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Ll3/y0;->b:Ll3/L0;

    iput-object v0, v1, Ll3/L0;->Y:Lj3/G;

    iget-object v0, v1, Ll3/L0;->m:Lj3/w0;

    invoke-virtual {v0}, Lj3/w0;->d()V

    iget-boolean v0, v1, Ll3/L0;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Ll3/L0;->u:Lj3/B;

    invoke-virtual {v0}, Lj3/B;->d()V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Ll3/y0;->b:Ll3/L0;

    iget-boolean v1, v0, Ll3/L0;->G:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, v0, Ll3/L0;->G:Z

    invoke-static {v0}, Ll3/L0;->o(Ll3/L0;)V

    :goto_1
    return-void

    :pswitch_2
    iget-object v0, p0, Ll3/y0;->b:Ll3/L0;

    iget-object v1, v0, Ll3/L0;->N:Ll3/l;

    const/4 v2, 0x2

    const-string v3, "Entering SHUTDOWN state"

    invoke-virtual {v1, v2, v3}, Ll3/l;->e(ILjava/lang/String;)V

    sget-object v1, Lj3/q;->e:Lj3/q;

    iget-object v0, v0, Ll3/L0;->r:Le1/m;

    invoke-virtual {v0, v1}, Le1/m;->b(Lj3/q;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Ll3/y0;->b:Ll3/L0;

    invoke-virtual {v0}, Ll3/L0;->r()V

    iget-object v0, p0, Ll3/y0;->b:Ll3/L0;

    iget-object v0, v0, Ll3/L0;->x:Lj3/B;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ll3/y0;->b:Ll3/L0;

    iget-object v0, v0, Ll3/L0;->x:Lj3/B;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    iget-object v0, p0, Ll3/y0;->b:Ll3/L0;

    iget-object v0, v0, Ll3/L0;->w:Ll3/E0;

    if-eqz v0, :cond_4

    iget-object v0, v0, Ll3/E0;->d:LR0/i;

    iget-object v0, v0, LR0/i;->b:Ljava/lang/Object;

    check-cast v0, Lj3/S;

    invoke-virtual {v0}, Lj3/S;->e()V

    :cond_4
    return-void

    :pswitch_4
    iget-object v0, p0, Ll3/y0;->b:Ll3/L0;

    iget-object v1, v0, Ll3/L0;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Ll3/L0;->w:Ll3/E0;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ll3/L0;->q(Z)V

    invoke-static {v0}, Ll3/L0;->n(Ll3/L0;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_5
    iget-object v0, p0, Ll3/y0;->b:Ll3/L0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ll3/L0;->q(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
