.class final Lcom/google/android/gms/internal/ads/zzfst;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzdx;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzftc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzftc;Lcom/google/android/gms/ads/internal/client/zzdx;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfst;->zza:Lcom/google/android/gms/ads/internal/client/zzdx;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzb:Lcom/google/android/gms/internal/ads/zzftc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfst;->zzb:Lcom/google/android/gms/internal/ads/zzftc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfst;->zza:Lcom/google/android/gms/ads/internal/client/zzdx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzftc;->zzG(Lcom/google/android/gms/ads/internal/client/zzdx;)V

    return-void
.end method
