.class public final Ll3/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll3/t0;


# direct methods
.method public constructor <init>(Ll3/t0;J)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Ll3/f0;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/f0;->b:Ll3/t0;

    return-void
.end method

.method public constructor <init>(Ll3/t0;Lj3/s0;)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Ll3/f0;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/f0;->b:Ll3/t0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Ll3/f0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/f0;->b:Ll3/t0;

    iget-object v0, v0, Ll3/t0;->a:Li1/D;

    iget-object v0, v0, Li1/D;->b:Ljava/lang/Object;

    check-cast v0, Lm3/n;

    sget-object v1, Lj3/r0;->m:Lj3/r0;

    const-string v2, "Keepalive failed. The connection is likely gone"

    invoke-virtual {v1, v2}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm3/n;->b(Lj3/r0;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ll3/f0;->b:Ll3/t0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
