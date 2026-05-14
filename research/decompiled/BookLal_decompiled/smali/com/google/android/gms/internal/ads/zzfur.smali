.class public final Lcom/google/android/gms/internal/ads/zzfur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuk;


# static fields
.field private static zza:Lcom/google/android/gms/internal/ads/zzfur;


# instance fields
.field private zzb:F

.field private zzc:Lcom/google/android/gms/internal/ads/zzfuf;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfuj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfug;Lcom/google/android/gms/internal/ads/zzfuc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzb:F

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfur;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zza:Lcom/google/android/gms/internal/ads/zzfur;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfuc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfuc;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfug;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfug;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfur;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfur;-><init>(Lcom/google/android/gms/internal/ads/zzfug;Lcom/google/android/gms/internal/ads/zzfuc;)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfur;->zza:Lcom/google/android/gms/internal/ads/zzfur;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zza:Lcom/google/android/gms/internal/ads/zzfur;

    return-object v0
.end method


# virtual methods
.method public final zzb(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfub;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfub;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfuf;

    invoke-direct {v2, v1, p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzfuf;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfub;Lcom/google/android/gms/internal/ads/zzfur;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzc:Lcom/google/android/gms/internal/ads/zzfuf;

    return-void
.end method

.method public final zzc()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfui;->zza()Lcom/google/android/gms/internal/ads/zzfui;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzful;->zzg(Lcom/google/android/gms/internal/ads/zzfuk;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfui;->zza()Lcom/google/android/gms/internal/ads/zzfui;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzful;->zze()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvt;->zzb()Lcom/google/android/gms/internal/ads/zzfvt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfvt;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzc:Lcom/google/android/gms/internal/ads/zzfuf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfuf;->zza()V

    return-void
.end method

.method public final zzd(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvt;->zzb()Lcom/google/android/gms/internal/ads/zzfvt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvt;->zzc()V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvt;->zzb()Lcom/google/android/gms/internal/ads/zzfvt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvt;->zze()V

    return-void
.end method

.method public final zze()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfvt;->zzb()Lcom/google/android/gms/internal/ads/zzfvt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfvt;->zzd()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfui;->zza()Lcom/google/android/gms/internal/ads/zzfui;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzful;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzc:Lcom/google/android/gms/internal/ads/zzfuf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfuf;->zzb()V

    return-void
.end method

.method public final zzf(F)V
    .locals 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzb:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzd:Lcom/google/android/gms/internal/ads/zzfuj;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfuj;->zza()Lcom/google/android/gms/internal/ads/zzfuj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzd:Lcom/google/android/gms/internal/ads/zzfuj;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzd:Lcom/google/android/gms/internal/ads/zzfuj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfuj;->zzf()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzftp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzftp;->zzg()Lcom/google/android/gms/internal/ads/zzfuz;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfuz;->zzo(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzg()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzb:F

    return v0
.end method
