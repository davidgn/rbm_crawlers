.class final Lcom/google/android/gms/internal/ads/zzfpf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfpj;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfoz;

.field final synthetic zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzfoz;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpf;->zza:Lcom/google/android/gms/internal/ads/zzfpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpf;->zzb:Lcom/google/android/gms/internal/ads/zzfoz;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzfpf;->zzc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpf;->zzb:Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfoz;->zzb()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpf;->zza:Lcom/google/android/gms/internal/ads/zzfpj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoz;->zzj(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfoz;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoz;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfpj;->zza(Lcom/google/android/gms/internal/ads/zzfoz;)Lcom/google/android/gms/internal/ads/zzfpj;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfpf;->zzc:Z

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfpj;->zzh()V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpf;->zzb:Lcom/google/android/gms/internal/ads/zzfoz;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfoz;->zzd(Z)Lcom/google/android/gms/internal/ads/zzfoz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpf;->zza:Lcom/google/android/gms/internal/ads/zzfpj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfpj;->zza(Lcom/google/android/gms/internal/ads/zzfoz;)Lcom/google/android/gms/internal/ads/zzfpj;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfpf;->zzc:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpj;->zzh()V

    :cond_0
    return-void
.end method
