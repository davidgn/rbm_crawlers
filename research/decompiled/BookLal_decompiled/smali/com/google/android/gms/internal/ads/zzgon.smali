.class public final Lcom/google/android/gms/internal/ads/zzgon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgoe;
.implements Lcom/google/android/gms/internal/ads/zzged;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgph;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhbf;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgcf;

.field private final zze:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzf:LN2/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgph;Lcom/google/android/gms/internal/ads/zzhbf;Lcom/google/android/gms/internal/ads/zzgcf;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgon;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgon;->zzf:LN2/o;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgon;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgon;->zzb:Lcom/google/android/gms/internal/ads/zzgph;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgon;->zzc:Lcom/google/android/gms/internal/ads/zzhbf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgon;->zzd:Lcom/google/android/gms/internal/ads/zzgcf;

    return-void
.end method


# virtual methods
.method public final zza()LN2/o;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgon;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgon;->zzd:Lcom/google/android/gms/internal/ads/zzgcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgcf;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgon;->zzc:Lcom/google/android/gms/internal/ads/zzhbf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgom;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgom;-><init>(Lcom/google/android/gms/internal/ads/zzgon;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzhbf;->zza(Ljava/lang/Runnable;)LN2/o;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhav;->zzb()LN2/o;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/util/Map;)V
    .locals 2

    const-string v0, "gs"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgon;->zzf:LN2/o;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzc(Ljava/util/Map;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    const-string p2, "gs"

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzgon;->zzf:LN2/o;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzd(Ljava/util/Map;)V
    .locals 2

    const-string v0, "gs"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgon;->zzf:LN2/o;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic zze()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgol;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgol;-><init>(Lcom/google/android/gms/internal/ads/zzgon;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgon;->zzc:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzhbf;->zzc(Ljava/util/concurrent/Callable;)LN2/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgon;->zzb:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v2, 0x35

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zze(ILN2/o;)LN2/o;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgon;->zzf:LN2/o;

    return-void
.end method

.method public final synthetic zzf()Lcom/google/android/gms/internal/ads/zzaxw;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgon;->zza:Landroid/content/Context;

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfwo;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaxw;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
