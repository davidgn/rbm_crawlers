.class final Lcom/google/android/gms/internal/ads/zzfa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfb;

.field private final zzb:I

.field private zzc:I

.field private zzd:Z

.field private zze:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfb;I)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfa;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfa;->zza:Lcom/google/android/gms/internal/ads/zzfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbb;->zzi()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbb;->zzk()Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbb;->zzh()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbb;->zzh()I

    move-result v2

    if-eq v2, v3, :cond_3

    if-eqz v1, :cond_3

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfa;->zzd:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfa;->zzc:I

    if-ne v2, v1, :cond_2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzfa;->zze:J

    sub-long/2addr v5, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfa;->zzb:I

    int-to-long v7, v1

    cmp-long v2, v5, v7

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zze()Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfc;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(II)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzev;->zza(Lcom/google/android/gms/internal/ads/zzfc;)V

    :cond_1
    return-void

    :cond_2
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzfa;->zzd:Z

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzfa;->zze:J

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfa;->zzc:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzg()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzk(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzg()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfa;->zzb:I

    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzi(II)Z

    return-void

    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfa;->zzd:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzg()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzk(I)V

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfa;->zzd:Z

    return-void
.end method
