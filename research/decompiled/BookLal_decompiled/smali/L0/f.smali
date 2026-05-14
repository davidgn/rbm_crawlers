.class public final LL0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/a;
.implements Landroidx/emoji2/text/i;
.implements Li1/r;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LL0/f;->a:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, LL0/f;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LS4/b;)V
    .locals 9

    new-instance v7, Landroidx/emoji2/text/a;

    const-string v0, "EmojiCompatInitializer"

    invoke-direct {v7, v0}, Landroidx/emoji2/text/a;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const-wide/16 v3, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance v0, LX1/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v8, v1}, LX1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(LE4/d;)Lz0/b;
    .locals 4

    iget-object v0, p1, LE4/d;->e:Ljava/lang/Object;

    check-cast v0, Lj3/G;

    if-eqz v0, :cond_2

    iget-object v1, p0, LL0/f;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object p1, p1, LE4/d;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, LE4/d;

    const/4 v3, 0x1

    invoke-direct {v2, v1, p1, v0, v3}, LE4/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lj3/G;Z)V

    new-instance p1, LA0/e;

    iget-object v0, v2, LE4/d;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, v2, LE4/d;->e:Ljava/lang/Object;

    check-cast v1, Lj3/G;

    iget-object v3, v2, LE4/d;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-boolean v2, v2, LE4/d;->b:Z

    invoke-direct {p1, v0, v3, v1, v2}, LA0/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lj3/G;Z)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set a non-null database name to a configuration that uses the no backup directory."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set a non-null context to create the configuration."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must set a callback to create the configuration."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Li1/w;)Li1/q;
    .locals 2

    new-instance p1, Li1/m;

    iget-object v0, p0, LL0/f;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Li1/m;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method
