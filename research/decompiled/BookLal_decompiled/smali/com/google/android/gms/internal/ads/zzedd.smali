.class public final Lcom/google/android/gms/internal/ads/zzedd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/zzbzf;

.field zzb:Lcom/google/android/gms/internal/ads/zzbzf;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeda;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdyq;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/zzg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeda;Lcom/google/android/gms/internal/ads/zzdyq;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzd:Lcom/google/android/gms/internal/ads/zzeda;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedd;->zze:Lcom/google/android/gms/internal/ads/zzdyq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzf:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzf:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzP()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzd:Lcom/google/android/gms/internal/ads/zzeda;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeda;->zza()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzedc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzedc;-><init>(Lcom/google/android/gms/internal/ads/zzedd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeda;->zzb(Lcom/google/android/gms/internal/ads/zzark;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzfQ:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzb:Lcom/google/android/gms/internal/ads/zzbzf;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzc:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbzd;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbzf;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzb:Lcom/google/android/gms/internal/ads/zzbzf;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzb:Lcom/google/android/gms/internal/ads/zzbzf;

    const-string v2, "InstallReferrerUnsampled.initializeAndReport"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzf;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedd;->zza:Lcom/google/android/gms/internal/ads/zzbzf;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzc:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbzd;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbzf;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzedd;->zza:Lcom/google/android/gms/internal/ads/zzbzf;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedd;->zza:Lcom/google/android/gms/internal/ads/zzbzf;

    const-string v2, "InstallReferrer.initializeAndReport"

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzf;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic zzb()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzc:Landroid/content/Context;

    return-object v0
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzeda;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzd:Lcom/google/android/gms/internal/ads/zzeda;

    return-object v0
.end method

.method public final synthetic zzd()Lcom/google/android/gms/internal/ads/zzdyq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedd;->zze:Lcom/google/android/gms/internal/ads/zzdyq;

    return-object v0
.end method

.method public final synthetic zze()Lcom/google/android/gms/ads/internal/util/zzg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedd;->zzf:Lcom/google/android/gms/ads/internal/util/zzg;

    return-object v0
.end method
