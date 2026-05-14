.class public final Ll3/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Li1/D;


# direct methods
.method public synthetic constructor <init>(Li1/D;I)V
    .locals 0

    iput p2, p0, Ll3/H;->a:I

    iput-object p1, p0, Ll3/H;->b:Li1/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Ll3/H;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/H;->b:Li1/D;

    iget-object v0, v0, Li1/D;->b:Ljava/lang/Object;

    check-cast v0, Ll3/L0;

    iget-object v1, v0, Ll3/L0;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-string v2, "Channel must have been shut down"

    invoke-static {v1, v2}, LZ2/l;->m(ZLjava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Ll3/L0;->H:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ll3/L0;->v(Z)V

    invoke-static {v0}, Ll3/L0;->o(Ll3/L0;)V

    invoke-static {v0}, Ll3/L0;->p(Ll3/L0;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ll3/H;->b:Li1/D;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Li1/D;->t(Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Ll3/H;->b:Li1/D;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Li1/D;->t(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
