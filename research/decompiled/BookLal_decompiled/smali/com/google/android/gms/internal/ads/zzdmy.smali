.class public final Lcom/google/android/gms/internal/ads/zzdmy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbw;
.implements Lcom/google/android/gms/internal/ads/zzdji;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcdb;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcde;

.field private final zzd:Landroid/view/View;

.field private zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbha$zza$zza;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfjk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcdb;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcde;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbha$zza$zza;Lcom/google/android/gms/internal/ads/zzfjk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zza:Lcom/google/android/gms/internal/ads/zzcdb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzc:Lcom/google/android/gms/internal/ads/zzcde;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzd:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zza$zza;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzg:Lcom/google/android/gms/internal/ads/zzfjk;

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzcau;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzc:Lcom/google/android/gms/internal/ads/zzcde;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzb:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcde;->zza(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzg:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzfjk;->zzaG:Z

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcde;->zzj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zza:Lcom/google/android/gms/internal/ads/zzcdb;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcdb;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcau;->zzb()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcau;->zzc()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcde;->zzo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, "Remote Exception to get reward item."

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final zzdK()V
    .locals 0

    return-void
.end method

.method public final zzds()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzg:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzaG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zza:Lcom/google/android/gms/internal/ads/zzcdb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdb;->zza(Z)V

    :cond_0
    return-void
.end method

.method public final zzdt()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzg:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzaG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzd:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zze:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzc:Lcom/google/android/gms/internal/ads/zzcde;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zze:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcde;->zzg(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zza:Lcom/google/android/gms/internal/ads/zzcdb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdb;->zza(Z)V

    :cond_1
    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method

.method public final zzg()V
    .locals 0

    return-void
.end method

.method public final zzh()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zza$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbha$zza$zza;->zzk:Lcom/google/android/gms/internal/ads/zzbha$zza$zza;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzg:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzfjk;->zzaG:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzc:Lcom/google/android/gms/internal/ads/zzcde;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zzb:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcde;->zzf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zze:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbha$zza$zza;->zzh:Lcom/google/android/gms/internal/ads/zzbha$zza$zza;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v2, :cond_1

    const-string v0, "/Rewarded"

    goto :goto_0

    :cond_1
    const-string v0, "/Interstitial"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmy;->zze:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method
