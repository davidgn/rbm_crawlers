.class public final Lcom/google/android/gms/internal/ads/zzsl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqk;


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Ljava/util/concurrent/ScheduledExecutorService;

.field private static zzc:I


# instance fields
.field private final zzd:Landroid/media/AudioTrack;

.field private final zze:Lcom/google/android/gms/internal/ads/zzqt;

.field private zzf:Lcom/google/android/gms/internal/ads/zzsc;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzss;

.field private final zzh:Z

.field private final zzi:I

.field private final zzj:Lcom/google/android/gms/internal/ads/zzsk;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzee;

.field private zzl:Z

.field private zzm:J

.field private zzn:J

.field private zzo:I

.field private zzp:I

.field private zzq:Z

.field private final zzr:Lcom/google/android/gms/internal/ads/zzsp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsl;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqt;Lcom/google/android/gms/internal/ads/zzsp;Lcom/google/android/gms/internal/ads/zzdo;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:Landroid/media/AudioTrack;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsl;->zze:Lcom/google/android/gms/internal/ads/zzqt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzr:Lcom/google/android/gms/internal/ads/zzsp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzee;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzee;-><init>(Ljava/lang/Thread;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzk:Lcom/google/android/gms/internal/ads/zzee;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzg(Z)V

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzqt;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfk;->zzA(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzh:Z

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzqt;->zzc:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzqt;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfk;->zzD(I)I

    move-result v1

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzi:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzi:I

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzss;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzse;

    const/4 v8, 0x0

    invoke-direct {v2, p0, v8}, Lcom/google/android/gms/internal/ads/zzse;-><init>(Lcom/google/android/gms/internal/ads/zzsl;[B)V

    iget v5, p2, Lcom/google/android/gms/internal/ads/zzqt;->zza:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzi:I

    iget v7, p2, Lcom/google/android/gms/internal/ads/zzqt;->zze:I

    move-object v1, v0

    move-object v3, p4

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzss;-><init>(Lcom/google/android/gms/internal/ads/zzsr;Lcom/google/android/gms/internal/ads/zzdo;Landroid/media/AudioTrack;III)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzg:Lcom/google/android/gms/internal/ads/zzss;

    if-eqz p3, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzsc;

    invoke-direct {p2, p1, p3, v8}, Lcom/google/android/gms/internal/ads/zzsc;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzsp;[B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzf:Lcom/google/android/gms/internal/ads/zzsc;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsl;->zzg()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzsk;

    invoke-direct {p1, p0, v8}, Lcom/google/android/gms/internal/ads/zzsk;-><init>(Lcom/google/android/gms/internal/ads/zzsl;[B)V

    move-object v8, p1

    :cond_2
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzj:Lcom/google/android/gms/internal/ads/zzsk;

    return-void
.end method

.method public static synthetic zzp(Landroid/media/AudioTrack;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzee;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzrw;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzrw;-><init>(Lcom/google/android/gms/internal/ads/zzee;)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzsl;->zza:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    sget p1, Lcom/google/android/gms/internal/ads/zzsl;->zzc:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/google/android/gms/internal/ads/zzsl;->zzc:I

    if-nez p1, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzsl;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsl;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    throw v0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/ads/zzrx;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzrx;-><init>(Lcom/google/android/gms/internal/ads/zzee;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzsl;->zza:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    sget p2, Lcom/google/android/gms/internal/ads/zzsl;->zzc:I

    add-int/lit8 p2, p2, -0x1

    sput p2, Lcom/google/android/gms/internal/ads/zzsl;->zzc:I

    if-nez p2, :cond_5

    sget-object p2, Lcom/google/android/gms/internal/ads/zzsl;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsl;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_4
    throw v0

    :cond_5
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :goto_3
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method private final zzt()J
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzh:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzm:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzi:I

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v4, -0x1

    add-long/2addr v0, v4

    div-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzn:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public final zza()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzg:Lcom/google/android/gms/internal/ads/zzss;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzss;->zzb()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzl:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsl;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    return-void
.end method

.method public final zzb()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzg:Lcom/google/android/gms/internal/ads/zzss;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzss;->zzf()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzl:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsl;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method public final zzc(Ljava/nio/ByteBuffer;IJ)Z
    .locals 3

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzh:Z

    if-nez p3, :cond_0

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzo:I

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzsl;->zze:Lcom/google/android/gms/internal/ads/zzqt;

    iget p4, p4, Lcom/google/android/gms/internal/ads/zzqt;->zza:I

    invoke-static {p4, p1}, Lcom/google/android/gms/internal/ads/zzte;->zzD(ILjava/nio/ByteBuffer;)I

    move-result p4

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzo:I

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsl;->zzt()J

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {p4}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result p4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzp:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzp:I

    if-le p4, v0, :cond_1

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzk:Lcom/google/android/gms/internal/ads/zzee;

    const/4 v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzrv;->zza:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-virtual {p4, v0, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzd(ILcom/google/android/gms/internal/ads/zzdz;)V

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzee;->zze()V

    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_5

    const/4 p2, -0x6

    if-eq p1, p2, :cond_3

    const/16 p2, -0x20

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzr:Lcom/google/android/gms/internal/ads/zzsp;

    if-eqz p2, :cond_4

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzsp;->zza:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzsq;->zzi()Lcom/google/android/gms/internal/ads/zzqf;

    move-result-object p3

    if-eqz p3, :cond_4

    sget-object p3, Lcom/google/android/gms/internal/ads/zzqa;->zza:Lcom/google/android/gms/internal/ads/zzqa;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzsq;->zzh(Lcom/google/android/gms/internal/ads/zzqa;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzsq;->zzi()Lcom/google/android/gms/internal/ads/zzqf;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzqf;->zza(Lcom/google/android/gms/internal/ads/zzqa;)V

    :cond_4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzqj;

    invoke-direct {p2, p1, v2}, Lcom/google/android/gms/internal/ads/zzqj;-><init>(IZ)V

    throw p2

    :cond_5
    if-ne p1, p4, :cond_6

    goto :goto_1

    :cond_6
    move v2, v0

    :goto_1
    if-eqz p3, :cond_7

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzm:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzm:J

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzn:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzo:I

    int-to-long v0, p1

    int-to-long p1, p2

    mul-long/2addr v0, p1

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzn:J

    :cond_8
    :goto_2
    return v2
.end method

.method public final zzd()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzl:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzl:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzg:Lcom/google/android/gms/internal/ads/zzss;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsl;->zzt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzss;->zze(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method

.method public final zze()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzg:Lcom/google/android/gms/internal/ads/zzss;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzss;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsl;->zzg()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzj:Lcom/google/android/gms/internal/ads/zzsk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsk;->zza()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzf:Lcom/google/android/gms/internal/ads/zzsc;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsc;->zzd()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzf:Lcom/google/android/gms/internal/ads/zzsc;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzk:Lcom/google/android/gms/internal/ads/zzee;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfk;->zzc(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzsl;->zza:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/google/android/gms/internal/ads/zzsl;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v4, :cond_3

    const-string v4, "ExoPlayer:AudioTrackReleaseThread"

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfk;->zzg(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/ads/zzsl;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    :goto_0
    sget v4, Lcom/google/android/gms/internal/ads/zzsl;->zzc:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/google/android/gms/internal/ads/zzsl;->zzc:I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzsl;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzry;

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzry;-><init>(Landroid/media/AudioTrack;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzee;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-interface {v4, v5, v1, v2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzf(F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method public final zzg()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:Landroid/media/AudioTrack;

    invoke-static {v0}, LS0/b;->u(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public final zzi()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    return v0
.end method

.method public final zzj()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final zzk()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzg:Lcom/google/android/gms/internal/ads/zzss;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzss;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzg:Lcom/google/android/gms/internal/ads/zzss;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsl;->zzt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzss;->zzd(J)Z

    move-result v0

    return v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzqi;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzk:Lcom/google/android/gms/internal/ads/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzee;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzpy;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpy;->zza()Landroid/media/metrics/LogSessionId;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/e;->e()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/e;->x(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:Landroid/media/AudioTrack;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/e;->q(Landroid/media/AudioTrack;Landroid/media/metrics/LogSessionId;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzo(Landroid/media/AudioDeviceInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void
.end method

.method public final synthetic zzq()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsl;->zzt()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic zzr()Landroid/media/AudioTrack;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzd:Landroid/media/AudioTrack;

    return-object v0
.end method

.method public final synthetic zzs()Lcom/google/android/gms/internal/ads/zzee;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsl;->zzk:Lcom/google/android/gms/internal/ads/zzee;

    return-object v0
.end method
