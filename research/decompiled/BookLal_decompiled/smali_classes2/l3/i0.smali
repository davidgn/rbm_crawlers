.class public final Ll3/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll3/o0;


# direct methods
.method public synthetic constructor <init>(Ll3/o0;I)V
    .locals 0

    iput p2, p0, Ll3/i0;->a:I

    iput-object p1, p0, Ll3/i0;->b:Ll3/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Ll3/i0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/i0;->b:Ll3/o0;

    iget-object v1, v0, Ll3/o0;->i:Lj3/i;

    const/4 v2, 0x2

    const-string v3, "Terminated"

    invoke-virtual {v1, v2, v3}, Lj3/i;->e(ILjava/lang/String;)V

    iget-object v1, v0, Ll3/o0;->d:Ll3/R1;

    iget-object v1, v1, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v1, Ll3/K0;

    iget-object v2, v1, Ll3/K0;->j:Ll3/L0;

    iget-object v2, v2, Ll3/L0;->z:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, v1, Ll3/K0;->j:Ll3/L0;

    iget-object v2, v1, Ll3/L0;->O:Lj3/F;

    iget-object v2, v2, Lj3/F;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ll3/o0;->e()Lj3/J;

    move-result-object v0

    iget-wide v3, v0, Lj3/J;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj3/I;

    invoke-static {v1}, Ll3/L0;->p(Ll3/L0;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ll3/i0;->b:Ll3/o0;

    iget-object v0, v0, Ll3/o0;->v:Lj3/r;

    iget-object v0, v0, Lj3/r;->a:Lj3/q;

    sget-object v1, Lj3/q;->d:Lj3/q;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ll3/i0;->b:Ll3/o0;

    iget-object v0, v0, Ll3/o0;->i:Lj3/i;

    const/4 v1, 0x2

    const-string v2, "CONNECTING as requested"

    invoke-virtual {v0, v1, v2}, Lj3/i;->e(ILjava/lang/String;)V

    iget-object v0, p0, Ll3/i0;->b:Ll3/o0;

    sget-object v1, Lj3/q;->a:Lj3/q;

    invoke-static {v0, v1}, Ll3/o0;->f(Ll3/o0;Lj3/q;)V

    iget-object v0, p0, Ll3/i0;->b:Ll3/o0;

    invoke-static {v0}, Ll3/o0;->g(Ll3/o0;)V

    :cond_0
    return-void

    :pswitch_1
    const/4 v0, 0x0

    iget-object v1, p0, Ll3/i0;->b:Ll3/o0;

    iput-object v0, v1, Ll3/o0;->o:Lj3/G;

    const/4 v0, 0x2

    const-string v2, "CONNECTING after backoff"

    iget-object v3, v1, Ll3/o0;->i:Lj3/i;

    invoke-virtual {v3, v0, v2}, Lj3/i;->e(ILjava/lang/String;)V

    sget-object v0, Lj3/q;->a:Lj3/q;

    invoke-static {v1, v0}, Ll3/o0;->f(Ll3/o0;Lj3/q;)V

    invoke-static {v1}, Ll3/o0;->g(Ll3/o0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
