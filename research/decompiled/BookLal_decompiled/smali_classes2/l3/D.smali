.class public final Ll3/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll3/H0;


# direct methods
.method public synthetic constructor <init>(Ll3/H0;I)V
    .locals 0

    iput p2, p0, Ll3/D;->a:I

    iput-object p1, p0, Ll3/D;->b:Ll3/H0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Ll3/D;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/D;->b:Ll3/H0;

    iget-object v1, v0, Ll3/H0;->m:Ll3/I0;

    iget-object v1, v1, Ll3/I0;->d:Ll3/L0;

    iget-object v1, v1, Ll3/L0;->A:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Ll3/H0;->m:Ll3/I0;

    iget-object v1, v0, Ll3/I0;->d:Ll3/L0;

    iget-object v1, v1, Ll3/L0;->A:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Ll3/I0;->d:Ll3/L0;

    iget-object v2, v1, Ll3/L0;->X:Ll3/h0;

    iget-object v1, v1, Ll3/L0;->B:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, LB/y;->f(Ljava/lang/Object;Z)V

    iget-object v1, v0, Ll3/I0;->d:Ll3/L0;

    const/4 v2, 0x0

    iput-object v2, v1, Ll3/L0;->A:Ljava/util/LinkedHashSet;

    iget-object v1, v1, Ll3/L0;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Ll3/I0;->d:Ll3/L0;

    iget-object v0, v0, Ll3/L0;->E:LR0/i;

    sget-object v1, Ll3/L0;->g0:Lj3/r0;

    invoke-virtual {v0, v1}, LR0/i;->o(Lj3/r0;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Ll3/D;->b:Ll3/H0;

    iget-object v0, v0, Ll3/H0;->f:Lj3/k;

    invoke-virtual {v0}, Lj3/k;->halfClose()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
