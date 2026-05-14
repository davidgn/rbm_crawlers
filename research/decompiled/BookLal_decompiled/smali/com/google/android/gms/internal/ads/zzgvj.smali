.class public final Lcom/google/android/gms/internal/ads/zzgvj;
.super Lcom/google/android/gms/internal/ads/zzgvg;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgvg;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgvg;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvh;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgvg;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvg;

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvj;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgvg;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvg;

    return-object p0
.end method

.method public final varargs zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvj;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgvg;->zzb([Ljava/lang/Object;I)V

    return-object p0
.end method

.method public final zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgvj;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgvg;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgvh;

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzgvm;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgvg;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvg;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgvg;->zzb:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzt([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v0

    return-object v0
.end method
