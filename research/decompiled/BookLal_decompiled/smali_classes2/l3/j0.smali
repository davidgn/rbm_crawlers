.class public final Ll3/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lj3/r0;

.field public final synthetic c:Ll3/o0;


# direct methods
.method public synthetic constructor <init>(Ll3/o0;Lj3/r0;I)V
    .locals 0

    iput p3, p0, Ll3/j0;->a:I

    iput-object p1, p0, Ll3/j0;->c:Ll3/o0;

    iput-object p2, p0, Ll3/j0;->b:Lj3/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Ll3/j0;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ll3/j0;->c:Ll3/o0;

    iget-object v1, v1, Ll3/o0;->r:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/T0;

    iget-object v2, p0, Ll3/j0;->b:Lj3/r0;

    invoke-interface {v1, v2}, Ll3/T0;->b(Lj3/r0;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Ll3/j0;->c:Ll3/o0;

    iget-object v0, v0, Ll3/o0;->v:Lj3/r;

    iget-object v0, v0, Lj3/r;->a:Lj3/q;

    sget-object v1, Lj3/q;->e:Lj3/q;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ll3/j0;->c:Ll3/o0;

    iget-object v2, p0, Ll3/j0;->b:Lj3/r0;

    iput-object v2, v0, Ll3/o0;->w:Lj3/r0;

    iget-object v0, v0, Ll3/o0;->u:Ll3/l0;

    iget-object v2, p0, Ll3/j0;->c:Ll3/o0;

    iget-object v3, v2, Ll3/o0;->t:Ll3/l0;

    const/4 v4, 0x0

    iput-object v4, v2, Ll3/o0;->u:Ll3/l0;

    iget-object v2, p0, Ll3/j0;->c:Ll3/o0;

    iput-object v4, v2, Ll3/o0;->t:Ll3/l0;

    invoke-static {v2, v1}, Ll3/o0;->f(Ll3/o0;Lj3/q;)V

    iget-object v1, p0, Ll3/j0;->c:Ll3/o0;

    iget-object v1, v1, Ll3/o0;->k:LJ4/y;

    invoke-virtual {v1}, LJ4/y;->a()V

    iget-object v1, p0, Ll3/j0;->c:Ll3/o0;

    iget-object v1, v1, Ll3/o0;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ll3/j0;->c:Ll3/o0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ll3/i0;

    const/4 v5, 0x2

    invoke-direct {v2, v1, v5}, Ll3/i0;-><init>(Ll3/o0;I)V

    iget-object v1, v1, Ll3/o0;->j:Lj3/w0;

    invoke-virtual {v1, v2}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v1, p0, Ll3/j0;->c:Ll3/o0;

    iget-object v2, v1, Ll3/o0;->j:Lj3/w0;

    invoke-virtual {v2}, Lj3/w0;->d()V

    iget-object v2, v1, Ll3/o0;->o:Lj3/G;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lj3/G;->d()V

    iput-object v4, v1, Ll3/o0;->o:Lj3/G;

    iput-object v4, v1, Ll3/o0;->m:Ll3/T;

    :cond_3
    iget-object v1, p0, Ll3/j0;->c:Ll3/o0;

    iget-object v1, v1, Ll3/o0;->p:Lj3/G;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lj3/G;->d()V

    iget-object v1, p0, Ll3/j0;->c:Ll3/o0;

    iget-object v1, v1, Ll3/o0;->q:Ll3/T0;

    iget-object v2, p0, Ll3/j0;->b:Lj3/r0;

    invoke-interface {v1, v2}, Ll3/T0;->c(Lj3/r0;)V

    iget-object v1, p0, Ll3/j0;->c:Ll3/o0;

    iput-object v4, v1, Ll3/o0;->p:Lj3/G;

    iput-object v4, v1, Ll3/o0;->q:Ll3/T0;

    :cond_4
    if-eqz v0, :cond_5

    iget-object v1, p0, Ll3/j0;->b:Lj3/r0;

    invoke-virtual {v0, v1}, Ll3/W;->c(Lj3/r0;)V

    :cond_5
    if-eqz v3, :cond_6

    iget-object v0, p0, Ll3/j0;->b:Lj3/r0;

    invoke-virtual {v3, v0}, Ll3/W;->c(Lj3/r0;)V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
