.class final Lcom/google/android/gms/internal/ads/zzew;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfb;

.field private final zzb:I

.field private zzc:Ljava/lang/Object;

.field private zzd:I

.field private zze:I

.field private zzf:J

.field private zzg:J

.field private zzh:Z

.field private zzi:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfb;I)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzew;->zza:Lcom/google/android/gms/internal/ads/zzfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzew;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zza:Lcom/google/android/gms/internal/ads/zzfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbb;->zzh()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbb;->zzk()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbb;->zzi()I

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbb;->zzq()Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbf;->zzg()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbb;->zzr()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzf(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v7

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbb;->zzy()I

    move-result v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbb;->zzz()I

    move-result v5

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzbb;->zzv()J

    move-result-wide v8

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzbb;->zzu()J

    move-result-wide v6

    sub-long v6, v8, v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzbb;->zzw()J

    move-result-wide v13

    sub-long/2addr v13, v6

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    if-eqz v2, :cond_2

    const/4 v10, -0x1

    if-ne v4, v10, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzf()Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzfk;->zzp(J)J

    move-result-wide v11

    sub-long/2addr v8, v11

    move v4, v10

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzh:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzc:Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzd:I

    if-ne v4, v1, :cond_4

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zze:I

    if-ne v5, v1, :cond_4

    iget-wide v12, p0, Lcom/google/android/gms/internal/ads/zzew;->zzf:J

    cmp-long v1, v8, v12

    if-nez v1, :cond_4

    iget-wide v12, p0, Lcom/google/android/gms/internal/ads/zzew;->zzg:J

    cmp-long v1, v6, v12

    if-nez v1, :cond_4

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzi:J

    sub-long/2addr v10, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzb:I

    int-to-long v4, v1

    cmp-long v2, v10, v4

    if-ltz v2, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zze()Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfc;

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(II)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzev;->zza(Lcom/google/android/gms/internal/ads/zzfc;)V

    :cond_3
    return-void

    :cond_4
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzew;->zzh:Z

    iput-wide v10, p0, Lcom/google/android/gms/internal/ads/zzew;->zzi:J

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzew;->zzc:Ljava/lang/Object;

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzew;->zzd:I

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzew;->zze:I

    iput-wide v8, p0, Lcom/google/android/gms/internal/ads/zzew;->zzf:J

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzew;->zzg:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzg()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzk(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzg()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzb:I

    invoke-interface {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzi(II)Z

    return-void

    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzh:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzg()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzdy;->zzk(I)V

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zzh:Z

    return-void
.end method
