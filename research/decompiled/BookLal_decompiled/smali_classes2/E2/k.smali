.class public final LE2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LE2/k;->a:I

    iput-object p1, p0, LE2/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget v0, p0, LE2/k;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LE2/k;->b:Ljava/lang/Object;

    check-cast v0, LG2/d;

    iget-object v1, v0, LG2/d;->b:LG2/z;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v1, v2, p1}, LG2/z;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, LG2/b;

    invoke-direct {p1, p0, p2}, LG2/b;-><init>(LE2/k;Landroid/os/IBinder;)V

    invoke-virtual {v0}, LG2/d;->a()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, LE2/k;->b:Ljava/lang/Object;

    check-cast v0, LE2/l;

    iget-object v1, v0, LE2/l;->b:LE2/f;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v1, v2, p1}, LE2/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, LD2/f;

    invoke-direct {p1, p0, p2}, LD2/f;-><init>(LE2/k;Landroid/os/IBinder;)V

    invoke-virtual {v0}, LE2/l;->a()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget v0, p0, LE2/k;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LE2/k;->b:Ljava/lang/Object;

    check-cast v0, LG2/d;

    iget-object v1, v0, LG2/d;->b:LG2/z;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v1, v2, p1}, LG2/z;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, LG2/c;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, LG2/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, LG2/d;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, LE2/k;->b:Ljava/lang/Object;

    check-cast v0, LE2/l;

    iget-object v1, v0, LE2/l;->b:LE2/f;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v1, v2, p1}, LE2/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, LE2/j;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, LE2/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, LE2/l;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
