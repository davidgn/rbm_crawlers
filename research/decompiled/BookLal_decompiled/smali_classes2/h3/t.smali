.class public final Lh3/t;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Landroid/os/Looper;I)V
    .locals 0

    iput p2, p0, Lh3/t;->a:I

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    iget v0, p0, Lh3/t;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_a

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh3/l;

    iget-object v5, v4, Lh3/l;->a:Lh3/v;

    iget-object v6, v5, Lh3/v;->d:LC4/o;

    iget-object v6, v6, LC4/o;->b:Ljava/lang/Object;

    check-cast v6, Lh3/m;

    iget-object v7, v4, Lh3/l;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh3/n;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    iget-object v6, v6, Lh3/n;->a:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_0
    move-object v6, v7

    :goto_1
    iget-object v8, v5, Lh3/v;->e:Lh3/D;

    if-eqz v6, :cond_1

    iget-object v8, v8, Lh3/D;->b:Lh/c;

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_1
    iget-object v8, v8, Lh3/D;->b:Lh/c;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    if-eqz v6, :cond_2

    invoke-virtual {v5, v6, v3, v4, v7}, Lh3/v;->b(Landroid/graphics/Bitmap;ILh3/l;Ljava/lang/Exception;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v5, v4}, Lh3/v;->c(Lh3/l;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown handler message received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_4
    if-ge v1, v0, :cond_a

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh3/e;

    iget-object v5, v4, Lh3/e;->b:Lh3/v;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lh3/e;->o:Lh3/l;

    iget-object v7, v4, Lh3/e;->p:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    move v8, v3

    goto :goto_5

    :cond_5
    move v8, v2

    :goto_5
    if-nez v6, :cond_6

    if-eqz v8, :cond_8

    :cond_6
    iget-object v9, v4, Lh3/e;->l:Lh3/A;

    iget-object v9, v9, Lh3/A;->a:Landroid/net/Uri;

    iget-object v9, v4, Lh3/e;->t:Ljava/lang/Exception;

    iget-object v10, v4, Lh3/e;->q:Landroid/graphics/Bitmap;

    iget v4, v4, Lh3/e;->s:I

    if-eqz v6, :cond_7

    invoke-virtual {v5, v10, v4, v6, v9}, Lh3/v;->b(Landroid/graphics/Bitmap;ILh3/l;Ljava/lang/Exception;)V

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v8, v2

    :goto_6
    if-ge v8, v6, :cond_8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lh3/l;

    invoke-virtual {v5, v10, v4, v11, v9}, Lh3/v;->b(Landroid/graphics/Bitmap;ILh3/l;Ljava/lang/Exception;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lh3/l;

    iget-object v0, p1, Lh3/l;->a:Lh3/v;

    invoke-virtual {p1}, Lh3/l;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lh3/v;->a(Ljava/lang/Object;)V

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
