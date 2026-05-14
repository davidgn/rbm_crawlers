.class public final LR0/g;
.super LR0/e;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/String;


# instance fields
.field public final g:Landroid/net/ConnectivityManager;

.field public final h:LR0/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NetworkStateTracker"

    invoke-static {v0}, Landroidx/work/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LR0/g;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LW0/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LR0/e;-><init>(Landroid/content/Context;LW0/a;)V

    iget-object p1, p0, LR0/e;->b:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, LR0/g;->g:Landroid/net/ConnectivityManager;

    new-instance p1, LR0/f;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LR0/f;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, LR0/g;->h:LR0/f;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LR0/g;->f()LP0/a;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 6

    const/4 v0, 0x0

    sget-object v1, LR0/g;->i:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v2

    const-string v3, "Registering network callback"

    new-array v4, v0, [Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v3, v4}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v2, p0, LR0/g;->g:Landroid/net/ConnectivityManager;

    iget-object v3, p0, LR0/g;->h:LR0/f;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_0
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v3

    const-string v4, "Received exception while registering network callback"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object v2, v5, v0

    invoke-virtual {v3, v1, v4, v5}, Landroidx/work/n;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final e()V
    .locals 6

    const/4 v0, 0x0

    sget-object v1, LR0/g;->i:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v2

    const-string v3, "Unregistering network callback"

    new-array v4, v0, [Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v3, v4}, Landroidx/work/n;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    iget-object v2, p0, LR0/g;->g:Landroid/net/ConnectivityManager;

    iget-object v3, p0, LR0/g;->h:LR0/f;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_0
    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v3

    const-string v4, "Received exception while unregistering network callback"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object v2, v5, v0

    invoke-virtual {v3, v1, v4, v5}, Landroidx/work/n;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final f()LP0/a;
    .locals 9

    iget-object v0, p0, LR0/g;->g:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    if-eqz v5, :cond_1

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-static {}, Landroidx/work/n;->c()Landroidx/work/n;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Throwable;

    aput-object v5, v7, v2

    sget-object v5, LR0/g;->i:Ljava/lang/String;

    const-string v8, "Unable to validate active network"

    invoke-virtual {v6, v5, v8, v7}, Landroidx/work/n;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-nez v1, :cond_2

    move v2, v3

    :cond_2
    new-instance v1, LP0/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, v1, LP0/a;->a:Z

    iput-boolean v5, v1, LP0/a;->b:Z

    iput-boolean v0, v1, LP0/a;->c:Z

    iput-boolean v2, v1, LP0/a;->d:Z

    return-object v1
.end method
