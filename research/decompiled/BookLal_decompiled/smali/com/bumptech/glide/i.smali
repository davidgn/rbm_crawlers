.class public final Lcom/bumptech/glide/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lr1/e;


# static fields
.field public static final q:Lu1/d;


# instance fields
.field public final a:Lcom/bumptech/glide/b;

.field public final b:Landroid/content/Context;

.field public final c:Lr1/d;

.field public final d:Lj0/d;

.field public final e:Lr1/i;

.field public final f:Lr1/k;

.field public final l:LA2/h;

.field public final m:Landroid/os/Handler;

.field public final n:Lr1/b;

.field public final o:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final p:Lu1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lu1/d;

    invoke-direct {v0}, Lu1/a;-><init>()V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lu1/a;->c(Ljava/lang/Class;)Lu1/a;

    move-result-object v0

    check-cast v0, Lu1/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lu1/a;->s:Z

    sput-object v0, Lcom/bumptech/glide/i;->q:Lu1/d;

    new-instance v0, Lu1/d;

    invoke-direct {v0}, Lu1/a;-><init>()V

    const-class v2, Lp1/c;

    invoke-virtual {v0, v2}, Lu1/a;->c(Ljava/lang/Class;)Lu1/a;

    move-result-object v0

    check-cast v0, Lu1/d;

    iput-boolean v1, v0, Lu1/a;->s:Z

    sget-object v0, Le1/l;->c:Le1/l;

    new-instance v1, Lu1/d;

    invoke-direct {v1}, Lu1/a;-><init>()V

    invoke-virtual {v1, v0}, Lu1/a;->d(Le1/l;)Lu1/a;

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

.method public constructor <init>(Lcom/bumptech/glide/b;Lr1/d;Lr1/i;Landroid/content/Context;)V
    .locals 6

    new-instance v0, Lj0/d;

    invoke-direct {v0}, Lj0/d;-><init>()V

    iget-object v1, p1, Lcom/bumptech/glide/b;->l:Lz2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lr1/k;

    invoke-direct {v2}, Lr1/k;-><init>()V

    iput-object v2, p0, Lcom/bumptech/glide/i;->f:Lr1/k;

    new-instance v2, LA2/h;

    const/16 v3, 0xc

    invoke-direct {v2, p0, v3}, LA2/h;-><init>(Ljava/lang/Object;I)V

    iput-object v2, p0, Lcom/bumptech/glide/i;->l:LA2/h;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/bumptech/glide/i;->m:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bumptech/glide/i;->a:Lcom/bumptech/glide/b;

    iput-object p2, p0, Lcom/bumptech/glide/i;->c:Lr1/d;

    iput-object p3, p0, Lcom/bumptech/glide/i;->e:Lr1/i;

    iput-object v0, p0, Lcom/bumptech/glide/i;->d:Lj0/d;

    iput-object p4, p0, Lcom/bumptech/glide/i;->b:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, LD2/e;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-direct {p4, v4, p0, v0, v5}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p3, v0}, LC/i;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v4, "ConnectivityMonitor"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_1

    const-string v5, "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor"

    goto :goto_1

    :cond_1
    const-string v5, "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor"

    :goto_1
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_3

    new-instance v0, Lr1/c;

    invoke-direct {v0, p3, p4}, Lr1/c;-><init>(Landroid/content/Context;LD2/e;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lr1/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/bumptech/glide/i;->n:Lr1/b;

    invoke-static {}, Ly1/k;->g()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_4
    invoke-interface {p2, p0}, Lr1/d;->h(Lr1/e;)V

    :goto_3
    invoke-interface {p2, v0}, Lr1/d;->h(Lr1/e;)V

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p3, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/c;

    iget-object p3, p3, Lcom/bumptech/glide/c;->e:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/bumptech/glide/i;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p2, p1, Lcom/bumptech/glide/b;->c:Lcom/bumptech/glide/c;

    monitor-enter p2

    :try_start_0
    iget-object p3, p2, Lcom/bumptech/glide/c;->i:Lu1/d;

    if-nez p3, :cond_5

    iget-object p3, p2, Lcom/bumptech/glide/c;->d:Lz2/e;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lu1/d;

    invoke-direct {p3}, Lu1/a;-><init>()V

    iput-boolean v1, p3, Lu1/a;->s:Z

    iput-object p3, p2, Lcom/bumptech/glide/c;->i:Lu1/d;

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_5
    :goto_4
    iget-object p3, p2, Lcom/bumptech/glide/c;->i:Lu1/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p3}, Lu1/a;->b()Lu1/a;

    move-result-object p2

    check-cast p2, Lu1/d;

    iget-boolean p3, p2, Lu1/a;->s:Z

    if-eqz p3, :cond_7

    iget-boolean p3, p2, Lu1/a;->t:Z

    if-eqz p3, :cond_6

    goto :goto_5

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_5
    iput-boolean v1, p2, Lu1/a;->t:Z

    iput-boolean v1, p2, Lu1/a;->s:Z

    iput-object p2, p0, Lcom/bumptech/glide/i;->p:Lu1/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit p0

    iget-object p2, p1, Lcom/bumptech/glide/b;->m:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_2
    iget-object p3, p1, Lcom/bumptech/glide/b;->m:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p1, p1, Lcom/bumptech/glide/b;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    return-void

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Cannot register already registered manager"

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_6
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :goto_7
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Lv1/d;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/i;->d(Lv1/d;)Z

    move-result v0

    invoke-interface {p1}, Lv1/d;->getRequest()Lu1/b;

    move-result-object v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/i;->a:Lcom/bumptech/glide/b;

    iget-object v2, v0, Lcom/bumptech/glide/b;->m:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/bumptech/glide/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/i;

    invoke-virtual {v3, p1}, Lcom/bumptech/glide/i;->d(Lv1/d;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lv1/d;->setRequest(Lu1/b;)V

    check-cast v1, Lu1/e;

    invoke-virtual {v1}, Lu1/e;->c()V

    goto :goto_1

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/bumptech/glide/h;
    .locals 4

    new-instance v0, Lcom/bumptech/glide/h;

    iget-object v1, p0, Lcom/bumptech/glide/i;->a:Lcom/bumptech/glide/b;

    iget-object v2, p0, Lcom/bumptech/glide/i;->b:Landroid/content/Context;

    const-class v3, Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/i;Ljava/lang/Class;Landroid/content/Context;)V

    iput-object p1, v0, Lcom/bumptech/glide/h;->B:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/bumptech/glide/h;->D:Z

    return-object v0
