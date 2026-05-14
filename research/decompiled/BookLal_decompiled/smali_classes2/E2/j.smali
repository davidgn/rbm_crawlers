.class public final LE2/j;
.super LE2/g;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LE2/j;->b:I

    iput-object p1, p0, LE2/j;->c:Ljava/lang/Object;

    invoke-direct {p0}, LE2/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget v0, p0, LE2/j;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LE2/j;->c:Ljava/lang/Object;

    check-cast v0, LE2/k;

    iget-object v1, v0, LE2/k;->b:Ljava/lang/Object;

    check-cast v1, LE2/l;

    iget-object v2, v1, LE2/l;->b:LE2/f;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "unlinkToDeath"

    invoke-virtual {v2, v5, v4}, LE2/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v1, LE2/l;->m:LE2/e;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v1, v1, LE2/l;->j:LE2/i;

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iget-object v0, v0, LE2/k;->b:Ljava/lang/Object;

    check-cast v0, LE2/l;

    iput-object v1, v0, LE2/l;->m:LE2/e;

    iput-boolean v3, v0, LE2/l;->g:Z

    return-void

    :pswitch_0
    iget-object v0, p0, LE2/j;->c:Ljava/lang/Object;

    check-cast v0, LE2/l;

    iget-object v1, v0, LE2/l;->m:LE2/e;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, v0, LE2/l;->b:LE2/f;

    const-string v4, "Unbind from service."

    invoke-virtual {v3, v4, v2}, LE2/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, LE2/l;->l:LE2/k;

    iget-object v3, v0, LE2/l;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v1, v0, LE2/l;->g:Z

    const/4 v1, 0x0

    iput-object v1, v0, LE2/l;->m:LE2/e;

    iput-object v1, v0, LE2/l;->l:LE2/k;

    :cond_0
    invoke-virtual {v0}, LE2/l;->b()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
