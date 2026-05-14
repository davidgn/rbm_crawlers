.class public final Lcom/google/android/gms/internal/ads/zzpu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzni;
.implements Lcom/google/android/gms/internal/ads/zzpv;


# instance fields
.field private zzA:Z

.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzpw;

.field private final zzd:Landroid/media/metrics/PlaybackSession;

.field private final zze:J

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbe;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbd;

.field private final zzh:Ljava/util/HashMap;

.field private final zzi:Ljava/util/HashMap;

.field private zzj:Ljava/lang/String;

.field private zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:Lcom/google/android/gms/internal/ads/zzau;

.field private zzp:Lcom/google/android/gms/internal/ads/zzpt;

.field private zzq:Lcom/google/android/gms/internal/ads/zzpt;

.field private zzr:Lcom/google/android/gms/internal/ads/zzpt;

.field private zzs:Lcom/google/android/gms/internal/ads/zzv;

.field private zzt:Lcom/google/android/gms/internal/ads/zzv;

.field private zzu:Lcom/google/android/gms/internal/ads/zzv;

.field private zzv:Z

.field private zzw:Z

.field private zzx:I

.field private zzy:I

.field private zzz:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzd:Landroid/media/metrics/PlaybackSession;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdh;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbe;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbe;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzf:Lcom/google/android/gms/internal/ads/zzbe;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzg:Lcom/google/android/gms/internal/ads/zzbd;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzi:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzh:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zze:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzm:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzn:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzpn;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzpn;->zza:Lcom/google/android/gms/internal/ads/zzgtb;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzpn;-><init>(Lcom/google/android/gms/internal/ads/zzgtb;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzc:Lcom/google/android/gms/internal/ads/zzpw;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzpw;->zza(Lcom/google/android/gms/internal/ads/zzpv;)V

    return-void
.end method

.method private final zzA(IJLcom/google/android/gms/internal/ads/zzv;I)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/e;->o(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zze:J

    sub-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/d;->g(Landroid/media/metrics/TrackChangeEvent$Builder;J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p4, :cond_b

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/d;->s(Landroid/media/metrics/TrackChangeEvent$Builder;)V

    const/4 p3, 0x2

    if-eq p5, p2, :cond_0

    move p5, p2

    goto :goto_0

    :cond_0
    move p5, p3

    :goto_0
    invoke-static {p1, p5}, Lcom/google/android/gms/internal/ads/d;->t(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzn:Ljava/lang/String;

    if-eqz p5, :cond_1

    invoke-static {p1, p5}, Lcom/google/android/gms/internal/ads/d;->x(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    :cond_1
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    if-eqz p5, :cond_2

    invoke-static {p1, p5}, Lcom/google/android/gms/internal/ads/d;->A(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    :cond_2
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzk:Ljava/lang/String;

    if-eqz p5, :cond_3

    invoke-static {p1, p5}, Lcom/google/android/gms/internal/ads/d;->C(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    :cond_3
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzj:I

    const/4 v0, -0x1

    if-eq p5, v0, :cond_4

    invoke-static {p1, p5}, Lcom/google/android/gms/internal/ads/d;->w(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_4
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    if-eq p5, v0, :cond_5

    invoke-static {p1, p5}, Lcom/google/android/gms/internal/ads/d;->z(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_5
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    if-eq p5, v0, :cond_6

    invoke-static {p1, p5}, Lcom/google/android/gms/internal/ads/d;->B(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_6
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    if-eq p5, v0, :cond_7

    invoke-static {p1, p5}, Lcom/google/android/gms/internal/ads/d;->D(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_7
    iget p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    if-eq p5, v0, :cond_8

    invoke-static {p1, p5}, Lcom/google/android/gms/internal/ads/d;->o(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    :cond_8
    iget-object p5, p4, Lcom/google/android/gms/internal/ads/zzv;->zzd:Ljava/lang/String;

    if-eqz p5, :cond_a

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {p5, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x0

    aget-object v0, p5, v0

    array-length v1, p5

    if-lt v1, p3, :cond_9

    aget-object p3, p5, p2

    goto :goto_1

    :cond_9
    const/4 p3, 0x0

    :goto_1
    invoke-static {v0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p3

    iget-object p5, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    invoke-static {p1, p5}, Lcom/google/android/gms/internal/ads/d;->p(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p3, :cond_a

    check-cast p3, Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/d;->u(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    :cond_a
    iget p3, p4, Lcom/google/android/gms/internal/ads/zzv;->zzz:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpl-float p4, p3, p4

    if-eqz p4, :cond_c

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/d;->n(Landroid/media/metrics/TrackChangeEvent$Builder;F)V

    goto :goto_2

    :cond_b
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/d;->m(Landroid/media/metrics/TrackChangeEvent$Builder;)V

    :cond_c
    :goto_2
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzA:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/d;->h(Landroid/media/metrics/TrackChangeEvent$Builder;)Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzpq;

    invoke-direct {p3, p0, p1}, Lcom/google/android/gms/internal/ads/zzpq;-><init>(Lcom/google/android/gms/internal/ads/zzpu;Landroid/media/metrics/TrackChangeEvent;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzB(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwt;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzwt;->zza:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzg:Lcom/google/android/gms/internal/ads/zzbd;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzf:Lcom/google/android/gms/internal/ads/zzbe;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v1, p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzbe;->zzd:Lcom/google/android/gms/internal/ads/zzak;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzak;->zzb:Lcom/google/android/gms/internal/ads/zzag;

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzag;->zza:Landroid/net/Uri;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfk;->zzF(Landroid/net/Uri;)I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    :goto_0
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/e;->s(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-wide v4, p2, Lcom/google/android/gms/internal/ads/zzbe;->zzm:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v4, v6

    if-eqz p1, :cond_5

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzbe;->zzk:Z

    if-nez p1, :cond_5

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzbe;->zzi:Z

    if-nez p1, :cond_5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbe;->zzb()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzfk;->zzp(J)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/ads/e;->t(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbe;->zzb()Z

    move-result p1

    if-eq v3, p1, :cond_6

    move v1, v3

    :cond_6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/e;->B(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzA:Z

    :cond_7
    :goto_1
    return-void
.end method

.method private final zzC()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzA:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzz:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/d;->i(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzx:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/d;->q(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzy:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/d;->v(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzh:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzj:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/ads/d;->j(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzi:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzj:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-static {v2, v5, v6}, Lcom/google/android/gms/internal/ads/d;->r(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/d;->y(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/d;->e(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzpr;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzpr;-><init>(Lcom/google/android/gms/internal/ads/zzpu;Landroid/media/metrics/PlaybackMetrics;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzj:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzz:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzx:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzy:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzs:Lcom/google/android/gms/internal/ads/zzv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzt:Lcom/google/android/gms/internal/ads/zzv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzu:Lcom/google/android/gms/internal/ads/zzv;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzA:Z

    return-void
.end method

.method private static zzD(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfk;->zzE(I)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x1b

    return p0

    :pswitch_0
    const/16 p0, 0x1a

    return p0

    :pswitch_1
    const/16 p0, 0x19

    return p0

    :pswitch_2
    const/16 p0, 0x1c

    return p0

    :pswitch_3
    const/16 p0, 0x18

    return p0

    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzpu;
    .locals 2

    const-string v0, "media_metrics"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/d;->a(Ljava/lang/Object;)Landroid/media/metrics/MediaMetricsManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzpu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/d;->f(Landroid/media/metrics/MediaMetricsManager;)Landroid/media/metrics/PlaybackSession;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzpu;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    return-object v1
.end method

.method private final zzw(Lcom/google/android/gms/internal/ads/zzpt;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzc:Lcom/google/android/gms/internal/ads/zzpw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpt;->zzc:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpw;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzx(JLcom/google/android/gms/internal/ads/zzv;I)V
    .locals 6

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzs:Lcom/google/android/gms/internal/ads/zzv;

    invoke-static {p4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzs:Lcom/google/android/gms/internal/ads/zzv;

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :goto_0
    move v5, p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    goto :goto_0

    :goto_1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzs:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzpu;->zzA(IJLcom/google/android/gms/internal/ads/zzv;I)V

    return-void
.end method

.method private final zzy(JLcom/google/android/gms/internal/ads/zzv;I)V
    .locals 6

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzt:Lcom/google/android/gms/internal/ads/zzv;

    invoke-static {p4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzt:Lcom/google/android/gms/internal/ads/zzv;

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :goto_0
    move v5, p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    goto :goto_0

    :goto_1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzt:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzpu;->zzA(IJLcom/google/android/gms/internal/ads/zzv;I)V

    return-void
.end method

.method private final zzz(JLcom/google/android/gms/internal/ads/zzv;I)V
    .locals 6

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzu:Lcom/google/android/gms/internal/ads/zzv;

    invoke-static {p4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzu:Lcom/google/android/gms/internal/ads/zzv;

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :goto_0
    move v5, p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    goto :goto_0

    :goto_1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzu:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzpu;->zzA(IJLcom/google/android/gms/internal/ads/zzv;I)V

    return-void
.end method


# virtual methods
.method public final zzb()Landroid/media/metrics/LogSessionId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzd:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0}, LM/c;->f(Landroid/media/metrics/PlaybackSession;)Landroid/media/metrics/LogSessionId;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzng;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzng;->zzd:Lcom/google/android/gms/internal/ads/zzwt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwt;->zzb()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpu;->zzC()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzj:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/e;->m()Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    invoke-static {p2}, LM/c;->i(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/d;->c(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzng;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzpu;->zzB(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwt;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzng;Ljava/lang/String;Z)V
    .locals 0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzng;->zzd:Lcom/google/android/gms/internal/ads/zzwt;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwt;->zzb()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzj:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpu;->zzC()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzh:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzi:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzde(Lcom/google/android/gms/internal/ads/zzng;Lcom/google/android/gms/internal/ads/zzba;Lcom/google/android/gms/internal/ads/zzba;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzv:Z

    move p4, p1

    :cond_0
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzl:I

    return-void
.end method

.method public final zzdf(Lcom/google/android/gms/internal/ads/zzng;Lcom/google/android/gms/internal/ads/zzwp;)V
    .locals 5

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzng;->zzd:Lcom/google/android/gms/internal/ads/zzwt;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzwp;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzpt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzc:Lcom/google/android/gms/internal/ads/zzpw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzng;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v0}, Lcom/google/android/gms/internal/ads/zzpw;->zzb(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwt;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, v4, p1}, Lcom/google/android/gms/internal/ads/zzpt;-><init>(Lcom/google/android/gms/internal/ads/zzv;ILjava/lang/String;)V

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzwp;->zza:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzr:Lcom/google/android/gms/internal/ads/zzpt;

    return-void

    :cond_2
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzq:Lcom/google/android/gms/internal/ads/zzpt;

    return-void

    :cond_3
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzp:Lcom/google/android/gms/internal/ads/zzpt;

    return-void
.end method

.method public final zzdg(Lcom/google/android/gms/internal/ads/zzng;IJJ)V
    .locals 6

    iget-object p5, p1, Lcom/google/android/gms/internal/ads/zzng;->zzd:Lcom/google/android/gms/internal/ads/zzwt;

    if-eqz p5, :cond_2

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzc:Lcom/google/android/gms/internal/ads/zzpw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzng;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    invoke-interface {p6, p1, p5}, Lcom/google/android/gms/internal/ads/zzpw;->zzb(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwt;)Ljava/lang/String;

    move-result-object p1

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzi:Ljava/util/HashMap;

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzh:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    if-nez p6, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    add-long/2addr v4, p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p5, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    int-to-long p2, p2

    add-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final zzdh(Lcom/google/android/gms/internal/ads/zzng;Lcom/google/android/gms/internal/ads/zziu;)V
    .locals 1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzx:I

    iget v0, p2, Lcom/google/android/gms/internal/ads/zziu;->zzg:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzx:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzy:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zziu;->zze:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzy:I

    return-void
.end method

.method public final zzdi(Lcom/google/android/gms/internal/ads/zzbb;Lcom/google/android/gms/internal/ads/zznh;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zznh;->zzc()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_11

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zznh;->zzc()I

    move-result v5

    const/16 v6, 0xb

    if-ge v4, v5, :cond_3

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zznh;->zzd(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zznh;->zza(I)Lcom/google/android/gms/internal/ads/zzng;

    move-result-object v7

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzc:Lcom/google/android/gms/internal/ads/zzpw;

    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/ads/zzpw;->zzd(Lcom/google/android/gms/internal/ads/zzng;)V

    goto :goto_1

    :cond_1
    if-ne v5, v6, :cond_2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzc:Lcom/google/android/gms/internal/ads/zzpw;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzl:I

    invoke-interface {v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzpw;->zze(Lcom/google/android/gms/internal/ads/zzng;I)V

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzc:Lcom/google/android/gms/internal/ads/zzpw;

    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/ads/zzpw;->zzc(Lcom/google/android/gms/internal/ads/zzng;)V

    :goto_1
    add-int/2addr v4, v2

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zznh;->zzb(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zznh;->zza(I)Lcom/google/android/gms/internal/ads/zzng;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v8, :cond_4

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzng;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzng;->zzd:Lcom/google/android/gms/internal/ads/zzwt;

    invoke-direct {v0, v8, v7}, Lcom/google/android/gms/internal/ads/zzpu;->zzB(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwt;)V

    :cond_4
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zznh;->zzb(I)Z

    move-result v8

    const/4 v10, 0x3

    const/4 v11, 0x0

    if-eqz v8, :cond_c

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v8, :cond_c

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzp()Lcom/google/android/gms/internal/ads/zzbn;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbn;->zza()Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    move v13, v3

    :goto_2
    if-ge v13, v12, :cond_7

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzbm;

    move v15, v3

    :goto_3
    iget v6, v14, Lcom/google/android/gms/internal/ads/zzbm;->zza:I

    add-int/lit8 v16, v13, 0x1

    if-ge v15, v6, :cond_6

    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzbm;->zzc(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzbm;->zza(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzv;->zzs:Lcom/google/android/gms/internal/ads/zzq;

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    add-int/2addr v15, v2

    goto :goto_3

    :cond_6
    move/from16 v13, v16

    const/16 v6, 0xb

    goto :goto_2

    :cond_7
    move-object v6, v11

    :goto_4
    if-eqz v6, :cond_c

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzk:Landroid/media/metrics/PlaybackMetrics$Builder;

    sget-object v12, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/d;->d(Ljava/lang/Object;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object v8

    move v12, v3

    :goto_5
    iget v13, v6, Lcom/google/android/gms/internal/ads/zzq;->zzb:I

    if-ge v12, v13, :cond_b

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/zzq;->zza(I)Lcom/google/android/gms/internal/ads/zzp;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzp;->zza:Ljava/util/UUID;

    sget-object v14, Lcom/google/android/gms/internal/ads/zzg;->zzd:Ljava/util/UUID;

    invoke-virtual {v13, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move v6, v10

    goto :goto_6

    :cond_8
    sget-object v14, Lcom/google/android/gms/internal/ads/zzg;->zze:Ljava/util/UUID;

    invoke-virtual {v13, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    move v6, v7

    goto :goto_6

    :cond_9
    sget-object v14, Lcom/google/android/gms/internal/ads/zzg;->zzc:Ljava/util/UUID;

    invoke-virtual {v13, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v6, 0x6

    goto :goto_6

    :cond_a
    add-int/2addr v12, v2

    goto :goto_5

    :cond_b
    move v6, v2

    :goto_6
    invoke-static {v8, v6}, Lcom/google/android/gms/internal/ads/e;->C(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    :cond_c
    const/16 v6, 0x3f3

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zznh;->zzb(I)Z

    move-result v6

    if-eqz v6, :cond_d

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzz:I

    add-int/2addr v6, v2

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzz:I

    :cond_d
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzo:Lcom/google/android/gms/internal/ads/zzau;

    const/16 v16, 0x9

    if-nez v6, :cond_e

    goto/16 :goto_d

    :cond_e
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzpu;->zza:Landroid/content/Context;

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzau;->zza:I

    const/16 v12, 0x3e9

    if-ne v9, v12, :cond_10

    const/16 v8, 0x14

    :cond_f
    :goto_7
    move v9, v3

    goto/16 :goto_c

    :cond_10
    move-object v12, v6

    check-cast v12, Lcom/google/android/gms/internal/ads/zzjd;

    iget v13, v12, Lcom/google/android/gms/internal/ads/zzjd;->zzc:I

    if-ne v13, v2, :cond_11

    move v13, v2

    goto :goto_8

    :cond_11
    move v13, v3

    :goto_8
    iget v12, v12, Lcom/google/android/gms/internal/ads/zzjd;->zzg:I

    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v15, v14, Ljava/io/IOException;

    const/16 v17, 0x17

    if-eqz v15, :cond_25

    instance-of v12, v14, Lcom/google/android/gms/internal/ads/zzhz;

    if-eqz v12, :cond_12

    check-cast v14, Lcom/google/android/gms/internal/ads/zzhz;

    iget v8, v14, Lcom/google/android/gms/internal/ads/zzhz;->zzc:I

    move v9, v8

    const/4 v8, 0x5

    goto/16 :goto_c

    :cond_12
    instance-of v12, v14, Lcom/google/android/gms/internal/ads/zzhy;

    if-nez v12, :cond_13

    instance-of v12, v14, Lcom/google/android/gms/internal/ads/zzat;

    if-eqz v12, :cond_14

    :cond_13
    move v9, v3

    const/16 v8, 0xb

    goto/16 :goto_c

    :cond_14
    instance-of v12, v14, Lcom/google/android/gms/internal/ads/zzhx;

    if-nez v12, :cond_20

    instance-of v13, v14, Lcom/google/android/gms/internal/ads/zzih;

    if-eqz v13, :cond_15

    goto/16 :goto_b

    :cond_15
    const/16 v8, 0x3ea

    if-ne v9, v8, :cond_16

    const/16 v8, 0x15

    goto :goto_7

    :cond_16
    instance-of v8, v14, Lcom/google/android/gms/internal/ads/zzto;

    if-eqz v8, :cond_1d

    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v9, v8, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v9, :cond_17

    check-cast v8, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v8}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfk;->zzQ(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzpu;->zzD(I)I

    move-result v9

    :goto_9
    move/from16 v18, v9

    move v9, v8

    move/from16 v8, v18

    goto/16 :goto_c

    :cond_17
    instance-of v9, v8, Landroid/media/MediaDrmResetException;

    if-eqz v9, :cond_18

    const/16 v8, 0x1b

    goto :goto_7

    :cond_18
    instance-of v9, v8, Landroid/media/NotProvisionedException;

    if-eqz v9, :cond_19

    const/16 v8, 0x18

    goto :goto_7

    :cond_19
    instance-of v9, v8, Landroid/media/DeniedByServerException;

    if-eqz v9, :cond_1a

    const/16 v8, 0x1d

    goto :goto_7

    :cond_1a
    instance-of v9, v8, Lcom/google/android/gms/internal/ads/zzty;

    if-eqz v9, :cond_1b

    :goto_a
    move v9, v3

    move/from16 v8, v17

    goto/16 :goto_c

    :cond_1b
    instance-of v8, v8, Lcom/google/android/gms/internal/ads/zztn;

    if-eqz v8, :cond_1c

    const/16 v8, 0x1c

    goto/16 :goto_7

    :cond_1c
    const/16 v8, 0x1e

    goto/16 :goto_7

    :cond_1d
    instance-of v8, v14, Lcom/google/android/gms/internal/ads/zzhu;

    if-eqz v8, :cond_1f

    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    instance-of v8, v8, Ljava/io/FileNotFoundException;

    if-eqz v8, :cond_1f

    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    instance-of v9, v8, Landroid/system/ErrnoException;

    const/16 v12, 0x1f

    if-eqz v9, :cond_1e

    check-cast v8, Landroid/system/ErrnoException;

    iget v8, v8, Landroid/system/ErrnoException;->errno:I

    sget v9, Landroid/system/OsConstants;->EACCES:I

    if-ne v8, v9, :cond_1e

    const/16 v8, 0x20

    goto/16 :goto_7

    :cond_1e
    move v9, v3

    move v8, v12

    goto/16 :goto_c

    :cond_1f
    move v9, v3

    move/from16 v8, v16

    goto/16 :goto_c

    :cond_20
    :goto_b
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzeq;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzeq;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzeq;->zzc()I

    move-result v8

    if-ne v8, v2, :cond_21

    move v9, v3

    move v8, v10

    goto/16 :goto_c

    :cond_21
    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    instance-of v9, v8, Ljava/net/UnknownHostException;

    if-eqz v9, :cond_22

    move v9, v3

    const/4 v8, 0x6

    goto/16 :goto_c

    :cond_22
    instance-of v8, v8, Ljava/net/SocketTimeoutException;

    if-eqz v8, :cond_23

    move v9, v3

    const/4 v8, 0x7

    goto/16 :goto_c

    :cond_23
    if-eqz v12, :cond_24

    check-cast v14, Lcom/google/android/gms/internal/ads/zzhx;

    iget v8, v14, Lcom/google/android/gms/internal/ads/zzhx;->zzb:I

    if-ne v8, v2, :cond_24

    move v9, v3

    const/4 v8, 0x4

    goto/16 :goto_c

    :cond_24
    move v9, v3

    const/16 v8, 0x8

    goto/16 :goto_c

    :cond_25
    if-eqz v13, :cond_26

    const/16 v8, 0x23

    if-eqz v12, :cond_f

    if-ne v12, v2, :cond_26

    goto/16 :goto_7

    :cond_26
    if-eqz v13, :cond_27

    if-ne v12, v10, :cond_27

    const/16 v8, 0xf

    goto/16 :goto_7

    :cond_27
    if-eqz v13, :cond_28

    if-ne v12, v7, :cond_28

    goto/16 :goto_a

    :cond_28
    instance-of v8, v14, Lcom/google/android/gms/internal/ads/zzuy;

    if-eqz v8, :cond_29

    check-cast v14, Lcom/google/android/gms/internal/ads/zzuy;

    iget-object v8, v14, Lcom/google/android/gms/internal/ads/zzuy;->zzd:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfk;->zzQ(Ljava/lang/String;)I

    move-result v8

    move v9, v8

    const/16 v8, 0xd

    goto :goto_c

    :cond_29
    instance-of v8, v14, Lcom/google/android/gms/internal/ads/zzuu;

    const/16 v9, 0xe

    if-eqz v8, :cond_2a

    check-cast v14, Lcom/google/android/gms/internal/ads/zzuu;

    iget v8, v14, Lcom/google/android/gms/internal/ads/zzuu;->zza:I

    goto/16 :goto_9

    :cond_2a
    instance-of v8, v14, Ljava/lang/OutOfMemoryError;

    if-eqz v8, :cond_2b

    move v8, v9

    goto/16 :goto_7

    :cond_2b
    instance-of v8, v14, Lcom/google/android/gms/internal/ads/zzrn;

    if-eqz v8, :cond_2c

    check-cast v14, Lcom/google/android/gms/internal/ads/zzrn;

    const/16 v8, 0x11

    goto/16 :goto_7

    :cond_2c
    instance-of v8, v14, Lcom/google/android/gms/internal/ads/zzrq;

    if-eqz v8, :cond_2d

    check-cast v14, Lcom/google/android/gms/internal/ads/zzrq;

    iget v8, v14, Lcom/google/android/gms/internal/ads/zzrq;->zza:I

    const/16 v9, 0x12

    goto/16 :goto_9

    :cond_2d
    instance-of v8, v14, Landroid/media/MediaCodec$CryptoException;

    if-eqz v8, :cond_2e

    check-cast v14, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v14}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzpu;->zzD(I)I

    move-result v9

    goto/16 :goto_9

    :cond_2e
    const/16 v8, 0x16

    goto/16 :goto_7

    :goto_c
    invoke-static {}, Lcom/google/android/gms/internal/ads/e;->j()Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v12

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzpu;->zze:J

    sub-long v13, v4, v13

    invoke-static {v12, v13, v14}, LM/c;->h(Landroid/media/metrics/PlaybackErrorEvent$Builder;J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v12

    invoke-static {v12, v8}, LM/c;->g(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/d;->b(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/google/android/gms/internal/ads/e;->k(Landroid/media/metrics/PlaybackErrorEvent$Builder;Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/e;->l(Landroid/media/metrics/PlaybackErrorEvent$Builder;)Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzps;

    invoke-direct {v9, v0, v6}, Lcom/google/android/gms/internal/ads/zzps;-><init>(Lcom/google/android/gms/internal/ads/zzpu;Landroid/media/metrics/PlaybackErrorEvent;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzA:Z

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzo:Lcom/google/android/gms/internal/ads/zzau;

    :goto_d
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zznh;->zzb(I)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzp()Lcom/google/android/gms/internal/ads/zzbn;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzbn;->zzb(I)Z

    move-result v8

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzbn;->zzb(I)Z

    move-result v9

    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/zzbn;->zzb(I)Z

    move-result v6

    if-nez v8, :cond_2f

    if-nez v9, :cond_2f

    if-eqz v6, :cond_32

    move v6, v2

    :cond_2f
    if-nez v8, :cond_30

    invoke-direct {v0, v4, v5, v11, v3}, Lcom/google/android/gms/internal/ads/zzpu;->zzx(JLcom/google/android/gms/internal/ads/zzv;I)V

    :cond_30
    if-nez v9, :cond_31

    invoke-direct {v0, v4, v5, v11, v3}, Lcom/google/android/gms/internal/ads/zzpu;->zzy(JLcom/google/android/gms/internal/ads/zzv;I)V

    :cond_31
    if-nez v6, :cond_32

    invoke-direct {v0, v4, v5, v11, v3}, Lcom/google/android/gms/internal/ads/zzpu;->zzz(JLcom/google/android/gms/internal/ads/zzv;I)V

    :cond_32
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzp:Lcom/google/android/gms/internal/ads/zzpt;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzpu;->zzw(Lcom/google/android/gms/internal/ads/zzpt;)Z

    move-result v6

    if-eqz v6, :cond_33

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzp:Lcom/google/android/gms/internal/ads/zzpt;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzpt;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_33

    invoke-direct {v0, v4, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzpu;->zzx(JLcom/google/android/gms/internal/ads/zzv;I)V

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzp:Lcom/google/android/gms/internal/ads/zzpt;

    :cond_33
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzq:Lcom/google/android/gms/internal/ads/zzpt;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzpu;->zzw(Lcom/google/android/gms/internal/ads/zzpt;)Z

    move-result v6

    if-eqz v6, :cond_34

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzq:Lcom/google/android/gms/internal/ads/zzpt;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzpt;->zza:Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {v0, v4, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzpu;->zzy(JLcom/google/android/gms/internal/ads/zzv;I)V

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzq:Lcom/google/android/gms/internal/ads/zzpt;

    :cond_34
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzr:Lcom/google/android/gms/internal/ads/zzpt;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzpu;->zzw(Lcom/google/android/gms/internal/ads/zzpt;)Z

    move-result v6

    if-eqz v6, :cond_35

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzr:Lcom/google/android/gms/internal/ads/zzpt;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzpt;->zza:Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {v0, v4, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzpu;->zzz(JLcom/google/android/gms/internal/ads/zzv;I)V

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzr:Lcom/google/android/gms/internal/ads/zzpt;

    :cond_35
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzpu;->zza:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzeq;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzeq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzeq;->zzc()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    move v12, v2

    goto :goto_e

    :pswitch_1
    const/4 v12, 0x7

    goto :goto_e

    :pswitch_2
    const/16 v12, 0x8

    goto :goto_e

    :pswitch_3
    move v12, v10

    goto :goto_e

    :pswitch_4
    const/4 v12, 0x6

    goto :goto_e

    :pswitch_5
    const/4 v12, 0x5

    goto :goto_e

    :pswitch_6
    const/4 v12, 0x4

    goto :goto_e

    :pswitch_7
    move v12, v7

    goto :goto_e

    :pswitch_8
    move/from16 v12, v16

    goto :goto_e

    :pswitch_9
    move v12, v3

    :goto_e
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzn:I

    if-eq v12, v6, :cond_36

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzn:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/e;->f()Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v6

    invoke-static {v6, v12}, Lcom/google/android/gms/internal/ads/e;->g(Landroid/media/metrics/NetworkEvent$Builder;I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v6

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzpu;->zze:J

    sub-long v8, v4, v8

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/e;->h(Landroid/media/metrics/NetworkEvent$Builder;J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/e;->i(Landroid/media/metrics/NetworkEvent$Builder;)Landroid/media/metrics/NetworkEvent;

    move-result-object v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzpo;

    invoke-direct {v9, v0, v6}, Lcom/google/android/gms/internal/ads/zzpo;-><init>(Lcom/google/android/gms/internal/ads/zzpu;Landroid/media/metrics/NetworkEvent;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_36
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzh()I

    move-result v6

    if-eq v6, v7, :cond_37

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzv:Z

    :cond_37
    move-object/from16 v6, p1

    check-cast v6, Lcom/google/android/gms/internal/ads/zznd;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zznd;->zzI()Lcom/google/android/gms/internal/ads/zzjd;

    move-result-object v6

    const/16 v8, 0xa

    if-nez v6, :cond_38

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzw:Z

    goto :goto_f

    :cond_38
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zznh;->zzb(I)Z

    move-result v3

    if-eqz v3, :cond_39

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzw:Z

    :cond_39
    :goto_f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzh()I

    move-result v3

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzv:Z

    if-eqz v6, :cond_3a

    const/4 v6, 0x5

    goto :goto_10

    :cond_3a
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzw:Z

    if-eqz v6, :cond_3b

    const/16 v6, 0xd

    goto :goto_10

    :cond_3b
    const/4 v6, 0x4

    if-ne v3, v6, :cond_3c

    const/16 v6, 0xb

    goto :goto_10

    :cond_3c
    const/16 v9, 0xc

    if-ne v3, v7, :cond_41

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzm:I

    if-eqz v3, :cond_3d

    if-eq v3, v7, :cond_3d

    if-ne v3, v9, :cond_3e

    :cond_3d
    move v6, v7

    goto :goto_10

    :cond_3e
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzk()Z

    move-result v3

    if-nez v3, :cond_3f

    const/4 v6, 0x7

    goto :goto_10

    :cond_3f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzi()I

    move-result v3

    if-eqz v3, :cond_40

    move v6, v8

    goto :goto_10

    :cond_40
    const/4 v6, 0x6

    goto :goto_10

    :cond_41
    if-ne v3, v10, :cond_44

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzk()Z

    move-result v3

    if-nez v3, :cond_42

    goto :goto_10

    :cond_42
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbb;->zzi()I

    move-result v3

    if-eqz v3, :cond_43

    move/from16 v6, v16

    goto :goto_10

    :cond_43
    move v6, v10

    goto :goto_10

    :cond_44
    if-ne v3, v2, :cond_45

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzm:I

    if-eqz v3, :cond_45

    move v6, v9

    goto :goto_10

    :cond_45
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzm:I

    :goto_10
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzm:I

    if-eq v3, v6, :cond_46

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzm:I

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzA:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/e;->n()Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzm:I

    invoke-static {v2, v3}, LM/c;->j(Landroid/media/metrics/PlaybackStateEvent$Builder;I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzpu;->zze:J

    sub-long/2addr v4, v6

    invoke-static {v2, v4, v5}, LM/c;->k(Landroid/media/metrics/PlaybackStateEvent$Builder;J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v2

    invoke-static {v2}, LM/c;->l(Landroid/media/metrics/PlaybackStateEvent$Builder;)Landroid/media/metrics/PlaybackStateEvent;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzpp;

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/ads/zzpp;-><init>(Lcom/google/android/gms/internal/ads/zzpu;Landroid/media/metrics/PlaybackStateEvent;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_46
    const/16 v2, 0x404

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zznh;->zzb(I)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzpu;->zzc:Lcom/google/android/gms/internal/ads/zzpw;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zznh;->zza(I)Lcom/google/android/gms/internal/ads/zzng;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzpw;->zzg(Lcom/google/android/gms/internal/ads/zzng;)V

    :cond_47
    :goto_11
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzng;Lcom/google/android/gms/internal/ads/zzau;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzo:Lcom/google/android/gms/internal/ads/zzau;

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzng;Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;Ljava/io/IOException;Z)V
    .locals 0

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzng;Lcom/google/android/gms/internal/ads/zzbv;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzp:Lcom/google/android/gms/internal/ads/zzpt;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzpt;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v0

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzbv;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzt;->zzu(I)Lcom/google/android/gms/internal/ads/zzt;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbv;->zzc:I

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzt;->zzv(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzpt;->zzc:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzpt;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzpt;-><init>(Lcom/google/android/gms/internal/ads/zzv;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzp:Lcom/google/android/gms/internal/ads/zzpt;

    :cond_0
    return-void
.end method

.method public final synthetic zzr(Landroid/media/metrics/PlaybackErrorEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzd:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/d;->l(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackErrorEvent;)V

    return-void
.end method

.method public final synthetic zzs(Landroid/media/metrics/NetworkEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzd:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/d;->k(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/NetworkEvent;)V

    return-void
.end method

.method public final synthetic zzt(Landroid/media/metrics/PlaybackStateEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzd:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/e;->v(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackStateEvent;)V

    return-void
.end method

.method public final synthetic zzu(Landroid/media/metrics/TrackChangeEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzd:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/e;->w(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method

.method public final synthetic zzv(Landroid/media/metrics/PlaybackMetrics;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpu;->zzd:Landroid/media/metrics/PlaybackSession;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/e;->u(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackMetrics;)V

    return-void
.end method
