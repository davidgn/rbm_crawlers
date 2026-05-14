.class public final LR0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/database/ValueEventListener;


# static fields
.field public static e:LR0/i;

.field public static f:LR0/i;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    sparse-switch p1, :sswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR0/i;->a:Ljava/lang/Object;

    .line 3
    new-instance p1, Landroid/os/Handler;

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, LA2/r;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LA2/r;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, LR0/i;->b:Ljava/lang/Object;

    return-void

    .line 5
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, LL/c;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, LL/c;-><init>(I)V

    iput-object p1, p0, LR0/i;->a:Ljava/lang/Object;

    .line 7
    new-instance p1, Lr/k;

    invoke-direct {p1}, Lr/k;-><init>()V

    iput-object p1, p0, LR0/i;->b:Ljava/lang/Object;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LR0/i;->c:Ljava/lang/Object;

    .line 9
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LR0/i;->d:Ljava/lang/Object;

    return-void

    .line 10
    :sswitch_1
    sget-object p1, Ll3/P1;->b:Ll3/P1;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Ll3/J1;->p()Ll3/w0;

    move-result-object v0

    iput-object v0, p0, LR0/i;->b:Ljava/lang/Object;

    .line 13
    invoke-static {}, Ll3/J1;->p()Ll3/w0;

    move-result-object v0

    iput-object v0, p0, LR0/i;->c:Ljava/lang/Object;

    .line 14
    invoke-static {}, Ll3/J1;->p()Ll3/w0;

    move-result-object v0

    iput-object v0, p0, LR0/i;->d:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, LR0/i;->a:Ljava/lang/Object;

    return-void

    .line 16
    :sswitch_2
    new-instance p1, LJ/j;

    const/4 v0, 0x1

    .line 17
    invoke-direct {p1, v0}, LJ/j;-><init>(I)V

    .line 18
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LR0/i;->b:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, LR0/i;->c:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, LR0/i;->a:Ljava/lang/Object;

    .line 23
    new-instance v0, LA2/h;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, LA2/h;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 24
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance p1, Lr/b;

    .line 26
    invoke-direct {p1}, Lr/k;-><init>()V

    .line 27
    iput-object p1, p0, LR0/i;->a:Ljava/lang/Object;

    .line 28
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, LR0/i;->b:Ljava/lang/Object;

    .line 29
    new-instance p1, Lr/e;

    invoke-direct {p1}, Lr/e;-><init>()V

    iput-object p1, p0, LR0/i;->c:Ljava/lang/Object;

    .line 30
    new-instance p1, Lr/b;

    .line 31
    invoke-direct {p1}, Lr/k;-><init>()V

    .line 32
    iput-object p1, p0, LR0/i;->d:Ljava/lang/Object;

    return-void

    .line 33
    :sswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LR0/i;->b:Ljava/lang/Object;

    .line 35
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LR0/i;->c:Ljava/lang/Object;

    .line 36
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LR0/i;->d:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/graphics/Typeface;Lb0/b;)V
    .locals 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, LR0/i;->d:Ljava/lang/Object;

    .line 39
    iput-object p2, p0, LR0/i;->a:Ljava/lang/Object;

    .line 40
    new-instance p1, Landroidx/emoji2/text/p;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Landroidx/emoji2/text/p;-><init>(I)V

    iput-object p1, p0, LR0/i;->c:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 41
    invoke-virtual {p2, p1}, LM/K;->a(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 42
    iget v2, p2, LM/K;->a:I

    add-int/2addr v0, v2

    .line 43
    iget-object v2, p2, LM/K;->d:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 44
    iget-object v0, p2, LM/K;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    .line 45
    new-array v0, v0, [C

    iput-object v0, p0, LR0/i;->b:Ljava/lang/Object;

    .line 46
    invoke-virtual {p2, p1}, LM/K;->a(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 47
    iget v0, p2, LM/K;->a:I

    add-int/2addr p1, v0

    .line 48
    iget-object v0, p2, LM/K;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 49
    iget-object p1, p2, LM/K;->d:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    move p2, v1

    :goto_2
    if-ge p2, p1, :cond_4

    .line 50
    new-instance v0, Landroidx/emoji2/text/l;

    invoke-direct {v0, p0, p2}, Landroidx/emoji2/text/l;-><init>(LR0/i;I)V

    .line 51
    invoke-virtual {v0}, Landroidx/emoji2/text/l;->c()Lb0/a;

    move-result-object v2

    const/4 v3, 0x4

    .line 52
    invoke-virtual {v2, v3}, LM/K;->a(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, v2, LM/K;->d:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v2, v2, LM/K;->a:I

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_3

    :cond_2
    move v2, v1

    :goto_3
    mul-int/lit8 v3, p2, 0x2

    .line 53
    iget-object v4, p0, LR0/i;->b:Ljava/lang/Object;

    check-cast v4, [C

    invoke-static {v2, v4, v3}, Ljava/lang/Character;->toChars(I[CI)I

    .line 54
    invoke-virtual {v0}, Landroidx/emoji2/text/l;->b()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_4

    :cond_3
    move v2, v1

    :goto_4
    const-string v4, "invalid metadata codepoint length"

    invoke-static {v2, v4}, LL4/l;->i(ZLjava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Landroidx/emoji2/text/l;->b()I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v3, p0, LR0/i;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/emoji2/text/p;

    invoke-virtual {v3, v0, v1, v2}, Landroidx/emoji2/text/p;->a(Landroidx/emoji2/text/l;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static h()LR0/i;
    .locals 2

    sget-object v0, LR0/i;->f:LR0/i;

    if-nez v0, :cond_0

    new-instance v0, LR0/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LR0/i;-><init>(I)V

    sput-object v0, LR0/i;->f:LR0/i;

    :cond_0
    sget-object v0, LR0/i;->f:LR0/i;

    return-object v0
.end method

.method public static declared-synchronized i(Landroid/content/Context;LW0/a;)LR0/i;
    .locals 3

    const-class v0, LR0/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, LR0/i;->e:LR0/i;

    if-nez v1, :cond_0

    new-instance v1, LR0/i;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v2, LR0/a;

    invoke-direct {v2, p0, p1}, LR0/d;-><init>(Landroid/content/Context;LW0/a;)V

    iput-object v2, v1, LR0/i;->a:Ljava/lang/Object;

    new-instance v2, LR0/b;

    invoke-direct {v2, p0, p1}, LR0/d;-><init>(Landroid/content/Context;LW0/a;)V

    iput-object v2, v1, LR0/i;->b:Ljava/lang/Object;

    new-instance v2, LR0/g;

    invoke-direct {v2, p0, p1}, LR0/g;-><init>(Landroid/content/Context;LW0/a;)V

    iput-object v2, v1, LR0/i;->c:Ljava/lang/Object;

    new-instance v2, LR0/h;

    invoke-direct {v2, p0, p1}, LR0/d;-><init>(Landroid/content/Context;LW0/a;)V

    iput-object v2, v1, LR0/i;->d:Ljava/lang/Object;

    sput-object v1, LR0/i;->e:LR0/i;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, LR0/i;->e:LR0/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public declared-synchronized a(Le1/s;Le1/t;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Le1/a;

    iget-object v1, p0, LR0/i;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, v1}, Le1/a;-><init>(Le1/s;Le1/t;Ljava/lang/ref/ReferenceQueue;)V

    iget-object p2, p0, LR0/i;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le1/a;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    iput-object p2, p1, Le1/a;->c:Le1/A;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(LA2/s;I)Z
    .locals 3

    iget-object v0, p1, LA2/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA2/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, LR0/i;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object p1, LA2/n;->n:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v0, v0, LA2/g;->a:LA2/n;

    invoke-virtual {p1, v2, p2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v2

    :cond_0
    return v1
.end method

.method public c(Le1/a;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LR0/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p1, Le1/a;->a:Le1/s;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Le1/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v2, p1, Le1/a;->c:Le1/A;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Le1/t;

    iget-object v5, p1, Le1/a;->a:Le1/s;

    iget-object v1, p0, LR0/i;->d:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Le1/n;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Le1/t;-><init>(Le1/A;ZZLe1/s;Le1/n;)V

    iget-object v1, p0, LR0/i;->d:Ljava/lang/Object;

    check-cast v1, Le1/n;

    iget-object p1, p1, Le1/a;->a:Le1/s;

    invoke-virtual {v1, p1, v0}, Le1/n;->e(Le1/s;Le1/t;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LR0/i;->b:Ljava/lang/Object;

    check-cast v0, Lr/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lr/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3}, LR0/i;->d(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "This graph contains cyclic dependencies"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/util/ArrayDeque;Ljava/lang/Object;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    invoke-virtual {p0}, LR0/i;->q()V

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Call wasn\'t in-flight!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f(LG4/f;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LG4/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, LR0/i;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0, p1}, LR0/i;->e(Ljava/util/ArrayDeque;Ljava/lang/Object;)V

    return-void
.end method

.method public g(Lj/a;)Lj/f;
    .locals 5

    iget-object v0, p0, LR0/i;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj/f;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lj/f;->b:Lj/a;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lj/f;

    iget-object v2, p0, LR0/i;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lj/f;-><init>(Landroid/content/Context;Lj/a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public j(Ljava/lang/String;)Lx3/c;
    .locals 6

    iget-object v0, p0, LR0/i;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LR0/i;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    goto :goto_3

    :cond_0
    :try_start_1
    iget-object v0, p0, LR0/i;->a:Ljava/lang/Object;

    check-cast v0, Lt3/b;

    invoke-interface {v0, p1}, Lt3/b;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, LR0/i;->b:Ljava/lang/Object;

    check-cast v1, Lw3/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lw3/b;->a(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt3/h;

    iget-object v2, p0, LR0/i;->c:Ljava/lang/Object;

    check-cast v2, Lx3/a;

    iget-object v3, v2, Lx3/a;->b:Lj3/G;

    iget-object v4, v3, Lj3/G;->c:Ljava/lang/Object;

    check-cast v4, Lx3/b;

    invoke-interface {v4, v1}, Lx3/b;->a(Lt3/h;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "001"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Lj3/G;->b(Lt3/h;)V

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lx3/a;->a:Lj3/G;

    invoke-virtual {v2, v1}, Lj3/G;->b(Lt3/h;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object v0, p0, LR0/i;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_3
    :goto_3
    iget-object p1, p0, LR0/i;->c:Ljava/lang/Object;

    check-cast p1, Lx3/a;

    return-object p1
.end method

.method public k(LA2/g;)Z
    .locals 1

    iget-object v0, p0, LR0/i;->c:Ljava/lang/Object;

    check-cast v0, LA2/s;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, v0, LA2/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public l(LX/m;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    const-wide v12, 0xfffffffffffffffL

    const/4 v14, 0x1

    const/4 v15, 0x0

    iget-object v1, v0, LR0/i;->c:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lv4/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lv4/b;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2, v15}, Lv4/b;->i(JZ)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v15

    goto :goto_0

    :cond_0
    and-long/2addr v1, v12

    invoke-virtual {v5, v1, v2}, Lv4/b;->a(J)Z

    move-result v1

    xor-int/2addr v1, v14

    :goto_0
    sget-object v22, Lv4/g;->a:Lv4/f;

    if-eqz v1, :cond_1

    :goto_1
    move-object/from16 v1, v22

    goto/16 :goto_12

    :cond_1
    sget-object v4, Lv4/d;->j:LG3/b;

    sget-object v1, Lv4/b;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv4/h;

    :goto_2
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    and-long v10, v2, v12

    invoke-virtual {v5, v2, v3, v15}, Lv4/b;->i(JZ)Z

    move-result v23

    sget v3, Lv4/d;->b:I

    int-to-long v7, v3

    div-long v14, v10, v7

    rem-long v7, v10, v7

    long-to-int v8, v7

    iget-wide v12, v1, Ly4/u;->c:J

    cmp-long v2, v12, v14

    if-eqz v2, :cond_f

    sget-object v2, Lv4/d;->a:Lv4/h;

    sget-object v2, Lv4/c;->a:Lv4/c;

    :goto_3
    invoke-static {v1, v14, v15, v2}, Ly4/a;->c(Ly4/u;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ly4/a;->f(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-static {v7}, Ly4/a;->d(Ljava/lang/Object;)Ly4/u;

    move-result-object v12

    :goto_4
    sget-object v13, Lv4/b;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v13, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v2

    move-object/from16 v2, v16

    check-cast v2, Ly4/u;

    move/from16 v25, v3

    move-object/from16 v24, v4

    iget-wide v3, v2, Ly4/u;->c:J

    move-wide/from16 v26, v10

    iget-wide v10, v12, Ly4/u;->c:J

    cmp-long v3, v3, v10

    if-ltz v3, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual {v12}, Ly4/u;->i()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v2, v17

    move-object/from16 v4, v24

    move/from16 v3, v25

    move-wide/from16 v10, v26

    goto :goto_3

    :cond_3
    invoke-virtual {v13, v5, v2, v12}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ly4/u;->e()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ly4/d;->d()V

    goto :goto_5

    :cond_4
    invoke-virtual {v13, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_3

    invoke-virtual {v12}, Ly4/u;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v12}, Ly4/d;->d()V

    :cond_5
    move-object/from16 v2, v17

    move-object/from16 v4, v24

    move/from16 v3, v25

    move-wide/from16 v10, v26

    goto :goto_4

    :cond_6
    move/from16 v25, v3

    move-object/from16 v24, v4

    move-wide/from16 v26, v10

    :cond_7
    :goto_5
    invoke-static {v7}, Ly4/a;->f(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lv4/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    if-eqz v2, :cond_9

    invoke-virtual {v5}, Lv4/b;->c()V

    sget v2, Lv4/d;->b:I

    int-to-long v10, v2

    iget-wide v12, v1, Ly4/u;->c:J

    mul-long/2addr v12, v10

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    cmp-long v2, v12, v2

    if-gez v2, :cond_8

    invoke-virtual {v1}, Ly4/d;->a()V

    :cond_8
    :goto_6
    const/4 v2, 0x0

    goto :goto_8

    :cond_9
    invoke-static {v7}, Ly4/a;->d(Ljava/lang/Object;)Ly4/u;

    move-result-object v2

    check-cast v2, Lv4/h;

    iget-wide v10, v2, Ly4/u;->c:J

    cmp-long v4, v10, v14

    if-lez v4, :cond_c

    sget v4, Lv4/d;->b:I

    int-to-long v12, v4

    mul-long/2addr v12, v10

    :cond_a
    sget-object v4, Lv4/b;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v18

    const-wide v14, 0xfffffffffffffffL

    and-long v16, v18, v14

    cmp-long v7, v16, v12

    if-ltz v7, :cond_b

    goto :goto_7

    :cond_b
    const/16 v7, 0x3c

    shr-long v14, v18, v7

    long-to-int v14, v14

    int-to-long v14, v14

    shl-long/2addr v14, v7

    add-long v20, v14, v16

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v21}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_7
    sget v4, Lv4/d;->b:I

    int-to-long v12, v4

    mul-long/2addr v10, v12

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    cmp-long v3, v10, v3

    if-gez v3, :cond_8

    invoke-virtual {v2}, Ly4/d;->a()V

    goto :goto_6

    :cond_c
    :goto_8
    if-nez v2, :cond_e

    if-eqz v23, :cond_d

    invoke-virtual {v5}, Lv4/b;->f()Ljava/lang/Throwable;

    move-result-object v1

    new-instance v2, Lv4/e;

    invoke-direct {v2, v1}, Lv4/e;-><init>(Ljava/lang/Throwable;)V

    :goto_9
    move-object/from16 v22, v2

    goto/16 :goto_1

    :cond_d
    move-object/from16 v4, v24

    const-wide v12, 0xfffffffffffffffL

    const/4 v14, 0x1

    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_e
    move-object v10, v2

    goto :goto_a

    :cond_f
    move/from16 v25, v3

    move-object/from16 v24, v4

    move-wide/from16 v26, v10

    move-object v10, v1

    :goto_a
    invoke-virtual {v10, v8, v9}, Lv4/h;->m(ILX/m;)V

    if-eqz v23, :cond_10

    move-object v1, v5

    move-object v2, v10

    move/from16 v11, v25

    move v3, v8

    move-object/from16 v12, v24

    move-object/from16 v4, p1

    move-object v13, v5

    move-object v14, v6

    move-wide/from16 v5, v26

    const/4 v15, 0x0

    move-object v7, v12

    move v15, v8

    move/from16 v8, v23

    invoke-virtual/range {v1 .. v8}, Lv4/b;->p(Lv4/h;ILX/m;JLG3/b;Z)I

    move-result v8

    move-wide/from16 v16, v26

    :goto_b
    const/4 v9, 0x2

    goto/16 :goto_e

    :cond_10
    move-object v13, v5

    move-object v14, v6

    move v15, v8

    move-object/from16 v12, v24

    move/from16 v11, v25

    invoke-virtual {v10, v15}, Lv4/h;->k(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_14

    move-wide/from16 v7, v26

    invoke-virtual {v13, v7, v8}, Lv4/b;->a(J)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Lv4/d;->d:LG3/b;

    const/4 v2, 0x0

    invoke-virtual {v10, v15, v2, v1}, Lv4/h;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-wide/from16 v16, v7

    const/4 v8, 0x1

    goto :goto_b

    :cond_11
    const/4 v5, 0x2

    goto :goto_d

    :cond_12
    const/4 v2, 0x0

    if-nez v12, :cond_13

    move-wide/from16 v16, v7

    const/4 v8, 0x3

    goto :goto_b

    :cond_13
    invoke-virtual {v10, v15, v2, v12}, Lv4/h;->j(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-wide/from16 v16, v7

    const/4 v8, 0x2

    goto :goto_b

    :cond_14
    move-wide/from16 v7, v26

    const/4 v2, 0x0

    instance-of v3, v1, Lt4/x0;

    if-eqz v3, :cond_11

    invoke-virtual {v10, v15, v2}, Lv4/h;->m(ILX/m;)V

    invoke-virtual {v13, v1, v9}, Lv4/b;->m(Ljava/lang/Object;LX/m;)Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Lv4/d;->i:LG3/b;

    invoke-virtual {v10, v15, v1}, Lv4/h;->n(ILG3/b;)V

    const/4 v1, 0x0

    const/4 v5, 0x2

    goto :goto_c

    :cond_15
    sget-object v1, Lv4/d;->k:LG3/b;

    iget-object v2, v10, Lv4/h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v5, 0x2

    mul-int/lit8 v3, v15, 0x2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_16

    invoke-virtual {v10, v15, v4}, Lv4/h;->l(IZ)V

    :cond_16
    const/4 v1, 0x5

    :goto_c
    move v9, v5

    move-wide/from16 v16, v7

    move v8, v1

    goto :goto_e

    :goto_d
    move-object v1, v13

    move-object v2, v10

    move v3, v15

    move-object/from16 v4, p1

    move v9, v5

    move-wide v5, v7

    move-wide/from16 v16, v7

    move-object v7, v12

    move/from16 v8, v23

    invoke-virtual/range {v1 .. v8}, Lv4/b;->p(Lv4/h;ILX/m;JLG3/b;Z)I

    move-result v8

    :goto_e
    sget-object v1, LY3/j;->a:LY3/j;

    if-eqz v8, :cond_20

    const/4 v2, 0x1

    if-eq v8, v2, :cond_1f

    if-eq v8, v9, :cond_1b

    const/4 v1, 0x3

    if-eq v8, v1, :cond_1a

    const/4 v3, 0x4

    if-eq v8, v3, :cond_18

    const/4 v3, 0x5

    if-eq v8, v3, :cond_17

    goto :goto_f

    :cond_17
    invoke-virtual {v10}, Ly4/d;->a()V

    :goto_f
    move-object/from16 v9, p1

    move-object v1, v10

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    const-wide v12, 0xfffffffffffffffL

    const/4 v15, 0x0

    move v14, v2

    goto/16 :goto_2

    :cond_18
    sget-object v1, Lv4/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, v13}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    cmp-long v1, v16, v1

    if-gez v1, :cond_19

    invoke-virtual {v10}, Ly4/d;->a()V

    :cond_19
    invoke-virtual {v13}, Lv4/b;->f()Ljava/lang/Throwable;

    move-result-object v1

    new-instance v2, Lv4/e;

    invoke-direct {v2, v1}, Lv4/e;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unexpected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    if-eqz v23, :cond_1c

    invoke-virtual {v10}, Ly4/u;->h()V

    invoke-virtual {v13}, Lv4/b;->f()Ljava/lang/Throwable;

    move-result-object v1

    new-instance v2, Lv4/e;

    invoke-direct {v2, v1}, Lv4/e;-><init>(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_1c
    instance-of v1, v12, Lt4/x0;

    if-eqz v1, :cond_1d

    move-object v7, v12

    check-cast v7, Lt4/x0;

    goto :goto_10

    :cond_1d
    const/4 v7, 0x0

    :goto_10
    if-eqz v7, :cond_1e

    add-int v8, v15, v11

    invoke-interface {v7, v10, v8}, Lt4/x0;->b(Ly4/u;I)V

    :cond_1e
    invoke-virtual {v10}, Ly4/u;->h()V

    goto/16 :goto_1

    :cond_1f
    :goto_11
    move-object/from16 v22, v1

    goto/16 :goto_1

    :cond_20
    invoke-virtual {v10}, Ly4/d;->a()V

    goto :goto_11

    :goto_12
    instance-of v2, v1, Lv4/e;

    if-eqz v2, :cond_24

    if-eqz v2, :cond_21

    move-object v7, v1

    check-cast v7, Lv4/e;

    goto :goto_13

    :cond_21
    const/4 v7, 0x0

    :goto_13
    if-eqz v7, :cond_22

    iget-object v7, v7, Lv4/e;->a:Ljava/lang/Throwable;

    goto :goto_14

    :cond_22
    const/4 v7, 0x0

    :goto_14
    if-nez v7, :cond_23

    new-instance v7, LC3/e;

    const-string v1, "Channel was closed normally"

    invoke-direct {v7, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :cond_23
    throw v7

    :cond_24
    instance-of v1, v1, Lv4/f;

    if-nez v1, :cond_26

    iget-object v1, v0, LR0/i;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_25

    new-instance v1, LX/j;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, LX/j;-><init>(LR0/i;Lkotlin/coroutines/Continuation;)V

    iget-object v2, v0, LR0/i;->a:Ljava/lang/Object;

    check-cast v2, Lt4/u;

    invoke-static {v2, v1}, Lt4/w;->l(Lt4/u;Lkotlin/jvm/functions/Function2;)V

    :cond_25
    return-void

    :cond_26
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public m(Lj/a;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0, p1}, LR0/i;->g(Lj/a;)Lj/f;

    move-result-object p1

    new-instance v0, Lk/t;

    iget-object v1, p0, LR0/i;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    check-cast p2, LG/a;

    invoke-direct {v0, v1, p2}, Lk/t;-><init>(Landroid/content/Context;LG/a;)V

    iget-object p2, p0, LR0/i;->a:Ljava/lang/Object;

    check-cast p2, Landroid/view/ActionMode$Callback;

    invoke-interface {p2, p1, v0}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public n(Lj/a;Lk/m;)Z
    .locals 3

    invoke-virtual {p0, p1}, LR0/i;->g(Lj/a;)Lj/f;

    move-result-object p1

    iget-object v0, p0, LR0/i;->d:Ljava/lang/Object;

    check-cast v0, Lr/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lr/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Menu;

    if-nez v1, :cond_0

    new-instance v1, Lk/C;

    iget-object v2, p0, LR0/i;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lk/C;-><init>(Landroid/content/Context;Lk/m;)V

    invoke-virtual {v0, p2, v1}, Lr/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p2, p0, LR0/i;->a:Ljava/lang/Object;

    check-cast p2, Landroid/view/ActionMode$Callback;

    invoke-interface {p2, p1, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public o(Lj3/r0;)V
    .locals 2

    iget-object v0, p0, LR0/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LR0/i;->c:Ljava/lang/Object;

    check-cast v1, Lj3/r0;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-object p1, p0, LR0/i;->c:Ljava/lang/Object;

    iget-object v1, p0, LR0/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object v0, p0, LR0/i;->d:Ljava/lang/Object;

    check-cast v0, Ll3/L0;

    iget-object v0, v0, Ll3/L0;->D:Ll3/J;

    invoke-virtual {v0, p1}, Ll3/J;->c(Lj3/r0;)V

    :cond_1
    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 10

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->exists()Z

    move-result v0

    iget-object v1, p0, LR0/i;->a:Ljava/lang/Object;

    check-cast v1, LY0/a1;

    if-eqz v0, :cond_9

    const-string v0, "lastMsg"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v3, ""

    move v4, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    invoke-static {v3}, Ls/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x19

    if-le v3, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x18

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v2, "lastMsgTime"

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object p1

    const-class v2, Ljava/lang/Long;

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p0, LR0/i;->d:Ljava/lang/Object;

    check-cast p1, LY0/C0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v6, 0xea60

    div-long v6, v4, v6

    const-wide/32 v8, 0x36ee80

    div-long/2addr v4, v8

    const-wide/16 v8, 0x1

    cmp-long p1, v6, v8

    if-gez p1, :cond_4

    const-string p1, "just now"

    goto :goto_1

    :cond_4
    const-wide/16 v8, 0x3c

    cmp-long p1, v6, v8

    if-gez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "m"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    const-wide/16 v6, 0x18

    cmp-long p1, v4, v6

    if-gez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "h"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    const-wide/16 v6, 0x24

    cmp-long p1, v4, v6

    if-gez p1, :cond_7

    const-string p1, "Yesterday"

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy"

    invoke-direct {p1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, ".."

    :goto_1
    iget-object v2, v1, LY0/a1;->B:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object p1, v1, LY0/a1;->z:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    iget-object p1, v1, LY0/a1;->z:Landroid/widget/TextView;

    const-string v0, "Tap to chat"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    const-string v0, "USERS"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iget-object v0, p0, LR0/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iget-object v0, p0, LR0/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/User;

    invoke-virtual {v0}, Lcom/booklal/booklal/User;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    const-string v0, "MsgSeen"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    new-instance v0, LK0/j;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, LK0/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/Query;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    return-void
.end method

.method public p(LA2/g;)V
    .locals 2

    iget-object v0, p0, LR0/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, LR0/i;->k(LA2/g;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LR0/i;->c:Ljava/lang/Object;

    check-cast p1, LA2/s;

    iget-boolean v1, p1, LA2/s;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p1, LA2/s;->c:Z

    iget-object v1, p0, LR0/i;->b:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public q()V
    .locals 14

    sget-object v0, LD4/c;->a:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, LR0/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "readyAsyncCalls.iterator()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LG4/f;

    iget-object v3, p0, LR0/i;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    const/16 v4, 0x40

    if-ge v3, v4, :cond_1

    iget-object v3, v2, LG4/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v3, v2, LG4/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, LR0/i;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, LR0/i;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    iget-object v1, p0, LR0/i;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LG4/f;

    monitor-enter p0

    :try_start_3
    iget-object v5, p0, LR0/i;->a:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v12}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, LD4/c;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Dispatcher"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, LD4/b;

    invoke-direct {v13, v6, v2}, LD4/b;-><init>(Ljava/lang/String;Z)V

    const-wide/16 v9, 0x3c

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v5, p0, LR0/i;->a:Ljava/lang/Object;

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_2
    iget-object v5, p0, LR0/i;->a:Ljava/lang/Object;

    check-cast v5, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v5}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, LG4/f;->c:LG4/i;

    iget-object v7, v6, LG4/i;->a:LC4/C;

    iget-object v7, v7, LC4/C;->a:LR0/i;

    sget-object v7, LD4/c;->a:[B

    :try_start_4
    invoke-virtual {v5, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v5

    :try_start_5
    new-instance v7, Ljava/io/InterruptedIOException;

    const-string v8, "executor rejected"

    invoke-direct {v7, v8}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, LG4/i;->j(Ljava/io/IOException;)Ljava/io/IOException;

    iget-object v5, v4, LG4/f;->a:LC4/j;

    invoke-interface {v5, v7}, LC4/j;->k(Ljava/io/IOException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v5, v6, LG4/i;->a:LC4/C;

    iget-object v5, v5, LC4/C;->a:LR0/i;

    invoke-virtual {v5, v4}, LR0/i;->f(LG4/f;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_2
    move-exception v0

    iget-object v1, v6, LG4/i;->a:LC4/C;

    iget-object v1, v1, LC4/C;->a:LR0/i;

    invoke-virtual {v1, v4}, LR0/i;->f(LG4/f;)V

    throw v0

    :goto_4
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_3
    return-void

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_5
    monitor-exit p0

    throw v0
.end method

.method public r(LA2/g;)V
    .locals 2

    iget-object v0, p0, LR0/i;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, LR0/i;->k(LA2/g;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LR0/i;->c:Ljava/lang/Object;

    check-cast p1, LA2/s;

    iget-boolean v1, p1, LA2/s;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p1, LA2/s;->c:Z

    invoke-virtual {p0, p1}, LR0/i;->s(LA2/s;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public s(LA2/s;)V
    .locals 4

    iget v0, p1, LA2/s;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_2
    const/16 v0, 0xabe

    :goto_0
    iget-object v1, p0, LR0/i;->b:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public t()V
    .locals 3

    iget-object v0, p0, LR0/i;->d:Ljava/lang/Object;

    check-cast v0, LA2/s;

    if-eqz v0, :cond_1

    iput-object v0, p0, LR0/i;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, LR0/i;->d:Ljava/lang/Object;

    iget-object v0, v0, LA2/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA2/g;

    if-eqz v0, :cond_0

    sget-object v1, LA2/n;->n:Landroid/os/Handler;

    const/4 v2, 0x0

    iget-object v0, v0, LA2/g;->a:LA2/n;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    iput-object v1, p0, LR0/i;->c:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
