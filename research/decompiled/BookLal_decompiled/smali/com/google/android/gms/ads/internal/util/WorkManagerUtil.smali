.class public Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;
.super Lcom/google/android/gms/ads/internal/util/zzbn;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzbn;-><init>()V

    return-void
.end method

.method private static zzb(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ly3/c;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ly3/c;-><init>(I)V

    new-instance v1, Landroidx/work/b;

    invoke-direct {v1, v0}, Landroidx/work/b;-><init>(Ly3/c;)V

    invoke-static {p0, v1}, LL0/l;->J(Landroid/content/Context;Landroidx/work/b;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/internal/offline/buffering/zza;

    const-string v1, ""

    invoke-direct {v0, p2, p3, v1}, Lcom/google/android/gms/ads/internal/offline/buffering/zza;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/offline/buffering/zza;)Z

    move-result p1

    return p1
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->zzb(Landroid/content/Context;)V

    :try_start_0
    invoke-static {p1}, LL0/l;->I(Landroid/content/Context;)LL0/l;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, LU0/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LU0/b;-><init>(LL0/l;I)V

    iget-object v1, p1, LL0/l;->e:LJ2/e;

    invoke-virtual {v1, v0}, LJ2/e;->o(Ljava/lang/Runnable;)V

    new-instance v0, Landroidx/work/e;

    invoke-direct {v0}, Landroidx/work/e;-><init>()V

    new-instance v1, Landroidx/work/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroidx/work/c;->a:I

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroidx/work/c;->f:J

    iput-wide v2, v1, Landroidx/work/c;->g:J

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v1, Landroidx/work/c;->b:Z

    iput-boolean v4, v1, Landroidx/work/c;->c:Z

    const/4 v5, 0x2

    iput v5, v1, Landroidx/work/c;->a:I

    iput-boolean v4, v1, Landroidx/work/c;->d:Z

    iput-boolean v4, v1, Landroidx/work/c;->e:Z

    iput-object v0, v1, Landroidx/work/c;->h:Landroidx/work/e;

    iput-wide v2, v1, Landroidx/work/c;->f:J

    iput-wide v2, v1, Landroidx/work/c;->g:J

    new-instance v0, LJ2/e;

    const-class v2, Lcom/google/android/gms/ads/internal/offline/buffering/OfflinePingSender;

    invoke-direct {v0, v2}, LJ2/e;-><init>(Ljava/lang/Class;)V

    iget-object v2, v0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v2, LT0/i;

    iput-object v1, v2, LT0/i;->j:Landroidx/work/c;

    iget-object v1, v0, LJ2/e;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashSet;

    const-string v2, "offline_ping_sender_work"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, LJ2/e;->k()Landroidx/work/o;

    move-result-object v0

    invoke-virtual {p1, v0}, LL4/d;->l(Landroidx/work/o;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to instantiate WorkManager."

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/ads/internal/offline/buffering/zza;)Z
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->zzb(Landroid/content/Context;)V

    new-instance v0, Landroidx/work/e;

    invoke-direct {v0}, Landroidx/work/e;-><init>()V

    new-instance v1, Landroidx/work/c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroidx/work/c;->a:I

    const-wide/16 v3, -0x1

    iput-wide v3, v1, Landroidx/work/c;->f:J

    iput-wide v3, v1, Landroidx/work/c;->g:J

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    iput-boolean v5, v1, Landroidx/work/c;->b:Z

    iput-boolean v5, v1, Landroidx/work/c;->c:Z

    const/4 v6, 0x2

    iput v6, v1, Landroidx/work/c;->a:I

    iput-boolean v5, v1, Landroidx/work/c;->d:Z

    iput-boolean v5, v1, Landroidx/work/c;->e:Z

    iput-object v0, v1, Landroidx/work/c;->h:Landroidx/work/e;

    iput-wide v3, v1, Landroidx/work/c;->f:J

    iput-wide v3, v1, Landroidx/work/c;->g:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p2, Lcom/google/android/gms/ads/internal/offline/buffering/zza;->zza:Ljava/lang/String;

    const-string v4, "uri"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/android/gms/ads/internal/offline/buffering/zza;->zzb:Ljava/lang/String;

    const-string v4, "gws_query_id"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/offline/buffering/zza;->zzc:Ljava/lang/String;

    const-string v3, "image_url"

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroidx/work/g;

    invoke-direct {p2, v0}, Landroidx/work/g;-><init>(Ljava/util/HashMap;)V

    invoke-static {p2}, Landroidx/work/g;->c(Landroidx/work/g;)[B

    new-instance v0, LJ2/e;

    const-class v3, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;

    invoke-direct {v0, v3}, LJ2/e;-><init>(Ljava/lang/Class;)V

    iget-object v3, v0, LJ2/e;->c:Ljava/lang/Object;

    check-cast v3, LT0/i;

    iput-object v1, v3, LT0/i;->j:Landroidx/work/c;

    iput-object p2, v3, LT0/i;->e:Landroidx/work/g;

    iget-object p2, v0, LJ2/e;->d:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashSet;

    const-string v1, "offline_notification_work"

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, LJ2/e;->k()Landroidx/work/o;

    move-result-object p2

    :try_start_0
    invoke-static {p1}, LL0/l;->I(Landroid/content/Context;)LL0/l;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p2}, LL4/d;->l(Landroidx/work/o;)V

    return v2

    :catch_0
    move-exception p1

    const-string p2, "Failed to instantiate WorkManager."

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v5
.end method
