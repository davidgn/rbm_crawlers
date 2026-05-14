.class public final Ll3/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lj0/d;


# direct methods
.method public synthetic constructor <init>(Lj0/d;I)V
    .locals 0

    iput p2, p0, Ll3/m0;->a:I

    iput-object p1, p0, Ll3/m0;->b:Lj0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Ll3/m0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/m0;->b:Lj0/d;

    iget-object v1, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v1, Ll3/o0;

    iget-object v1, v1, Ll3/o0;->r:Ljava/util/ArrayList;

    iget-object v0, v0, Lj0/d;->c:Ljava/lang/Object;

    check-cast v0, Ll3/l0;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ll3/m0;->b:Lj0/d;

    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    iget-object v0, v0, Ll3/o0;->v:Lj3/r;

    iget-object v0, v0, Lj3/r;->a:Lj3/q;

    sget-object v1, Lj3/q;->e:Lj3/q;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ll3/m0;->b:Lj0/d;

    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    iget-object v0, v0, Ll3/o0;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll3/m0;->b:Lj0/d;

    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ll3/i0;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Ll3/i0;-><init>(Ll3/o0;I)V

    iget-object v0, v0, Ll3/o0;->j:Lj3/w0;

    invoke-virtual {v0, v1}, Lj3/w0;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Ll3/m0;->b:Lj0/d;

    iget-object v1, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v1, Ll3/o0;

    const/4 v2, 0x0

    iput-object v2, v1, Ll3/o0;->m:Ll3/T;

    iget-object v3, v1, Ll3/o0;->w:Lj3/r0;

    if-eqz v3, :cond_2

    iget-object v0, v1, Ll3/o0;->u:Ll3/l0;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Unexpected non-null activeTransport"

    invoke-static {v0, v1}, LZ2/l;->m(ZLjava/lang/String;)V

    iget-object v0, p0, Ll3/m0;->b:Lj0/d;

    iget-object v1, v0, Lj0/d;->c:Ljava/lang/Object;

    check-cast v1, Ll3/l0;

    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    iget-object v0, v0, Ll3/o0;->w:Lj3/r0;

    invoke-virtual {v1, v0}, Ll3/W;->c(Lj3/r0;)V

    goto :goto_1

    :cond_2
    iget-object v3, v1, Ll3/o0;->t:Ll3/l0;

    iget-object v0, v0, Lj0/d;->c:Ljava/lang/Object;

    check-cast v0, Ll3/l0;

    if-ne v3, v0, :cond_3

    iput-object v0, v1, Ll3/o0;->u:Ll3/l0;

    iget-object v0, p0, Ll3/m0;->b:Lj0/d;

    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ll3/o0;

    iput-object v2, v0, Ll3/o0;->t:Ll3/l0;

    sget-object v1, Lj3/q;->b:Lj3/q;

    invoke-static {v0, v1}, Ll3/o0;->f(Ll3/o0;Lj3/q;)V

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
