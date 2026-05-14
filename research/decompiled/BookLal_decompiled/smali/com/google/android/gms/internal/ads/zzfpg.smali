.class final Lcom/google/android/gms/internal/ads/zzfpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfpj;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfoz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzfoz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpg;->zza:Lcom/google/android/gms/internal/ads/zzfpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpg;->zzb:Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpg;->zzb:Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoz;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfoz;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoz;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoz;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpg;->zza:Lcom/google/android/gms/internal/ads/zzfpj;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfpj;->zza(Lcom/google/android/gms/internal/ads/zzfoz;)Lcom/google/android/gms/internal/ads/zzfpj;

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
