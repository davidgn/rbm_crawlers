.class public final LD2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM/x;
.implements Lz3/r;
.implements Lz3/b;
.implements Landroidx/work/s;
.implements Lz3/j;
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;
.implements LD0/j;
.implements Lc1/d;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, LD2/e;->a:I

    packed-switch p1, :pswitch_data_0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance p1, Landroidx/lifecycle/B;

    .line 31
    invoke-direct {p1}, Landroidx/lifecycle/A;-><init>()V

    .line 32
    iput-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    .line 33
    new-instance p1, LV0/j;

    .line 34
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, LD2/e;->c:Ljava/lang/Object;

    .line 36
    sget-object p1, Landroidx/work/s;->h:Landroidx/work/q;

    invoke-virtual {p0, p1}, LD2/e;->w(La/a;)V

    return-void

    .line 37
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    .line 39
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LD2/e;->c:Ljava/lang/Object;

    return-void

    .line 40
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance p1, Ly1/h;

    const-wide/16 v0, 0x3e8

    invoke-direct {p1, v0, v1}, Ly1/h;-><init>(J)V

    iput-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    .line 42
    new-instance p1, Ly3/c;

    const/16 v0, 0x14

    .line 43
    invoke-direct {p1, v0}, Ly3/c;-><init>(I)V

    const/16 v0, 0xa

    .line 44
    invoke-static {v0, p1}, Lz1/g;->a(ILz1/d;)LJ2/e;

    move-result-object p1

    iput-object p1, p0, LD2/e;->c:Ljava/lang/Object;

    return-void

    .line 45
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    .line 47
    new-instance p1, Lg1/c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lg1/c;-><init>(I)V

    iput-object p1, p0, LD2/e;->c:Ljava/lang/Object;

    return-void

    .line 48
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance p1, Lf1/c;

    const/4 v0, 0x0

    .line 50
    invoke-direct {p1, v0}, Lf1/c;-><init>(Lf1/h;)V

    .line 51
    iput-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    .line 52
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LD2/e;->c:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LD2/e;->a:I

    iput-object p2, p0, LD2/e;->b:Ljava/lang/Object;

    iput-object p3, p0, LD2/e;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 2
    iput p1, p0, LD2/e;->a:I

    iput-object p2, p0, LD2/e;->c:Ljava/lang/Object;

    iput-object p3, p0, LD2/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LD2/h;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LD2/e;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    iput-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LR0/i;Ld3/a;Landroidx/emoji2/text/d;)V
    .locals 0

    const/16 p2, 0x13

    iput p2, p0, LD2/e;->a:I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    .line 55
    iput-object p3, p0, LD2/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, LD2/e;->a:I

    packed-switch p2, :pswitch_data_0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, LD2/e;->b:Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LD2/e;->c:Ljava/lang/Object;

    return-void

    .line 6
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, LD2/e;->c:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 5

    const/16 v0, 0x14

    iput v0, p0, LD2/e;->a:I

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    .line 60
    new-instance v1, Lc0/i;

    invoke-direct {v1, p1}, Lc0/i;-><init>(Landroid/widget/EditText;)V

    iput-object v1, p0, LD2/e;->c:Ljava/lang/Object;

    .line 61
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    sget-object v1, Lc0/a;->b:Lc0/a;

    if-nez v1, :cond_1

    .line 63
    sget-object v1, Lc0/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v2, Lc0/a;->b:Lc0/a;

    if-nez v2, :cond_0

    .line 65
    new-instance v2, Lc0/a;

    .line 66
    invoke-direct {v2}, Landroid/text/Editable$Factory;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    :try_start_1
    const-string v3, "android.text.DynamicLayout$ChangeWatcher"

    .line 68
    const-class v4, Lc0/a;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v3, v0, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lc0/a;->c:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :catchall_0
    :try_start_2
    sput-object v2, Lc0/a;->b:Lc0/a;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 70
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 71
    :cond_1
    :goto_2
    sget-object v0, Lc0/a;->b:Lc0/a;

    .line 72
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LD2/e;->a:I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD2/e;->c:Ljava/lang/Object;

    .line 74
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;I)V
    .locals 1

    iput p2, p0, LD2/e;->a:I

    packed-switch p2, :pswitch_data_0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    .line 11
    new-instance p2, LT0/b;

    const/4 v0, 0x0

    .line 12
    invoke-direct {p2, p1, v0}, LT0/b;-><init>(Lv0/h;I)V

    .line 13
    iput-object p2, p0, LD2/e;->c:Ljava/lang/Object;

    return-void

    .line 14
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    .line 16
    new-instance p2, LT0/b;

    const/4 v0, 0x6

    .line 17
    invoke-direct {p2, p1, v0}, LT0/b;-><init>(Lv0/h;I)V

    .line 18
    iput-object p2, p0, LD2/e;->c:Ljava/lang/Object;

    return-void

    .line 19
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    .line 21
    new-instance p2, LT0/b;

    const/4 v0, 0x3

    .line 22
    invoke-direct {p2, p1, v0}, LT0/b;-><init>(Lv0/h;I)V

    .line 23
    iput-object p2, p0, LD2/e;->c:Ljava/lang/Object;

    return-void

    .line 24
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    .line 26
    new-instance p2, LT0/b;

    const/4 v0, 0x1

    .line 27
    invoke-direct {p2, p1, v0}, LT0/b;-><init>(Lv0/h;I)V

    .line 28
    iput-object p2, p0, LD2/e;->c:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lj3/b;)V
    .locals 1

    const/16 v0, 0x1d

    iput v0, p0, LD2/e;->a:I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public static d(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    if-eq v1, v2, :cond_6

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const-class v2, Landroidx/emoji2/text/s;

    invoke-interface {p0, p1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/emoji2/text/s;

    if-eqz v1, :cond_6

    array-length v2, v1

    if-lez v2, :cond_6

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-eqz p2, :cond_2

    if-eq v5, p1, :cond_4

    :cond_2
    if-nez p2, :cond_3

    if-eq v4, p1, :cond_4

    :cond_3
    if-le p1, v5, :cond_5

    if-ge p1, v4, :cond_5

    :cond_4
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 p0, 0x1

    return p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v0
.end method


# virtual methods
.method public a(LB3/b;)V
    .locals 1

    iget v0, p0, LD2/e;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/r;

    invoke-interface {v0, p1}, Lz3/r;->a(LB3/b;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/r;

    invoke-interface {v0, p1}, Lz3/r;->a(LB3/b;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, LL3/i;

    invoke-static {v0, p1}, LF3/a;->g(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    return-void

    :pswitch_3
    iget-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, LL3/q;

    invoke-static {v0, p1}, LF3/a;->g(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    return-void

    :pswitch_4
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/b;

    invoke-interface {v0, p1}, Lz3/b;->a(LB3/b;)V

    return-void

    :pswitch_5
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, LL3/i;

    invoke-static {v0, p1}, LF3/a;->e(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public b()Lj3/b;
    .locals 4

    iget-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lj3/b;

    iget-object v0, v0, Lj3/b;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/IdentityHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/IdentityHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj3/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Lj3/b;

    iget-object v1, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/IdentityHashMap;

    invoke-direct {v0, v1}, Lj3/b;-><init>(Ljava/util/IdentityHashMap;)V

    iput-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lj3/b;

    return-object v0
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, Le1/D;

    iget-object v1, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v1, Li1/p;

    iget-object v2, v0, Le1/D;->f:Li1/p;

    if-eqz v2, :cond_0

    if-ne v2, v1, :cond_0

    iget-object v2, v0, Le1/D;->l:Le1/d;

    iget-object v1, v1, Li1/p;->c:Lc1/e;

    invoke-interface {v1}, Lc1/e;->e()Lb1/a;

    move-result-object v3

    iget-object v0, v0, Le1/D;->b:Le1/j;

    invoke-virtual {v0, v2, p1, v1, v3}, Le1/j;->c(Lb1/e;Ljava/lang/Exception;Lc1/e;Lb1/a;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Lcom/google/android/datatransport/cct/CctBackendFactory;
    .locals 13

    const-string v0, "."

    const-string v1, "Could not instantiate "

    iget-object v2, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    const/4 v3, 0x0

    const-string v4, "BackendRegistry"

    if-nez v2, :cond_6

    iget-object v2, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v2, "Context has no PackageManager."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v2, v3

    goto :goto_1

    :cond_0
    new-instance v6, Landroid/content/ComponentName;

    const-class v7, Lcom/google/android/datatransport/runtime/backends/TransportBackendDiscovery;

    invoke-direct {v6, v2, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x80

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "TransportBackendDiscovery has no service info."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "Application info not found."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    if-nez v2, :cond_2

    const-string v2, "Could not retrieve metadata, returning empty list of transport backends."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    goto :goto_4

    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_3

    const-string v9, "backend:"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_3

    aget-object v11, v8, v10

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    move-object v2, v5

    :goto_4
    iput-object v2, p0, LD2/e;->c:Ljava/lang/Object;

    :cond_6
    iget-object v2, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_7

    return-object v3

    :cond_7
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lcom/google/android/datatransport/cct/CctBackendFactory;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/cct/CctBackendFactory;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v2

    goto :goto_7

    :catch_4
    move-exception v2

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_9

    :goto_5
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_6
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not found."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    return-object v3
.end method

.method public f(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, Le1/D;

    iget-object v1, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v1, Li1/p;

    iget-object v2, v0, Le1/D;->f:Li1/p;

    if-eqz v2, :cond_1

    if-ne v2, v1, :cond_1

    iget-object v2, v0, Le1/D;->a:Le1/g;

    iget-object v2, v2, Le1/g;->p:Le1/l;

    if-eqz p1, :cond_0

    iget-object v3, v1, Li1/p;->c:Lc1/e;

    invoke-interface {v3}, Lc1/e;->e()Lb1/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Le1/l;->a(Lb1/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, v0, Le1/D;->e:Ljava/lang/Object;

    iget-object p1, v0, Le1/D;->b:Le1/j;

    invoke-virtual {p1}, Le1/j;->l()V

    goto :goto_0

    :cond_0
    iget-object v2, v1, Li1/p;->a:Lb1/e;

    iget-object v3, v1, Li1/p;->c:Lc1/e;

    invoke-interface {v3}, Lc1/e;->e()Lb1/a;

    move-result-object v4

    iget-object v5, v0, Le1/D;->l:Le1/d;

    iget-object v0, v0, Le1/D;->b:Le1/j;

    move-object v1, v2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Le1/j;->b(Lb1/e;Ljava/lang/Object;Lc1/e;Lb1/a;Lb1/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g(Landroid/view/View;LM/z0;)LM/z0;
    .locals 6

    invoke-static {p1, p2}, LM/a0;->h(Landroid/view/View;LM/z0;)LM/z0;

    move-result-object p1

    iget-object p2, p1, LM/z0;->a:LM/x0;

    invoke-virtual {p2}, LM/x0;->m()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, LM/z0;->b()I

    move-result p2

    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, LM/z0;->d()I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, LM/z0;->c()I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, LM/z0;->a()I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1}, LM/a0;->b(Landroid/view/View;LM/z0;)LM/z0;

    move-result-object v3

    invoke-virtual {v3}, LM/z0;->b()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, LM/z0;->d()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, LM/z0;->c()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, LM/z0;->a()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget p2, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, v1, v2, v0}, LM/z0;->f(IIII)LM/z0;

    move-result-object p1

    return-object p1
.end method

.method public h(Lf1/h;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/c;

    if-nez v1, :cond_0

    new-instance v1, Lf1/c;

    invoke-direct {v1, p1}, Lf1/c;-><init>(Lf1/h;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lf1/h;->a()V

    :goto_0
    iget-object p1, v1, Lf1/c;->d:Lf1/c;

    iget-object v0, v1, Lf1/c;->c:Lf1/c;

    iput-object v0, p1, Lf1/c;->c:Lf1/c;

    iget-object v0, v1, Lf1/c;->c:Lf1/c;

    iput-object p1, v0, Lf1/c;->d:Lf1/c;

    iget-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast p1, Lf1/c;

    iput-object p1, v1, Lf1/c;->d:Lf1/c;

    iget-object p1, p1, Lf1/c;->c:Lf1/c;

    iput-object p1, v1, Lf1/c;->c:Lf1/c;

    iput-object v1, p1, Lf1/c;->d:Lf1/c;

    iget-object p1, v1, Lf1/c;->d:Lf1/c;

    iput-object v1, p1, Lf1/c;->c:Lf1/c;

    iget-object p1, v1, Lf1/c;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-lez p1, :cond_2

    iget-object v0, v1, Lf1/c;->b:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public i()V
    .locals 6

    iget-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/SearchPage;

    iget-object v1, v0, Lcom/booklal/booklal/SearchPage;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/booklal/booklal/SearchPage;->F:Lcom/google/firebase/firestore/DocumentSnapshot;

    const/4 v1, 0x0

    sput v1, Lcom/booklal/booklal/SearchPage;->K:I

    iget-object v2, v0, Lcom/booklal/booklal/SearchPage;->v:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/booklal/booklal/SearchPage;->b:Ljava/lang/String;

    iget-object v3, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/booklal/booklal/SearchPage;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/booklal/booklal/SearchPage;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/booklal/booklal/SearchPage;->o:Ljava/lang/Double;

    iget-object v2, v0, Lcom/booklal/booklal/SearchPage;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/booklal/booklal/SearchPage;->p:Ljava/lang/Double;

    iget-object v2, v0, Lcom/booklal/booklal/SearchPage;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Lcom/booklal/booklal/SearchPage;->j(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/booklal/booklal/SearchPage;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/booklal/booklal/SearchPage;->b:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/booklal/booklal/SearchPage;->p:Ljava/lang/Double;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/booklal/booklal/SearchPage;->o:Ljava/lang/Double;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/booklal/booklal/SearchPage;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Lcom/booklal/booklal/SearchPage;->j(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/booklal/booklal/SearchPage;->w:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public j(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Lv0/i;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lv0/i;->m(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p1}, Lv0/h;->b()V

    invoke-virtual {p1, v0}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lv0/i;->release()V

    return-object v1

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lv0/i;->release()V

    throw v1
.end method

.method public k(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    const-string v0, "SELECT long_value FROM Preference where `key`=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lv0/i;->m(ILjava/lang/String;)V

    iget-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p1}, Lv0/h;->b()V

    invoke-virtual {p1, v0}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lv0/i;->release()V

    return-object v2

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lv0/i;->release()V

    throw v1
.end method

.method public l(Lb1/e;)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Ly1/h;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v1, Ly1/h;

    invoke-virtual {v1, p1}, Ly1/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_1

    iget-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, LJ2/e;

    invoke-virtual {v0}, LJ2/e;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg1/h;

    :try_start_1
    iget-object v1, v0, Lg1/h;->a:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Lb1/e;->a(Ljava/security/MessageDigest;)V

    iget-object v1, v0, Lg1/h;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    sget-object v2, Ly1/k;->b:[C

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    :goto_0
    :try_start_2
    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-byte v4, v1, v3

    and-int/lit16 v5, v4, 0xff

    mul-int/lit8 v6, v3, 0x2

    ushr-int/lit8 v5, v5, 0x4

    sget-object v7, Ly1/k;->a:[C

    aget-char v5, v7, v5

    aput-char v5, v2, v6

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v7, v4

    aput-char v4, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v2, LJ2/e;

    invoke-virtual {v2, v0}, LJ2/e;->N(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    iget-object v1, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v1, LJ2/e;

    invoke-virtual {v1, v0}, LJ2/e;->N(Ljava/lang/Object;)Z

    throw p1

    :cond_1
    :goto_1
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ly1/h;

    monitor-enter v2

    :try_start_5
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Ly1/h;

    invoke-virtual {v0, p1, v1}, Ly1/h;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v1

    :catchall_2
    move-exception p1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1
.end method

.method public m(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lv0/i;->e(ILjava/lang/String;)Lv0/i;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Lv0/i;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Lv0/i;->m(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p1}, Lv0/h;->b()V

    invoke-virtual {p1, v0}, Lv0/h;->g(Lz0/c;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lv0/i;->release()V

    return-object v1

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Lv0/i;->release()V

    throw v1
.end method

.method public n(Ljava/lang/CharSequence;IILandroidx/emoji2/text/l;)Z
    .locals 7

    const/4 v0, 0x1

    iget v1, p4, Landroidx/emoji2/text/l;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/emoji2/text/d;

    invoke-virtual {p4}, Landroidx/emoji2/text/l;->c()Lb0/a;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, LM/K;->a(I)I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v6, v4, LM/K;->d:Ljava/lang/Object;

    check-cast v6, Ljava/nio/ByteBuffer;

    iget v4, v4, LM/K;->a:I

    add-int/2addr v5, v4

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/emoji2/text/d;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    iget-object p1, v1, Landroidx/emoji2/text/d;->a:Landroid/text/TextPaint;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget p3, LE/e;->a:I

    invoke-static {p1, p2}, LE/d;->a(Landroid/graphics/Paint;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    iput p1, p4, Landroidx/emoji2/text/l;->c:I

    :cond_4
    iget p1, p4, Landroidx/emoji2/text/l;->c:I

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0
.end method

.method public o(LT0/c;)V
    .locals 2

    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Lv0/h;->b()V

    invoke-virtual {v0}, Lv0/h;->c()V

    :try_start_0
    iget-object v1, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v1, LT0/b;

    invoke-virtual {v1, p1}, LT0/b;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lv0/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lv0/h;->f()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lv0/h;->f()V

    throw p1
.end method

.method public onComplete()V
    .locals 1

    iget v0, p0, LD2/e;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0}, Lz3/j;->onComplete()V

    return-void

    :pswitch_1
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0}, Lz3/j;->onComplete()V

    return-void

    :pswitch_2
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/b;

    invoke-interface {v0}, Lz3/b;->onComplete()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget v0, p0, LD2/e;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/r;

    invoke-interface {v0, p1}, Lz3/r;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    :try_start_0
    iget-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, LN3/a;

    iget-object v0, v0, LN3/a;->c:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->t(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    new-instance v1, LC3/b;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, LC3/b;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/r;

    invoke-interface {v0, p1}, Lz3/r;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/b;

    :try_start_1
    iget-object v1, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v1, LJ3/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v0}, Lz3/b;->onComplete()V

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v1}, LS4/b;->D(Ljava/lang/Throwable;)V

    new-instance v2, LC3/b;

    filled-new-array {p1, v1}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, p1}, LC3/b;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lz3/b;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :pswitch_5
    iget-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, Lz3/r;

    invoke-interface {v0, p1}, Lz3/r;->onError(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LD2/e;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/r;

    :try_start_0
    iget-object v1, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v1, LN3/a;

    iget-object v1, v1, LN3/a;->c:Ljava/lang/Object;

    check-cast v1, LE3/b;

    invoke-interface {v1, p1}, LE3/b;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Lz3/r;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-interface {v0, p1}, Lz3/r;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/r;

    invoke-interface {v0, p1}, Lz3/r;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_3
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_4
    iget-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, Lz3/r;

    invoke-interface {v0, p1}, Lz3/r;->onSuccess(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 8

    iget-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, LB2/e;

    iget-object v1, v0, LB2/e;->b:Ljava/lang/Object;

    check-cast v1, LY0/Q;

    iget-object v1, v1, LY0/Q;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/RewardAdActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/booklal/booklal/RewardAdActivity;->t:J

    iget-object v0, v0, LB2/e;->b:Ljava/lang/Object;

    check-cast v0, LY0/Q;

    iget-object v1, v0, LY0/Q;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/RewardAdActivity;

    iget-object v1, v1, Lcom/booklal/booklal/RewardAdActivity;->m:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v2, "users"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    iget-object v2, v0, LY0/Q;->b:Ljava/lang/Object;

    check-cast v2, Lcom/booklal/booklal/RewardAdActivity;

    iget-object v2, v2, Lcom/booklal/booklal/RewardAdActivity;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/RewardItem;->getAmount()I

    move-result p1

    iget-object v2, v0, LY0/Q;->b:Ljava/lang/Object;

    check-cast v2, Lcom/booklal/booklal/RewardAdActivity;

    iget-wide v3, v2, Lcom/booklal/booklal/RewardAdActivity;->d:J

    int-to-long v5, p1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/booklal/booklal/RewardAdActivity;->d:J

    iget-object v2, v2, Lcom/booklal/booklal/RewardAdActivity;->c:Landroid/widget/TextView;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v5, v6}, Lcom/google/firebase/firestore/FieldValue;->increment(J)Lcom/google/firebase/firestore/FieldValue;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "coins"

    invoke-virtual {v1, v5, v2, v4}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lcom/google/firebase/firestore/FieldValue;->increment(J)Lcom/google/firebase/firestore/FieldValue;

    move-result-object v2

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "rewardAd"

    invoke-virtual {v1, v7, v2, v6}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    iget-object v1, v0, LY0/Q;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/RewardAdActivity;

    iget-object v1, v1, Lcom/booklal/booklal/RewardAdActivity;->f:Lcom/google/firebase/firestore/FirebaseFirestore;

    const-string v2, "Ads"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v1

    const-string v2, "RewardedAds"

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    invoke-static {v4, v5}, Lcom/google/firebase/firestore/FieldValue;->increment(J)Lcom/google/firebase/firestore/FieldValue;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "rewardAwarded"

    invoke-virtual {v1, v5, v2, v4}, Lcom/google/firebase/firestore/DocumentReference;->update(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    const-string v1, "RewardedAdActivity"

    const-string v2, "The user earned the reward."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Coins earned: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v4, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, v0, LY0/Q;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/RewardAdActivity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Lh/i;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Hurray!..\nCoins earned: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x2

    invoke-static {v1, p1, v2}, LA2/q;->f(Landroid/view/View;Ljava/lang/String;I)LA2/q;

    move-result-object p1

    new-instance v1, LY0/l0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LY0/l0;-><init>(I)V

    const-string v2, "CLOSE"

    invoke-virtual {p1, v2, v1}, LA2/q;->g(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, LY0/Q;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/RewardAdActivity;

    invoke-virtual {v1}, Lh/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, LA2/q;->h(I)V

    invoke-virtual {p1}, LA2/q;->i()V

    iget-object p1, v0, LY0/Q;->b:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/RewardAdActivity;

    iget-object p1, p1, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, v0, LY0/Q;->b:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/RewardAdActivity;

    iget-object p1, p1, Lcom/booklal/booklal/RewardAdActivity;->l:Landroid/widget/Button;

    const-string v1, "Loading Ad..."

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, LY0/Q;->b:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/RewardAdActivity;

    iget-object p1, p1, Lcom/booklal/booklal/RewardAdActivity;->p:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, LY0/Q;->b:Ljava/lang/Object;

    check-cast p1, Lcom/booklal/booklal/RewardAdActivity;

    iget-object p1, p1, Lcom/booklal/booklal/RewardAdActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public p(Lj/a;)V
    .locals 3

    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, LR0/i;

    invoke-virtual {v0, p1}, LR0/i;->g(Lj/a;)Lj/f;

    move-result-object p1

    iget-object v0, v0, LR0/i;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object p1, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast p1, Lh/z;

    iget-object v0, p1, Lh/z;->B:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lh/z;->q:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Lh/z;->C:Lh/o;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p1, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lh/z;->D:LM/j0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LM/j0;->b()V

    :cond_1
    iget-object v0, p1, Lh/z;->A:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, LM/a0;->a(Landroid/view/View;)LM/j0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LM/j0;->a(F)V

    iput-object v0, p1, Lh/z;->D:LM/j0;

    new-instance v1, Lh/r;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lh/r;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, LM/j0;->d(LM/k0;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p1, Lh/z;->z:Lj/a;

    iget-object v0, p1, Lh/z;->F:Landroid/view/ViewGroup;

    sget-object v1, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, LM/L;->c(Landroid/view/View;)V

    invoke-virtual {p1}, Lh/z;->I()V

    return-void
.end method

.method public q(Lj/a;Lk/m;)Z
    .locals 4

    iget-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, Lh/z;

    iget-object v0, v0, Lh/z;->F:Landroid/view/ViewGroup;

    sget-object v1, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, LM/L;->c(Landroid/view/View;)V

    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, LR0/i;

    invoke-virtual {v0, p1}, LR0/i;->g(Lj/a;)Lj/f;

    move-result-object p1

    iget-object v1, v0, LR0/i;->d:Ljava/lang/Object;

    check-cast v1, Lr/k;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lr/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Menu;

    if-nez v2, :cond_0

    new-instance v2, Lk/C;

    iget-object v3, v0, LR0/i;->b:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3, p2}, Lk/C;-><init>(Landroid/content/Context;Lk/m;)V

    invoke-virtual {v1, p2, v2}, Lr/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p2, v0, LR0/i;->a:Ljava/lang/Object;

    check-cast p2, Landroid/view/ActionMode$Callback;

    invoke-interface {p2, p1, v2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public r(LJ/f;)V
    .locals 4

    iget v0, p1, LJ/f;->b:I

    iget-object v1, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    iget-object v2, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v2, LC4/o;

    if-nez v0, :cond_0

    new-instance v0, LB/h;

    iget-object p1, p1, LJ/f;->a:Landroid/graphics/Typeface;

    const/4 v3, 0x7

    invoke-direct {v0, v3, v2, p1}, LB/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    new-instance p1, LJ/a;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v0, v3}, LJ/a;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public s(Lf1/h;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/c;

    if-nez v1, :cond_0

    new-instance v1, Lf1/c;

    invoke-direct {v1, p1}, Lf1/c;-><init>(Lf1/h;)V

    iput-object v1, v1, Lf1/c;->d:Lf1/c;

    iget-object v2, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v2, Lf1/c;

    iget-object v3, v2, Lf1/c;->d:Lf1/c;

    iput-object v3, v1, Lf1/c;->d:Lf1/c;

    iput-object v2, v1, Lf1/c;->c:Lf1/c;

    iput-object v1, v2, Lf1/c;->d:Lf1/c;

    iget-object v2, v1, Lf1/c;->d:Lf1/c;

    iput-object v1, v2, Lf1/c;->c:Lf1/c;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lf1/h;->a()V

    :goto_0
    iget-object p1, v1, Lf1/c;->b:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v1, Lf1/c;->b:Ljava/util/ArrayList;

    :cond_1
    iget-object p1, v1, Lf1/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 5

    const-string v0, "Removed the wrong lock, expected to remove: "

    const-string v1, "Cannot release a lock that is not held, safeKey: "

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Argument must not be null"

    invoke-static {v2, v3}, LW2/B;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lg1/b;

    iget v3, v2, Lg1/b;->b:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_3

    sub-int/2addr v3, v4

    iput v3, v2, Lg1/b;->b:I

    if-nez v3, :cond_2

    iget-object v1, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg1/b;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast p1, Lg1/c;

    iget-object v0, p1, Lg1/c;->a:Ljava/util/ArrayDeque;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p1, Lg1/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    iget-object p1, p1, Lg1/c;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but actually removed: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", safeKey: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, v2, Lg1/b;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", interestedThreads: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lg1/b;->b:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, LD2/e;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupedLinkedMap( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v1, Lf1/c;

    iget-object v2, v1, Lf1/c;->c:Lf1/c;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lf1/c;->a:Lf1/h;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lf1/c;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_1

    :cond_0
    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "}, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lf1/c;->c:Lf1/c;

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public u()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Lf1/c;

    iget-object v1, v0, Lf1/c;->d:Lf1/c;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, v1, Lf1/c;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-lez v2, :cond_1

    iget-object v3, v1, Lf1/c;->b:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    iget-object v2, v1, Lf1/c;->d:Lf1/c;

    iget-object v3, v1, Lf1/c;->c:Lf1/c;

    iput-object v3, v2, Lf1/c;->c:Lf1/c;

    iget-object v3, v1, Lf1/c;->c:Lf1/c;

    iput-object v2, v3, Lf1/c;->d:Lf1/c;

    iget-object v2, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iget-object v3, v1, Lf1/c;->a:Lf1/h;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Lf1/h;->a()V

    iget-object v1, v1, Lf1/c;->d:Lf1/c;

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public v(Lj3/a;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public w(La/a;)V
    .locals 2

    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/B;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/B;->j(Ljava/lang/Object;)V

    instance-of v0, p1, Landroidx/work/r;

    iget-object v1, p0, LD2/e;->c:Ljava/lang/Object;

    check-cast v1, LV0/j;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/work/r;

    invoke-virtual {v1, p1}, LV0/j;->i(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/work/p;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/work/p;

    iget-object p1, p1, Landroidx/work/p;->b:Ljava/lang/Throwable;

    invoke-virtual {v1, p1}, LV0/j;->j(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method
