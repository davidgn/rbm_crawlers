.class final Lcom/google/android/gms/internal/ads/zzey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfb;

.field private final zzb:I

.field private zzc:Ljava/lang/Object;

.field private zzd:I

.field private zze:I

.field private zzf:J

.field private zzg:Z

.field private zzh:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfb;I)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzey;->zza:Lcom/google/android/gms/internal/ads/zzfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzey;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzey;->zza:Lcom/google/android/gms/internal/ads/zzfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbb;->zza()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzey;->zzg:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzg()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzk(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzey;->zzg:Z

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbb;->zzq()Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbf;->zzg()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbb;->zzr()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzbf;->zzf(I)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v6

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbb;->zzy()I

    move-result v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzbb;->zzz()I

    move-result v5

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzbb;->zzu()J

    move-result-wide v6

    if-eqz v3, :cond_3

    const/4 v8, -0x1

    if-ne v4, v8, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzf()Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzfk;->zzp(J)J

    move-result-wide v9

    sub-long/2addr v6, v9

    move v4, v8

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzey;->zzg:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzey;->zzc:Ljava/lang/Object;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzey;->zzd:I

    if-ne v4, v1, :cond_5

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzey;->zze:I

    if-ne v5, v1, :cond_5

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzey;->zzf:J

    cmp-long v1, v6, v10

    if-nez v1, :cond_5

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzey;->zzh:J

    sub-long/2addr v8, v3

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzey;->zzb:I

    int-to-long v3, v1

    cmp-long v3, v8, v3

    if-ltz v3, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zze()Lcom/google/android/gms/internal/ads/zzev;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfc;

    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzfc;-><init>(II)V

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzev;->zza(Lcom/google/android/gms/internal/ads/zzfc;)V

    :cond_4
    return-void

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzey;->zzg:Z

    iput-wide v8, p0, Lcom/google/android/gms/internal/ads/zzey;->zzh:J

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzey;->zzc:Ljava/lang/Object;

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzey;->zzd:I

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzey;->zze:I

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzey;->zzf:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzg()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdy;->zzk(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzg()Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzey;->zzb:I

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdy;->zzi(II)Z

    return-void
.end method
