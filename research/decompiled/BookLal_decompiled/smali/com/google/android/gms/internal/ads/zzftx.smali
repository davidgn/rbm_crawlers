.class public final Lcom/google/android/gms/internal/ads/zzftx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzftz;

.field private final zzb:Landroid/webkit/WebView;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfwa;

.field private final zzd:Ljava/util/HashMap;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfun;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzftz;Landroid/webkit/WebView;Z)V
    .locals 2

    const/4 p3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzftx;->zzd:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfun;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfun;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzftx;->zze:Lcom/google/android/gms/internal/ads/zzfun;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvj;->zza()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftx;->zza:Lcom/google/android/gms/internal/ads/zzftz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzftx;->zzb:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzftx;->zzc()Landroid/view/View;

    move-result-object p1

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzftl;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzftl;->zzb(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfwa;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzfwa;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftx;->zzc:Lcom/google/android/gms/internal/ads/zzfwa;

    :goto_1
    const-string p1, "WEB_MESSAGE_LISTENER"

    invoke-static {p1}, LL4/d;->z(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzftx;->zzh()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzftv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzftv;-><init>(Lcom/google/android/gms/internal/ads/zzftx;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzftx;->zzb:Landroid/webkit/WebView;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget v1, LJ0/e;->a:I

    sget-object v1, LK0/m;->c:LK0/b;

    invoke-virtual {v1}, LK0/c;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, LJ0/e;->a(Landroid/webkit/WebView;)LK0/j;

    move-result-object p2

    new-array v1, p3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v1, LK0/j;

    invoke-direct {v1, p1, p3}, LK0/j;-><init>(Ljava/lang/Object;I)V

    new-instance p1, LS4/a;

    invoke-direct {p1, v1}, LS4/a;-><init>(LK0/j;)V

    iget-object p2, p2, LK0/j;->b:Ljava/lang/Object;

    check-cast p2, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    const-string p3, "omidJsSessionService"

    invoke-interface {p2, p3, v0, p1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->addWebMessageListener(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/reflect/InvocationHandler;)V

    return-void

    :cond_2
    invoke-static {}, LK0/m;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "The JavaScriptSessionService cannot be supported in this WebView version."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzftz;Landroid/webkit/WebView;Z)Lcom/google/android/gms/internal/ads/zzftx;
    .locals 1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzftx;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzftx;-><init>(Lcom/google/android/gms/internal/ads/zzftz;Landroid/webkit/WebView;Z)V

    return-object p2
.end method

.method private final zzh()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftx;->zzb:Landroid/webkit/WebView;

    sget v1, LJ0/e;->a:I

    sget-object v1, LK0/m;->c:LK0/b;

    invoke-virtual {v1}, LK0/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, LJ0/e;->a(Landroid/webkit/WebView;)LK0/j;

    move-result-object v0

    iget-object v0, v0, LK0/j;->b:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    const-string v1, "omidJsSessionService"

    invoke-interface {v0, v1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->removeWebMessageListener(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, LK0/m;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzftw;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftx;->zzd:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzftl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzftl;->zzc()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzftu;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzftu;-><init>(Lcom/google/android/gms/internal/ads/zzftx;Lcom/google/android/gms/internal/ads/zzftw;Ljava/util/Timer;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final zzc()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftx;->zzc:Lcom/google/android/gms/internal/ads/zzfwa;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final zzd(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfts;Ljava/lang/String;)V
    .locals 2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzftx;->zzd:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "Ad overlay"

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzftl;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzftl;->zzd(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfts;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzftx;->zze:Lcom/google/android/gms/internal/ads/zzfun;

    invoke-virtual {p3, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfun;->zzb(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfts;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic zze()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzftx;->zzh()V

    return-void
.end method

.method public final synthetic zzf(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzftp;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzftq;->zza:Lcom/google/android/gms/internal/ads/zzftq;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzftt;->zza:Lcom/google/android/gms/internal/ads/zzftt;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfty;->zzb:Lcom/google/android/gms/internal/ads/zzfty;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v3, v4}, Lcom/google/android/gms/internal/ads/zzftm;->zza(Lcom/google/android/gms/internal/ads/zzftq;Lcom/google/android/gms/internal/ads/zzftt;Lcom/google/android/gms/internal/ads/zzfty;Lcom/google/android/gms/internal/ads/zzfty;Z)Lcom/google/android/gms/internal/ads/zzftm;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftx;->zza:Lcom/google/android/gms/internal/ads/zzftz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzftx;->zzb:Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Lcom/google/android/gms/internal/ads/zzftn;->zza(Lcom/google/android/gms/internal/ads/zzftz;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzftn;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzftp;-><init>(Lcom/google/android/gms/internal/ads/zzftm;Lcom/google/android/gms/internal/ads/zzftn;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzftx;->zzd:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzftx;->zzc()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzftp;->zzb(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftx;->zze:Lcom/google/android/gms/internal/ads/zzfun;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfun;->zza()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfum;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfum;->zza()Lcom/google/android/gms/internal/ads/zzfwa;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfum;->zzc()Lcom/google/android/gms/internal/ads/zzfts;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfum;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzftp;->zzd(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfts;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftp;->zza()V

    return-void
.end method

.method public final synthetic zzg(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftx;->zzd:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzftl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzftl;->zzc()V

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
