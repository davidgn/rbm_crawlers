.class public final Lcom/bumptech/glide/h;
.super Lu1/a;
.source "SourceFile"


# instance fields
.field public A:Lcom/bumptech/glide/a;

.field public B:Ljava/lang/Object;

.field public final C:Ljava/util/ArrayList;

.field public D:Z

.field public final w:Landroid/content/Context;

.field public final x:Lcom/bumptech/glide/i;

.field public final y:Ljava/lang/Class;

.field public final z:Lcom/bumptech/glide/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu1/d;

    invoke-direct {v0}, Lu1/a;-><init>()V

    sget-object v1, Le1/l;->c:Le1/l;

    invoke-virtual {v0, v1}, Lu1/a;->d(Le1/l;)Lu1/a;

    move-result-object v0

    check-cast v0, Lu1/d;

    invoke-virtual {v0}, Lu1/a;->j()Lu1/a;

    move-result-object v0

    check-cast v0, Lu1/d;

    invoke-virtual {v0}, Lu1/a;->n()Lu1/a;

    move-result-object v0

    check-cast v0, Lu1/d;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/i;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lu1/a;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/h;->x:Lcom/bumptech/glide/i;

    iput-object p3, p0, Lcom/bumptech/glide/h;->y:Ljava/lang/Class;

    iput-object p4, p0, Lcom/bumptech/glide/h;->w:Landroid/content/Context;

    iget-object p4, p2, Lcom/bumptech/glide/i;->a:Lcom/bumptech/glide/b;

    iget-object p4, p4, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/c;

    iget-object p4, p4, Lcom/bumptech/glide/c;->f:Lr/b;

    const/4 v0, 0x0

    invoke-virtual {p4, p3, v0}, Lr/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/a;

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lr/b;->entrySet()Ljava/util/Set;

    move-result-object p4

    check-cast p4, Lr/h;

    invoke-virtual {p4}, Lr/h;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/a;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    sget-object v0, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/a;

    :cond_2
    iput-object v0, p0, Lcom/bumptech/glide/h;->A:Lcom/bumptech/glide/a;

    iget-object p1, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/c;

    iput-object p1, p0, Lcom/bumptech/glide/h;->z:Lcom/bumptech/glide/c;

    iget-object p1, p2, Lcom/bumptech/glide/i;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lu1/c;

    if-eqz p3, :cond_3

    iget-object p4, p0, Lcom/bumptech/glide/h;->C:Ljava/util/ArrayList;

    if-nez p4, :cond_4

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/bumptech/glide/h;->C:Ljava/util/ArrayList;

    :cond_4
    iget-object p4, p0, Lcom/bumptech/glide/h;->C:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    monitor-enter p2

    :try_start_0
    iget-object p1, p2, Lcom/bumptech/glide/i;->p:Lu1/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->r(Lu1/a;)Lcom/bumptech/glide/h;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final bridge synthetic a(Lu1/a;)Lu1/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->r(Lu1/a;)Lcom/bumptech/glide/h;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b()Lu1/a;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/h;->s()Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/h;->s()Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public final r(Lu1/a;)Lcom/bumptech/glide/h;
    .locals 0

    invoke-static {p1}, LW2/B;->h(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lu1/a;->a(Lu1/a;)Lu1/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/h;

    return-object p1
.end method

.method public final s()Lcom/bumptech/glide/h;
    .locals 2

    invoke-super {p0}, Lu1/a;->b()Lu1/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/h;

    iget-object v1, v0, Lcom/bumptech/glide/h;->A:Lcom/bumptech/glide/a;

    invoke-virtual {v1}, Lcom/bumptech/glide/a;->a()Lcom/bumptech/glide/a;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/h;->A:Lcom/bumptech/glide/a;

    return-object v0
.end method

.method public final t(Landroid/widget/ImageView;)V
    .locals 4

    const/4 v0, 0x1

    sget-object v1, Ly1/k;->a:[C

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_3

    invoke-static {p1}, LW2/B;->h(Ljava/lang/Object;)V

    iget v1, p0, Lu1/a;->a:I

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lu1/a;->e(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/bumptech/glide/g;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->s()Lcom/bumptech/glide/h;

    move-result-object v1

    sget-object v2, Ll1/m;->c:Ll1/m;

    new-instance v3, Ll1/g;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2, v3}, Lu1/a;->f(Ll1/m;Ll1/d;)Lu1/a;

    move-result-object v1

    iput-boolean v0, v1, Lu1/a;->u:Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->s()Lcom/bumptech/glide/h;

    move-result-object v1

    sget-object v2, Ll1/m;->b:Ll1/m;

    new-instance v3, Ll1/t;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2, v3}, Lu1/a;->f(Ll1/m;Ll1/d;)Lu1/a;

    move-result-object v1

    iput-boolean v0, v1, Lu1/a;->u:Z

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->s()Lcom/bumptech/glide/h;

    move-result-object v1

    sget-object v2, Ll1/m;->c:Ll1/m;

    new-instance v3, Ll1/g;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2, v3}, Lu1/a;->f(Ll1/m;Ll1/d;)Lu1/a;

    move-result-object v1

    iput-boolean v0, v1, Lu1/a;->u:Z

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->s()Lcom/bumptech/glide/h;

    move-result-object v1

    sget-object v2, Ll1/m;->d:Ll1/m;

    new-instance v3, Ll1/f;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2, v3}, Lu1/a;->f(Ll1/m;Ll1/d;)Lu1/a;

    move-result-object v1

    goto :goto_1

    :cond_0
    :goto_0
    move-object v1, p0

    :goto_1
    iget-object v2, p0, Lcom/bumptech/glide/h;->z:Lcom/bumptech/glide/c;

    iget-object v2, v2, Lcom/bumptech/glide/c;->c:Lz2/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/bumptech/glide/h;->y:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lv1/a;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lv1/a;-><init>(Landroid/widget/ImageView;I)V

    goto :goto_2

    :cond_1
    const-class v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lv1/a;

    invoke-direct {v2, p1, v0}, Lv1/a;-><init>(Landroid/widget/ImageView;I)V

    move-object v0, v2

    :goto_2
    sget-object p1, Ly1/f;->a:LI/i;

    invoke-virtual {p0, v0, v1, p1}, Lcom/bumptech/glide/h;->u(Lv1/d;Lu1/a;LI/i;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unhandled class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must call this method on the main thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final u(Lv1/d;Lu1/a;LI/i;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    invoke-static/range {p1 .. p1}, LW2/B;->h(Ljava/lang/Object;)V

    iget-boolean v2, v1, Lcom/bumptech/glide/h;->D:Z

    if-eqz v2, :cond_b

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v2, v1, Lcom/bumptech/glide/h;->A:Lcom/bumptech/glide/a;

    iget-object v11, v15, Lu1/a;->c:Lcom/bumptech/glide/d;

    iget v9, v15, Lu1/a;->m:I

    iget v10, v15, Lu1/a;->l:I

    iget-object v6, v1, Lcom/bumptech/glide/h;->B:Ljava/lang/Object;

    iget-object v13, v1, Lcom/bumptech/glide/h;->C:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/bumptech/glide/h;->z:Lcom/bumptech/glide/c;

    iget-object v14, v4, Lcom/bumptech/glide/c;->g:Le1/n;

    iget-object v12, v2, Lcom/bumptech/glide/a;->a:Lw1/a;

    new-instance v8, Lu1/e;

    iget-object v3, v1, Lcom/bumptech/glide/h;->w:Landroid/content/Context;

    iget-object v7, v1, Lcom/bumptech/glide/h;->y:Ljava/lang/Class;

    move-object v2, v8

    move-object v0, v8

    move-object/from16 v8, p2

    move-object/from16 v16, v12

    move-object/from16 v12, p1

    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v16, p3

    invoke-direct/range {v2 .. v16}, Lu1/e;-><init>(Landroid/content/Context;Lcom/bumptech/glide/c;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lu1/a;IILcom/bumptech/glide/d;Lv1/d;Ljava/util/ArrayList;Le1/n;Lw1/a;LI/i;)V

    invoke-interface/range {p1 .. p1}, Lv1/d;->getRequest()Lu1/b;

    move-result-object v2

    instance-of v3, v2, Lu1/e;

    if-nez v3, :cond_1

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_1
    iget-object v3, v0, Lu1/e;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v5, v0, Lu1/e;->i:I

    iget v6, v0, Lu1/e;->j:I

    iget-object v7, v0, Lu1/e;->f:Ljava/lang/Object;

    iget-object v8, v0, Lu1/e;->g:Ljava/lang/Class;

    iget-object v9, v0, Lu1/e;->h:Lu1/a;

    iget-object v10, v0, Lu1/e;->k:Lcom/bumptech/glide/d;

    iget-object v11, v0, Lu1/e;->m:Ljava/util/ArrayList;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_7

    :cond_2
    const/4 v11, 0x0

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    check-cast v3, Lu1/e;

    iget-object v12, v3, Lu1/e;->c:Ljava/lang/Object;

    monitor-enter v12

    :try_start_1
    iget v13, v3, Lu1/e;->i:I

    iget v14, v3, Lu1/e;->j:I

    iget-object v15, v3, Lu1/e;->f:Ljava/lang/Object;

    iget-object v4, v3, Lu1/e;->g:Ljava/lang/Class;

    move-object/from16 v16, v0

    iget-object v0, v3, Lu1/e;->h:Lu1/a;

    move-object/from16 v17, v2

    iget-object v2, v3, Lu1/e;->k:Lcom/bumptech/glide/d;

    iget-object v3, v3, Lu1/e;->m:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_6

    :cond_3
    const/4 v3, 0x0

    :goto_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v5, v13, :cond_0

    if-ne v6, v14, :cond_0

    sget-object v5, Ly1/k;->a:[C

    const/4 v5, 0x1

    if-nez v7, :cond_5

    if-nez v15, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v7, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_2
    if-eqz v6, :cond_0

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v9, v0}, Lu1/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne v10, v2, :cond_0

    if-ne v11, v3, :cond_0

    move v4, v5

    :goto_3
    if-eqz v4, :cond_6

    iget-boolean v0, v1, Lu1/a;->f:Z

    if-nez v0, :cond_7

    move-object/from16 v2, v17

    check-cast v2, Lu1/e;

    invoke-virtual {v2}, Lu1/e;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move-object/from16 v1, p0

    goto :goto_4

    :cond_7
    const-string v0, "Argument must not be null"

    move-object/from16 v1, v17

    invoke-static {v1, v0}, LW2/B;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lu1/e;

    invoke-virtual {v2}, Lu1/e;->f()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v2}, Lu1/e;->a()V

    :cond_8
    return-void

    :goto_4
    iget-object v0, v1, Lcom/bumptech/glide/h;->x:Lcom/bumptech/glide/i;

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/i;->a(Lv1/d;)V

    invoke-interface {v2, v3}, Lv1/d;->setRequest(Lu1/b;)V

    iget-object v4, v1, Lcom/bumptech/glide/h;->x:Lcom/bumptech/glide/i;

    monitor-enter v4

    :try_start_2
    iget-object v0, v4, Lcom/bumptech/glide/i;->f:Lr1/k;

    iget-object v0, v0, Lr1/k;->a:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v4, Lcom/bumptech/glide/i;->d:Lj0/d;

    iget-object v2, v0, Lj0/d;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v2, v0, Lj0/d;->b:Z

    if-nez v2, :cond_9

    invoke-virtual {v3}, Lu1/e;->a()V

    goto :goto_5

    :cond_9
    invoke-virtual {v3}, Lu1/e;->c()V

    const-string v2, "RequestTracker"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "Paused, delaying request"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_5
    monitor-exit v4

    return-void

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :goto_6
    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6

    :goto_7
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_7

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "You must call #load() before calling #into()"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
