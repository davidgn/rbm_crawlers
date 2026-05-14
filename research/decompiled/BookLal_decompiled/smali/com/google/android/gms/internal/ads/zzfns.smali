.class final Lcom/google/android/gms/internal/ads/zzfns;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final zza:Ljava/lang/Runnable;

.field final zzb:J

.field zzc:Ljava/util/concurrent/ScheduledFuture;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfnt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfnt;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzd:Lcom/google/android/gms/internal/ads/zzfnt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfns;->zza:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzfns;->zzb:J

    return-void
.end method
