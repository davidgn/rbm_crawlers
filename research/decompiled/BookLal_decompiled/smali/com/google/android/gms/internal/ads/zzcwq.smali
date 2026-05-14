.class public final Lcom/google/android/gms/internal/ads/zzcwq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdex;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdhc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdex;Lcom/google/android/gms/internal/ads/zzdhc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwq;->zza:Lcom/google/android/gms/internal/ads/zzdex;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwq;->zzb:Lcom/google/android/gms/internal/ads/zzdhc;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdex;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwq;->zza:Lcom/google/android/gms/internal/ads/zzdex;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzdjv;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwq;->zzb:Lcom/google/android/gms/internal/ads/zzdhc;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdjv;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcew;->zzh:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdjv;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcwp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcwp;-><init>(Lcom/google/android/gms/internal/ads/zzcwq;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcew;->zzh:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdjv;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzdhc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwq;->zzb:Lcom/google/android/gms/internal/ads/zzdhc;

    return-object v0
.end method
