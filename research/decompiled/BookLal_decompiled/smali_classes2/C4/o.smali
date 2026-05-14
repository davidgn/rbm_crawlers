.class public final LC4/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/b;
.implements LK0/o;
.implements Lz3/j;
.implements LM/d;
.implements LD0/j;
.implements Lcom/google/firebase/database/ValueEventListener;
.implements LC4/j;
.implements LF1/b;
.implements Lz1/d;
.implements Li1/r;
.implements Li1/a;
.implements Lb1/c;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, LC4/o;->a:I

    sparse-switch p1, :sswitch_data_0

    .line 13
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 14
    const-string v0, "timeUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, LG4/l;

    .line 16
    sget-object v1, LF4/c;->h:LF4/c;

    .line 17
    invoke-direct {v0, v1, p1}, LG4/l;-><init>(LF4/c;Ljava/util/concurrent/TimeUnit;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    return-void

    .line 20
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance p1, Li1/n;

    const-wide/16 v0, 0x1f4

    .line 22
    invoke-direct {p1, v0, v1}, Ly1/h;-><init>(J)V

    .line 23
    iput-object p1, p0, LC4/o;->b:Ljava/lang/Object;

    return-void

    .line 24
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance p1, Li1/A;

    const/4 v0, 0x7

    .line 26
    invoke-direct {p1, v0}, Li1/A;-><init>(I)V

    .line 27
    iput-object p1, p0, LC4/o;->b:Ljava/lang/Object;

    return-void

    .line 28
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, LC4/o;->b:Ljava/lang/Object;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x1b -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    iput p1, p0, LC4/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LD4/b;)V
    .locals 9

    const/4 v0, 0x2

    iput v0, p0, LC4/o;->a:I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 34
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    const/4 v2, 0x0

    move-object v1, v0

    move-object v8, p1

    .line 36
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, LC4/o;->a:I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1, p2}, LM/c;->n(Landroid/content/ClipData;I)Landroid/view/ContentInfo$Builder;

    move-result-object p1

    iput-object p1, p0, LC4/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/16 v0, 0x19

    iput v0, p0, LC4/o;->a:I

    .line 3
    sget-object v0, Lh3/F;->a:Ljava/lang/StringBuilder;

    .line 4
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Landroid/app/ActivityManager;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p1

    :goto_0
    const-wide/32 v0, 0x100000

    int-to-long v2, p1

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x7

    .line 8
    div-long/2addr v2, v0

    long-to-int p1, v2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lh3/m;

    .line 11
    invoke-direct {v0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 12
    iput-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, LC4/o;->a:I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, LD2/e;

    invoke-direct {v0, p1}, LD2/e;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p2, p0, LC4/o;->a:I

    iput-object p1, p0, LC4/o;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final j(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    return-void
.end method

.method private final o(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    return-void
.end method

.method private final p(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(LB3/b;)V
    .locals 1

    iget v0, p0, LC4/o;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, LL3/b;

    invoke-static {v0, p1}, LF3/a;->g(Ljava/util/concurrent/atomic/AtomicReference;LB3/b;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, LJ2/e;

    iget-object v0, v0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v0, LB3/c;

    invoke-virtual {v0, p1}, LB3/c;->e(LB3/b;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public b()Ljava/lang/Object;
    .locals 9

    new-instance v8, Le1/r;

    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, LR1/l;

    iget-object v1, v0, LR1/l;->a:Ljava/lang/Object;

    check-cast v1, Lh1/c;

    iget-object v2, v0, LR1/l;->e:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Le1/n;

    iget-object v2, v0, LR1/l;->f:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Le1/n;

    iget-object v2, v0, LR1/l;->b:Ljava/lang/Object;

    check-cast v2, Lh1/c;

    iget-object v3, v0, LR1/l;->c:Ljava/lang/Object;

    check-cast v3, Lh1/c;

    iget-object v4, v0, LR1/l;->d:Ljava/lang/Object;

    check-cast v4, Lh1/c;

    iget-object v0, v0, LR1/l;->g:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, LJ2/e;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Le1/r;-><init>(Lh1/c;Lh1/c;Lh1/c;Lh1/c;Le1/n;Le1/n;LJ2/e;)V

    return-object v8
.end method

.method public build()LM/g;
    .locals 3

    new-instance v0, LM/g;

    new-instance v1, LK0/j;

    iget-object v2, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v2, Landroid/view/ContentInfo$Builder;

    invoke-static {v2}, LM/c;->o(Landroid/view/ContentInfo$Builder;)Landroid/view/ContentInfo;

    move-result-object v2

    invoke-direct {v1, v2}, LK0/j;-><init>(Landroid/view/ContentInfo;)V

    invoke-direct {v0, v1}, LM/g;-><init>(LM/f;)V

    return-object v0
.end method

.method public c(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo$Builder;

    invoke-static {v0, p1}, LM/c;->z(Landroid/view/ContentInfo$Builder;Landroid/net/Uri;)V

    return-void
.end method

.method public createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;
    .locals 1

    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {v0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->createWebView(Landroid/webkit/WebView;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p1

    const-class v0, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    invoke-static {v0, p1}, LS4/b;->g(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    return-object p1
.end method

.method public d(I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v1, LY0/S;

    iget-object v2, v1, LY0/S;->d:Lh/i;

    check-cast v2, Lcom/booklal/booklal/ShowBookDetailsActivity;

    const-class v3, Lcom/booklal/booklal/ShowFullBookImage;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "bookPos"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, v1, LY0/S;->d:Lh/i;

    check-cast p1, Lcom/booklal/booklal/ShowBookDetailsActivity;

    iget-object p1, p1, Lcom/booklal/booklal/ShowBookDetailsActivity;->d:Ljava/lang/String;

    const-string v2, "bookKey"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, v1, LY0/S;->d:Lh/i;

    check-cast p1, Lcom/booklal/booklal/ShowBookDetailsActivity;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo$Builder;

    invoke-static {v0, p1}, LM/c;->y(Landroid/view/ContentInfo$Builder;I)V

    return-void
.end method

.method public f()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getSupportedFeatures()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/content/res/AssetManager;Ljava/lang/String;)Lc1/e;
    .locals 2

    new-instance v0, Lc1/k;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lc1/k;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getProfileStore()Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;
    .locals 2

    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getProfileStore()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    const-class v1, Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;

    invoke-static {v1, v0}, LS4/b;->g(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/ProfileStoreBoundaryInterface;

    return-object v0
.end method

.method public getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;
    .locals 2

    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getStatics()Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    const-class v1, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    invoke-static {v1, v0}, LS4/b;->g(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    return-object v0
.end method

.method public h(Li1/w;)Li1/q;
    .locals 2

    iget p1, p0, LC4/o;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Li1/d;

    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, Li1/A;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Li1/d;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Li1/c;

    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, p0}, Li1/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public i()V
    .locals 3

    iget v0, p0, LC4/o;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    iget-object v1, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v1, Lcom/booklal/booklal/SellingItems;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/booklal/booklal/SellingItems;->j()V

    :cond_0
    iget-object v0, v1, Lcom/booklal/booklal/SellingItems;->M:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/CategoryBookListingActivity;

    iget-object v1, v0, Lcom/booklal/booklal/CategoryBookListingActivity;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/booklal/booklal/CategoryBookListingActivity;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/booklal/booklal/CategoryBookListingActivity;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/booklal/booklal/CategoryBookListingActivity;->r:Ljava/lang/Double;

    iget-object v1, v0, Lcom/booklal/booklal/CategoryBookListingActivity;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/booklal/booklal/CategoryBookListingActivity;->s:Ljava/lang/Double;

    iget-object v1, v0, Lcom/booklal/booklal/CategoryBookListingActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/booklal/booklal/CategoryBookListingActivity;->j(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/booklal/booklal/CategoryBookListingActivity;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/booklal/booklal/CategoryBookListingActivity;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/booklal/booklal/CategoryBookListingActivity;->s:Ljava/lang/Double;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/booklal/booklal/CategoryBookListingActivity;->r:Ljava/lang/Double;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/booklal/booklal/CategoryBookListingActivity;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/booklal/booklal/CategoryBookListingActivity;->j(Ljava/util/ArrayList;)V

    :cond_3
    :goto_0
    iget-object v0, v0, Lcom/booklal/booklal/CategoryBookListingActivity;->V:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public k(Ljava/io/IOException;)V
    .locals 1

    new-instance p1, LY0/n0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, LY0/n0;-><init>(LC4/o;I)V

    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/MainActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l(LC4/I;)V
    .locals 3

    const/16 v0, 0xc8

    const/4 v1, 0x0

    iget v2, p1, LC4/I;->d:I

    if-gt v0, v2, :cond_0

    const/16 v0, 0x12c

    if-ge v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, Lcom/booklal/booklal/MainActivity;

    if-eqz v1, :cond_2

    iget-object p1, p1, LC4/I;->l:LC4/K;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, LC4/K;->f()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "allowed"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    new-instance v1, Lcom/google/firebase/installations/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/google/firebase/installations/a;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, LY0/n0;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, LY0/n0;-><init>(LC4/o;I)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    new-instance p1, LY0/n0;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, LY0/n0;-><init>(LC4/o;I)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m(Ljava/lang/Object;Ljava/io/File;Lb1/h;)Z
    .locals 5

    check-cast p1, Ljava/io/InputStream;

    const-string p3, "StreamEncoder"

    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, Lf1/f;

    const/high16 v1, 0x10000

    const-class v2, [B

    invoke-virtual {v0, v1, v2}, Lf1/f;->c(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    invoke-virtual {v4, v1, v2, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v3, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    invoke-virtual {v0, v1}, Lf1/f;->g(Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    :goto_1
    const/4 p2, 0x3

    :try_start_3
    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Failed to encode data onto the OutputStream"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    invoke-virtual {v0, v1}, Lf1/f;->g(Ljava/lang/Object;)V

    :goto_2
    return v2

    :goto_3
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_3
    invoke-virtual {v0, v1}, Lf1/f;->g(Ljava/lang/Object;)V

    throw p1
.end method

.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    iget p1, p0, LC4/o;->a:I

    return-void
.end method

.method public onComplete()V
    .locals 1

    iget v0, p0, LC4/o;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, LL3/b;

    iget-object v0, v0, LL3/b;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0}, Lz3/j;->onComplete()V

    return-void

    :pswitch_0
    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, LJ2/e;

    iget-object v0, v0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/b;

    invoke-interface {v0}, Lz3/b;->onComplete()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 5

    iget v0, p0, LC4/o;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "MsgSeen"

    const-string v1, "stringTimeStamp"

    iget-object v2, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v2, LY0/b;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v2, LY0/b;->b:Ljava/lang/Object;

    check-cast v3, LY0/B;

    iget-object v3, v3, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v3, LY0/C;

    iget-object v3, v3, LY0/C;->b:Ljava/lang/String;

    const-string v4, "uid"

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, LY0/b;->b:Ljava/lang/Object;

    check-cast v3, LY0/B;

    iget-object v3, v3, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v3, LY0/C;

    iget-object v3, v3, LY0/C;->e:Landroid/content/Context;

    check-cast v3, Lcom/booklal/booklal/ChatActivity;

    iget-object v3, v3, Lcom/booklal/booklal/ChatActivity;->z:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "phoneNumber"

    const-string v4, "IDK"

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "profileImage"

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, LY0/b;->b:Ljava/lang/Object;

    check-cast v3, LY0/B;

    iget-object v3, v3, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v3, LY0/C;

    iget-object v3, v3, LY0/C;->e:Landroid/content/Context;

    check-cast v3, Lcom/booklal/booklal/ChatActivity;

    iget-object v3, v3, Lcom/booklal/booklal/ChatActivity;->t:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, LY0/b;->b:Ljava/lang/Object;

    check-cast v1, LY0/B;

    iget-object v1, v1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v1, LY0/C;

    iget-object v1, v1, LY0/C;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    iget-object p1, v2, LY0/b;->b:Ljava/lang/Object;

    check-cast p1, LY0/B;

    iget-object p1, p1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast p1, LY0/C;

    iget-object p1, p1, LY0/C;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    goto :goto_0

    :cond_0
    iget-object p1, v2, LY0/b;->b:Ljava/lang/Object;

    check-cast p1, LY0/B;

    iget-object p1, p1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast p1, LY0/C;

    iget-object p1, p1, LY0/C;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    iget-object p1, v2, LY0/b;->b:Ljava/lang/Object;

    check-cast p1, LY0/B;

    iget-object p1, p1, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast p1, LY0/C;

    iget-object p1, p1, LY0/C;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    iget-object v0, v2, LY0/b;->b:Ljava/lang/Object;

    check-cast v0, LY0/B;

    iget-object v0, v0, LY0/B;->d:Landroid/view/View$OnClickListener;

    check-cast v0, LY0/C;

    iget-object v0, v0, LY0/C;->e:Landroid/content/Context;

    check-cast v0, Lcom/booklal/booklal/ChatActivity;

    iget-object v0, v0, Lcom/booklal/booklal/ChatActivity;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast p1, LK0/j;

    iget-object p1, p1, LK0/j;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/database/DatabaseReference;

    const-string v0, "MsgSeen"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :goto_1
    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast p1, LA2/p;

    iget-object p1, p1, LA2/p;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/database/DatabaseReference;

    const-string v0, "MsgSeen"

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget v0, p0, LC4/o;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, LL3/b;

    iget-object v0, v0, LL3/b;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onError(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, LJ2/e;

    iget-object v0, v0, LJ2/e;->b:Ljava/lang/Object;

    check-cast v0, Lz3/b;

    invoke-interface {v0, p1}, Lz3/b;->onError(Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, LL3/b;

    iget-object v0, v0, LL3/b;->b:Ljava/lang/Object;

    check-cast v0, Lz3/j;

    invoke-interface {v0, p1}, Lz3/j;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/ContentInfo$Builder;

    invoke-static {v0, p1}, LM/c;->A(Landroid/view/ContentInfo$Builder;Landroid/os/Bundle;)V

    return-void
.end method
