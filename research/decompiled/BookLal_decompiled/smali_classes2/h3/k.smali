.class public final Lh3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lh3/y;

.field public final c:LK0/j;

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:Ljava/util/WeakHashMap;

.field public final f:Ljava/util/WeakHashMap;

.field public final g:Ljava/util/LinkedHashSet;

.field public final h:Lh/c;

.field public final i:Lh3/t;

.field public final j:LC4/o;

.field public final k:Lh3/D;

.field public final l:Ljava/util/ArrayList;

.field public final m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lh3/y;Lh3/t;LK0/j;LC4/o;Lh3/D;)V
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lh3/j;

    const-string v2, "Picasso-Dispatcher"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Lh3/F;->a:Ljava/lang/StringBuilder;

    new-instance v3, Lh3/t;

    invoke-direct {v3, v2, v0}, Lh3/t;-><init>(Landroid/os/Looper;I)V

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-object p1, p0, Lh3/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lh3/k;->b:Lh3/y;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lh3/k;->d:Ljava/util/LinkedHashMap;

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lh3/k;->e:Ljava/util/WeakHashMap;

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lh3/k;->f:Ljava/util/WeakHashMap;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lh3/k;->g:Ljava/util/LinkedHashSet;

    new-instance p2, Lh/c;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, v1, p0, v0}, Lh/c;-><init>(Landroid/os/Looper;Ljava/lang/Object;I)V

    iput-object p2, p0, Lh3/k;->h:Lh/c;

    iput-object p4, p0, Lh3/k;->c:LK0/j;

    iput-object p3, p0, Lh3/k;->i:Lh3/t;

    iput-object p5, p0, Lh3/k;->j:LC4/o;

    iput-object p6, p0, Lh3/k;->k:Lh3/D;

    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lh3/k;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    :try_start_0
    const-string p4, "airplane_mode_on"

    invoke-static {p2, p4, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput-boolean v0, p0, Lh3/k;->m:Z

    new-instance p1, LR0/c;

    invoke-direct {p1, p0}, LR0/c;-><init>(Lh3/k;)V

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p3, p1, LR0/c;->b:Ljava/lang/Object;

    check-cast p3, Lh3/k;

    iget-boolean p4, p3, Lh3/k;->m:Z

    if-eqz p4, :cond_1

    const-string p4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object p3, p3, Lh3/k;->a:Landroid/content/Context;

    invoke-virtual {p3, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a(Lh3/e;)V
    .locals 3

    iget-object v0, p1, Lh3/e;->r:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lh3/e;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    :cond_1
    iget-object v0, p0, Lh3/k;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lh3/k;->h:Lh/c;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public final b(Lh3/e;)V
    .locals 2

    const/4 v0, 0x4

    iget-object v1, p0, Lh3/k;->h:Lh/c;

    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final c(Lh3/e;Z)V
    .locals 1

    iget-object p2, p1, Lh3/e;->b:Lh3/v;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lh3/k;->d:Ljava/util/LinkedHashMap;

    iget-object v0, p1, Lh3/e;->f:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lh3/k;->a(Lh3/e;)V

    return-void
.end method

.method public final d(Lh3/l;Z)V
    .locals 12

    iget-object v0, p0, Lh3/k;->g:Ljava/util/LinkedHashSet;

    iget-object v1, p1, Lh3/l;->f:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lh3/k;->f:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Lh3/l;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lh3/k;->d:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lh3/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh3/e;

    iget-object v3, p1, Lh3/l;->b:Lh3/A;

    if-eqz v2, :cond_4

    iget-object p2, v2, Lh3/e;->b:Lh3/v;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, v2, Lh3/e;->o:Lh3/l;

    if-nez p2, :cond_1

    iput-object p1, v2, Lh3/e;->o:Lh3/l;

    goto :goto_0

    :cond_1
    iget-object p2, v2, Lh3/e;->p:Ljava/util/ArrayList;

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, v2, Lh3/e;->p:Ljava/util/ArrayList;

    :cond_2
    iget-object p2, v2, Lh3/e;->p:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v3, Lh3/A;->h:I

    invoke-static {p1}, Ls/e;->d(I)I

    move-result p2

    iget v0, v2, Lh3/e;->w:I

    invoke-static {v0}, Ls/e;->d(I)I

    move-result v0

    if-le p2, v0, :cond_3

    iput p1, v2, Lh3/e;->w:I

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lh3/k;->b:Lh3/y;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v4

    if-eqz v4, :cond_5

    return-void

    :cond_5
    iget-object v6, p1, Lh3/l;->a:Lh3/v;

    sget-object v4, Lh3/e;->x:Ljava/lang/Object;

    iget-object v4, v6, Lh3/v;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_1
    iget-object v8, p0, Lh3/k;->j:LC4/o;

    iget-object v9, p0, Lh3/k;->k:Lh3/D;

    if-ge v7, v5, :cond_7

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lh3/C;

    invoke-virtual {v11, v3}, Lh3/C;->b(Lh3/A;)Z

    move-result v10

    if-eqz v10, :cond_6

    new-instance v3, Lh3/e;

    move-object v5, v3

    move-object v7, p0

    move-object v10, p1

    invoke-direct/range {v5 .. v11}, Lh3/e;-><init>(Lh3/v;Lh3/k;LC4/o;Lh3/D;Lh3/l;Lh3/C;)V

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    new-instance v3, Lh3/e;

    sget-object v11, Lh3/e;->A:Lh3/c;

    move-object v5, v3

    move-object v7, p0

    move-object v10, p1

    invoke-direct/range {v5 .. v11}, Lh3/e;-><init>(Lh3/v;Lh3/k;LC4/o;Lh3/D;Lh3/l;Lh3/C;)V

    :goto_2
    invoke-virtual {v2, v3}, Lh3/y;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v3, Lh3/e;->r:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lh3/k;->e:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Lh3/l;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method
