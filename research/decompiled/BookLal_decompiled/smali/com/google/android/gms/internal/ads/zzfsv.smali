.class final Lcom/google/android/gms/internal/ads/zzfsv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/client/zze;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzftc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzftc;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsv;->zza:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsv;->zzb:Lcom/google/android/gms/internal/ads/zzftc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsv;->zzb:Lcom/google/android/gms/internal/ads/zzftc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsv;->zza:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzftc;->zzF(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
