.class public final Lp/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Lp/f;


# direct methods
.method public synthetic constructor <init>(Lp/f;Landroid/os/Bundle;I)V
    .locals 0

    iput p3, p0, Lp/b;->a:I

    iput-object p1, p0, Lp/b;->c:Lp/f;

    iput-object p2, p0, Lp/b;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lp/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lp/b;->c:Lp/f;

    iget-object v0, v0, Lp/f;->b:Lp/a;

    iget-object v1, p0, Lp/b;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lp/a;->onMinimized(Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lp/b;->c:Lp/f;

    iget-object v0, v0, Lp/f;->b:Lp/a;

    iget-object v1, p0, Lp/b;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lp/a;->onWarmupCompleted(Landroid/os/Bundle;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lp/b;->c:Lp/f;

    iget-object v0, v0, Lp/f;->b:Lp/a;

    iget-object v1, p0, Lp/b;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lp/a;->onMessageChannelReady(Landroid/os/Bundle;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lp/b;->c:Lp/f;

    iget-object v0, v0, Lp/f;->b:Lp/a;

    iget-object v1, p0, Lp/b;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lp/a;->onUnminimized(Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
