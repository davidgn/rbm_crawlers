.class final synthetic Lcom/google/android/gms/internal/ads/zzelf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgsa;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcjz;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfjk;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcub;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeli;Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzcub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzelf;->zza:Lcom/google/android/gms/internal/ads/zzcjz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzelf;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzelf;->zzc:Lcom/google/android/gms/internal/ads/zzcub;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelf;->zza:Lcom/google/android/gms/internal/ads/zzcjz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelf;->zzb:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfjk;->zzM:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzav()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelf;->zzc:Lcom/google/android/gms/internal/ads/zzcub;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzJ()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->onPause()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcub;->zzh()Lcom/google/android/gms/internal/ads/zzcuk;

    move-result-object p1

    return-object p1
.end method
