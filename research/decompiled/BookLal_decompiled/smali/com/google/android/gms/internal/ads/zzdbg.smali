.class public final Lcom/google/android/gms/internal/ads/zzdbg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfkd;

.field private final zzc:Landroid/os/Bundle;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfjw;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdaz;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzelc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdbf;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzh()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zza:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzi()Lcom/google/android/gms/internal/ads/zzfkd;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zzb:Lcom/google/android/gms/internal/ads/zzfkd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzj()Landroid/os/Bundle;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zzc:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzk()Lcom/google/android/gms/internal/ads/zzfjw;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zzd:Lcom/google/android/gms/internal/ads/zzfjw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzl()Lcom/google/android/gms/internal/ads/zzdaz;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zze:Lcom/google/android/gms/internal/ads/zzdaz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzm()Lcom/google/android/gms/internal/ads/zzelc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zzf:Lcom/google/android/gms/internal/ads/zzelc;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdbf;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdbf;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zza:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbf;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdbf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zzb:Lcom/google/android/gms/internal/ads/zzfkd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzb(Lcom/google/android/gms/internal/ads/zzfkd;)Lcom/google/android/gms/internal/ads/zzdbf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zzc:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzc(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdbf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zze:Lcom/google/android/gms/internal/ads/zzdaz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzd(Lcom/google/android/gms/internal/ads/zzdaz;)Lcom/google/android/gms/internal/ads/zzdbf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zzf:Lcom/google/android/gms/internal/ads/zzelc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzg(Lcom/google/android/gms/internal/ads/zzelc;)Lcom/google/android/gms/internal/ads/zzdbf;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfkd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zzb:Lcom/google/android/gms/internal/ads/zzfkd;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfjw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zzd:Lcom/google/android/gms/internal/ads/zzfjw;

    return-object v0
.end method

.method public final zzd()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zzc:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzdaz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zze:Lcom/google/android/gms/internal/ads/zzdaz;

    return-object v0
.end method

.method public final zzf(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zza:Landroid/content/Context;

    return-object p1
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzelc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zzf:Lcom/google/android/gms/internal/ads/zzelc;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzelc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzelc;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
