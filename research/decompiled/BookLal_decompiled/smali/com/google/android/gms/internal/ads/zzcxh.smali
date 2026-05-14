.class final Lcom/google/android/gms/internal/ads/zzcxh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzhas;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcxn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcxn;Lcom/google/android/gms/internal/ads/zzhas;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxh;->zza:Lcom/google/android/gms/internal/ads/zzhas;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxh;->zzb:Lcom/google/android/gms/internal/ads/zzcxn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxh;->zza:Lcom/google/android/gms/internal/ads/zzhas;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhas;->zza(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxh;->zzb:Lcom/google/android/gms/internal/ads/zzcxn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxn;->zzf()V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcxg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxg;->zza:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxh;->zza:Lcom/google/android/gms/internal/ads/zzhas;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxh;->zzb:Lcom/google/android/gms/internal/ads/zzcxn;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcxn;->zze(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhas;)V

    return-void
.end method
