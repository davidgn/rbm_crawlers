.class public final Lh3/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Lh3/t;

.field public static volatile j:Lh3/v;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Landroid/content/Context;

.field public final c:Lh3/k;

.field public final d:LC4/o;

.field public final e:Lh3/D;

.field public final f:Ljava/util/WeakHashMap;

.field public final g:Ljava/util/WeakHashMap;

.field public final h:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lh3/t;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh3/t;-><init>(Landroid/os/Looper;I)V

    sput-object v0, Lh3/v;->i:Lh3/t;

    const/4 v0, 0x0

    sput-object v0, Lh3/v;->j:Lh3/v;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lh3/k;LC4/o;Lh3/D;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/v;->b:Landroid/content/Context;

    iput-object p2, p0, Lh3/v;->c:Lh3/k;

    iput-object p3, p0, Lh3/v;->d:LC4/o;

    new-instance p3, Ljava/util/ArrayList;

    const/4 v0, 0x7

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lh3/g;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lh3/g;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh3/f;

    invoke-direct {v0, p1}, Lh3/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh3/p;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lh3/p;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh3/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lh3/g;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh3/b;

    invoke-direct {v0, p1}, Lh3/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lh3/p;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lh3/p;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lh3/s;

    iget-object p2, p2, Lh3/k;->c:LK0/j;

    invoke-direct {p1, p2, p4}, Lh3/s;-><init>(LK0/j;Lh3/D;)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lh3/v;->a:Ljava/util/List;

    iput-object p4, p0, Lh3/v;->e:Lh3/D;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lh3/v;->f:Ljava/util/WeakHashMap;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lh3/v;->g:Ljava/util/WeakHashMap;

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lh3/v;->h:Ljava/lang/ref/ReferenceQueue;

    new-instance p2, Lh3/u;

    sget-object p3, Lh3/v;->i:Lh3/t;

    invoke-direct {p2, p1, p3}, Lh3/u;-><init>(Ljava/lang/ref/ReferenceQueue;Lh3/t;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static d()Lh3/v;
    .locals 18

    sget-object v0, Lh3/v;->j:Lh3/v;

    if-nez v0, :cond_2

    const-class v1, Lh3/v;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lh3/v;->j:Lh3/v;

    if-nez v0, :cond_1

    sget-object v0, Lcom/squareup/picasso/PicassoProvider;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v6, LK0/j;

    const/16 v2, 0x1d

    invoke-direct {v6, v0, v2}, LK0/j;-><init>(Landroid/content/Context;I)V

    new-instance v9, LC4/o;

    invoke-direct {v9, v0}, LC4/o;-><init>(Landroid/content/Context;)V

    new-instance v4, Lh3/y;

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v16, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v2, LJ/j;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, LJ/j;-><init>(I)V

    const/4 v11, 0x3

    const/4 v12, 0x3

    const-wide/16 v13, 0x0

    move-object v10, v4

    move-object/from16 v17, v2

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v10, Lh3/D;

    invoke-direct {v10, v9}, Lh3/D;-><init>(LC4/o;)V

    new-instance v11, Lh3/k;

    sget-object v5, Lh3/v;->i:Lh3/t;

    move-object v2, v11

    move-object v3, v0

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v2 .. v8}, Lh3/k;-><init>(Landroid/content/Context;Lh3/y;Lh3/t;LK0/j;LC4/o;Lh3/D;)V

    new-instance v2, Lh3/v;

    invoke-direct {v2, v0, v11, v9, v10}, Lh3/v;-><init>(Landroid/content/Context;Lh3/k;LC4/o;Lh3/D;)V

    sput-object v2, Lh3/v;->j:Lh3/v;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "context == null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_2
    sget-object v0, Lh3/v;->j:Lh3/v;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lh3/F;->a:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lh3/v;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh3/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lh3/l;->h:Z

    iget-object v1, p0, Lh3/v;->c:Lh3/k;

    const/4 v2, 0x2

    iget-object v1, v1, Lh3/k;->h:Lh/c;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lh3/v;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh3/h;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lh3/h;->a:Lh3/B;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lh3/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    invoke-virtual {v1, p1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Method call should happen from the main thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Landroid/graphics/Bitmap;ILh3/l;Ljava/lang/Exception;)V
    .locals 2

    iget-boolean p4, p3, Lh3/l;->h:Z

    if-eqz p4, :cond_0

    return-void

    :cond_0
    iget-boolean p4, p3, Lh3/l;->g:Z

    if-nez p4, :cond_1

    iget-object p4, p0, Lh3/v;->f:Ljava/util/WeakHashMap;

    invoke-virtual {p3}, Lh3/l;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p4, p3, Lh3/l;->c:Lh3/a;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    iget-object p3, p3, Lh3/l;->a:Lh3/v;

    sget v0, Lh3/w;->e:I

    invoke-virtual {p4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_3
    new-instance v1, Lh3/w;

    iget-object p3, p3, Lh3/v;->b:Landroid/content/Context;

    invoke-direct {v1, p3, p1, v0, p2}, Lh3/w;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "LoadedFrom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_5
    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of p4, p2, Landroid/graphics/drawable/Animatable;

    if-eqz p4, :cond_7

    check-cast p2, Landroid/graphics/drawable/Animatable;

    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_7
    iget p2, p3, Lh3/l;->d:I

    if-eqz p2, :cond_8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final c(Lh3/l;)V
    .locals 3

    invoke-virtual {p1}, Lh3/l;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lh3/v;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    invoke-virtual {p0, v0}, Lh3/v;->a(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lh3/v;->c:Lh3/k;

    const/4 v1, 0x1

    iget-object v0, v0, Lh3/k;->h:Lh/c;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
