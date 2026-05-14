.class final Lcom/google/android/gms/internal/ads/zzagp;
.super Lcom/google/android/gms/internal/ads/zzafu;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzagj;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzagq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzagq;Lcom/google/android/gms/internal/ads/zzagj;Lcom/google/android/gms/internal/ads/zzagj;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzagj;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzb:Lcom/google/android/gms/internal/ads/zzagq;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzafu;-><init>(Lcom/google/android/gms/internal/ads/zzagj;)V

    return-void
.end method


# virtual methods
.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzagh;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagp;->zza:Lcom/google/android/gms/internal/ads/zzagj;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagj;->zzc(J)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object p1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzagh;->zza:Lcom/google/android/gms/internal/ads/zzagk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzagh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzagk;

    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/zzagk;->zzb:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzagp;->zzb:Lcom/google/android/gms/internal/ads/zzagq;

    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zzagk;->zzc:J

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzagq;->zza()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-direct {v1, v2, v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzagk;-><init>(JJ)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzagh;->zzb:Lcom/google/android/gms/internal/ads/zzagk;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzagk;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzagk;->zzb:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzagk;->zzc:J

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzagq;->zza()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-direct {p2, v2, v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzagk;-><init>(JJ)V

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzagh;-><init>(Lcom/google/android/gms/internal/ads/zzagk;Lcom/google/android/gms/internal/ads/zzagk;)V

    return-object v0
.end method
