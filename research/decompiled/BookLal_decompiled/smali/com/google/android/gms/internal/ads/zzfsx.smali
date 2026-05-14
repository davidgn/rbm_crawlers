.class final Lcom/google/android/gms/internal/ads/zzfsx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzftc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzftc;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsx;->zza:Lcom/google/android/gms/internal/ads/zzftc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsx;->zza:Lcom/google/android/gms/internal/ads/zzftc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftc;->zzJ()Lcom/google/android/gms/internal/ads/zzfsg;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftc;->zzJ()Lcom/google/android/gms/internal/ads/zzfsg;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftc;->zzK()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftc;->zzL()Lcom/google/android/gms/internal/ads/zzfsn;

    move-result-object v5

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzftc;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    iget v6, v1, Lcom/google/android/gms/ads/internal/client/zzfp;->zzd:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftc;->zzI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfsg;->zzj(JLcom/google/android/gms/internal/ads/zzfsn;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
