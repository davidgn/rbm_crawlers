.class public final Lcom/google/android/gms/internal/ads/zzcza;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdhr;
.implements Lcom/google/android/gms/internal/ads/zzddk;


# instance fields
.field private final zza:Lcom/google/android/gms/common/util/Clock;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzczc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfkd;

.field private final zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzczc;Lcom/google/android/gms/internal/ads/zzfkd;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcza;->zza:Lcom/google/android/gms/common/util/Clock;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcza;->zzb:Lcom/google/android/gms/internal/ads/zzczc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcza;->zzc:Lcom/google/android/gms/internal/ads/zzfkd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcza;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcza;->zza:Lcom/google/android/gms/common/util/Clock;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcza;->zzb:Lcom/google/android/gms/internal/ads/zzczc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcza;->zzd:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzczc;->zzd(Ljava/lang/String;J)V

    return-void
.end method

.method public final zzg()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcza;->zza:Lcom/google/android/gms/common/util/Clock;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcza;->zzd:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcza;->zzc:Lcom/google/android/gms/internal/ads/zzfkd;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcza;->zzb:Lcom/google/android/gms/internal/ads/zzczc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfkd;->zzg:Ljava/lang/String;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzczc;->zze(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
