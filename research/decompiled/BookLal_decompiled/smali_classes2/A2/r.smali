.class public final LA2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LA2/r;->a:I

    iput-object p1, p0, LA2/r;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p0, LA2/r;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, LA2/r;->b:Ljava/lang/Object;

    check-cast v1, Lp1/g;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lp1/e;

    invoke-virtual {v1, p1}, Lp1/g;->b(Lp1/e;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lp1/e;

    iget-object v0, v1, Lp1/g;->d:Lcom/bumptech/glide/i;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->a(Lv1/d;)V

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, LA2/r;->b:Ljava/lang/Object;

    check-cast v0, LR0/i;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LA2/s;

    iget-object v1, v0, LR0/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, LR0/i;->c:Ljava/lang/Object;

    check-cast v2, LA2/s;

    if-eq v2, p1, :cond_3

    iget-object v2, v0, LR0/i;->d:Ljava/lang/Object;

    check-cast v2, LA2/s;

    if-ne v2, p1, :cond_4

    :cond_3
    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2}, LR0/i;->b(LA2/s;I)Z

    :cond_4
    monitor-exit v1

    const/4 p1, 0x1

    :goto_1
    return p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
