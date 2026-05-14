.class public final Lp/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Lp/f;


# direct methods
.method public synthetic constructor <init>(Lp/f;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    iput p4, p0, Lp/c;->a:I

    iput-object p1, p0, Lp/c;->d:Lp/f;

    iput-object p2, p0, Lp/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lp/c;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lp/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lp/c;->d:Lp/f;

    iget-object v0, v0, Lp/f;->b:Lp/a;

    iget-object v1, p0, Lp/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lp/c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lp/a;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lp/c;->d:Lp/f;

    iget-object v0, v0, Lp/f;->b:Lp/a;

    iget-object v1, p0, Lp/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lp/c;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lp/a;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
