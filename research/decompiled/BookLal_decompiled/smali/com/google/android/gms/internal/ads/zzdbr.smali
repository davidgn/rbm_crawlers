.class public final Lcom/google/android/gms/internal/ads/zzdbr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzcco;)Lcom/google/android/gms/internal/ads/zzccs;
    .locals 6

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzfjk;->zzA:Lcom/google/android/gms/internal/ads/zzccp;

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfjk;->zzs:Lcom/google/android/gms/internal/ads/zzfjp;

    if-nez p2, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfjp;->zzb:Ljava/lang/String;

    move-object v4, p2

    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzccn;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzccn;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzccp;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcco;)V

    return-object p2

    :cond_1
    return-object v0
.end method