.end method

.method public final declared-synchronized c()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/i;->d:Lj0/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj0/d;->b:Z

    iget-object v1, v0, Lj0/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Ly1/k;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu1/b;

    check-cast v2, Lu1/e;

    invoke-virtual {v2}, Lu1/e;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lu1/e;->c:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Lu1/e;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lu1/e;->c()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public final declared-synchronized d(Lv1/d;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lv1/d;->getRequest()Lu1/b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/i;->d:Lj0/d;

    invoke-virtual {v2, v0}, Lj0/d;->a(Lu1/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/i;->f:Lr1/k;

    iget-object v0, v0, Lr1/k;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lv1/d;->setRequest(Lu1/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onDestroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/i;->f:Lr1/k;

    invoke-virtual {v0}, Lr1/k;->onDestroy()V

    iget-object v0, p0, Lcom/bumptech/glide/i;->f:Lr1/k;

    iget-object v0, v0, Lr1/k;->a:Ljava/util/Set;

    invoke-static {v0}, Ly1/k;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv1/d;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/i;->a(Lv1/d;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/i;->f:Lr1/k;

    iget-object v0, v0, Lr1/k;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/i;->d:Lj0/d;

    iget-object v1, v0, Lj0/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Ly1/k;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu1/b;

    invoke-virtual {v0, v2}, Lj0/d;->a(Lu1/b;)Z

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/i;->c:Lr1/d;

    invoke-interface {v0, p0}, Lr1/d;->a(Lr1/e;)V

    iget-object v0, p0, Lcom/bumptech/glide/i;->c:Lr1/d;

    iget-object v1, p0, Lcom/bumptech/glide/i;->n:Lr1/b;

    invoke-interface {v0, v1}, Lr1/d;->a(Lr1/e;)V

    iget-object v0, p0, Lcom/bumptech/glide/i;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bumptech/glide/i;->l:LA2/h;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bumptech/glide/i;->a:Lcom/bumptech/glide/b;

    iget-object v1, v0, Lcom/bumptech/glide/b;->m:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v0, Lcom/bumptech/glide/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/bumptech/glide/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v0

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized onStart()V
    .locals 4

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/i;->d:Lj0/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lj0/d;->b:Z

    iget-object v1, v0, Lj0/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1}, Ly1/k;->d(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu1/b;

    check-cast v2, Lu1/e;

    invoke-virtual {v2}, Lu1/e;->e()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lu1/e;->f()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lu1/e;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lj0/d;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    iget-object v0, p0, Lcom/bumptech/glide/i;->f:Lr1/k;

    invoke-virtual {v0}, Lr1/k;->onStart()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onStop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/i;->c()V

    iget-object v0, p0, Lcom/bumptech/glide/i;->f:Lr1/k;

    invoke-virtual {v0}, Lr1/k;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/i;->d:Lj0/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/i;->e:Lr1/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
