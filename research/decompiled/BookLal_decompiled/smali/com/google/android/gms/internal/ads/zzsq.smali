.class public final Lcom/google/android/gms/internal/ads/zzsq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqu;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzsp;

.field private zzc:Lcom/google/android/gms/internal/ads/zzee;

.field private zzd:Lcom/google/android/gms/internal/ads/zzdo;

.field private zze:Lcom/google/android/gms/internal/ads/zzqa;

.field private zzf:Lcom/google/android/gms/internal/ads/zzqf;

.field private zzg:Landroid/os/Looper;

.field private zzh:Landroid/content/Context;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzsu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzso;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzso;->zzd()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsq;->zza:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzso;->zzg()Lcom/google/android/gms/internal/ads/zzsu;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzi:Lcom/google/android/gms/internal/ads/zzsu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzso;->zze()Lcom/google/android/gms/internal/ads/zzqa;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsq;->zze:Lcom/google/android/gms/internal/ads/zzqa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzso;->zzd()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzsp;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzsp;-><init>(Lcom/google/android/gms/internal/ads/zzsq;[B)V

    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzb:Lcom/google/android/gms/internal/ads/zzsp;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdo;->zza:Lcom/google/android/gms/internal/ads/zzdo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzd:Lcom/google/android/gms/internal/ads/zzdo;

    return-void
.end method

.method private final zzj(Lcom/google/android/gms/internal/ads/zzqn;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzf:Lcom/google/android/gms/internal/ads/zzqf;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsq;->zza:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqf;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzsn;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzsn;-><init>(Lcom/google/android/gms/internal/ads/zzsq;)V

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzqn;->zzb:Lcom/google/android/gms/internal/ads/zzd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqn;->zzc:Landroid/media/AudioDeviceInfo;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzqf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzqe;Lcom/google/android/gms/internal/ads/zzd;Landroid/media/AudioDeviceInfo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzf:Lcom/google/android/gms/internal/ads/zzqf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqf;->zzd()Lcom/google/android/gms/internal/ads/zzqa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsq;->zze:Lcom/google/android/gms/internal/ads/zzqa;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzqn;->zzc:Landroid/media/AudioDeviceInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqf;->zzc(Landroid/media/AudioDeviceInfo;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzf:Lcom/google/android/gms/internal/ads/zzqf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqn;->zzb:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzqf;->zzb(Lcom/google/android/gms/internal/ads/zzd;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsq;->zze:Lcom/google/android/gms/internal/ads/zzqa;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private final zzk()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsq;->zza:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzg:Landroid/os/Looper;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzsq;->zzl(Landroid/os/Looper;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsq;->zzl(Landroid/os/Looper;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_3

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzg:Landroid/os/Looper;

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AudioTrackAudioOutputProvider accessed on multiple threads: %s and %s"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzgta;->zzd(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzl(Landroid/os/Looper;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzqn;)Lcom/google/android/gms/internal/ads/zzqp;
    .locals 6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsq;->zzj(Lcom/google/android/gms/internal/ads/zzqn;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzi:Lcom/google/android/gms/internal/ads/zzsu;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzqn;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqn;->zzb:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzsu;->zza(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzd;)Lcom/google/android/gms/internal/ads/zzqh;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzqo;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzqo;-><init>()V

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v4, "audio/raw"

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    iget p1, v1, Lcom/google/android/gms/internal/ads/zzv;->zzI:I

    if-ne p1, v5, :cond_1

    :goto_0
    move v4, v5

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsq;->zze:Lcom/google/android/gms/internal/ads/zzqa;

    invoke-virtual {v3, v1, p1}, Lcom/google/android/gms/internal/ads/zzqa;->zzd(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzd;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzqo;->zzd(I)Lcom/google/android/gms/internal/ads/zzqo;

    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzqh;->zzb:Z

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzqo;->zza(Z)Lcom/google/android/gms/internal/ads/zzqo;

    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzqh;->zzc:Z

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzqo;->zzb(Z)Lcom/google/android/gms/internal/ads/zzqo;

    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzqh;->zzd:Z

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzqo;->zzc(Z)Lcom/google/android/gms/internal/ads/zzqo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqo;->zze()Lcom/google/android/gms/internal/ads/zzqp;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzqn;)Lcom/google/android/gms/internal/ads/zzqt;
    .locals 14

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsq;->zzj(Lcom/google/android/gms/internal/ads/zzqn;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzqn;->zza:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzv;->zzI:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfk;->zzA(I)Z

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgsj;->zza(Z)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfk;->zzB(I)I

    move-result v7

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfk;->zzD(I)I

    move-result v8

    mul-int/2addr v8, v6

    move v10, v3

    goto :goto_0

    :cond_0
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    sget-object v2, Lcom/google/android/gms/internal/ads/zzqh;->zza:Lcom/google/android/gms/internal/ads/zzqh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsq;->zze:Lcom/google/android/gms/internal/ads/zzqa;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzqn;->zzb:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v2, v0, v6}, Lcom/google/android/gms/internal/ads/zzqa;->zzd(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzd;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v2, 0x2

    move v10, v2

    move v8, v4

    move v2, v6

    :goto_0
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzv;->zzj:I

    const-string v6, "audio/vnd.dts.hd;profile=lbr"

    invoke-static {v1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, v4, :cond_1

    const v0, 0xbb800

    :cond_1
    move v13, v0

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzqn;->zzf:I

    if-eq v0, v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v5, v7, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/4 v1, -0x2

    const/4 v6, 0x1

    if-eq v0, v1, :cond_3

    move v1, v6

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    if-ne v8, v4, :cond_4

    goto :goto_2

    :cond_4
    move v6, v8

    :goto_2
    move v8, v0

    move v9, v2

    move v11, v6

    move v12, v5

    invoke-static/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zztg;->zzb(IIIIII)I

    move-result v1

    int-to-double v8, v1

    double-to-int v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    add-int/2addr v0, v4

    div-int/2addr v0, v6

    mul-int/2addr v0, v6

    :goto_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzqs;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzqs;-><init>()V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzqs;->zzb(I)Lcom/google/android/gms/internal/ads/zzqs;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzqs;->zzc(I)Lcom/google/android/gms/internal/ads/zzqs;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzqs;->zza(I)Lcom/google/android/gms/internal/ads/zzqs;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzqs;->zze(I)Lcom/google/android/gms/internal/ads/zzqs;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzqn;->zzd:I

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzqs;->zzg(I)Lcom/google/android/gms/internal/ads/zzqs;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzqn;->zzb:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzqs;->zzf(Lcom/google/android/gms/internal/ads/zzd;)Lcom/google/android/gms/internal/ads/zzqs;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzqs;->zzd(Z)Lcom/google/android/gms/internal/ads/zzqs;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqn;->zze:I

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzqs;->zzh(I)Lcom/google/android/gms/internal/ads/zzqs;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzqt;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzqt;-><init>(Lcom/google/android/gms/internal/ads/zzqs;[B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzql;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to configure passthrough for: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzql;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzqr;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzc:Lcom/google/android/gms/internal/ads/zzee;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzee;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzee;-><init>(Ljava/lang/Thread;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzc:Lcom/google/android/gms/internal/ads/zzee;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzg(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzc:Lcom/google/android/gms/internal/ads/zzee;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzee;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzdo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzd:Lcom/google/android/gms/internal/ads/zzdo;

    return-void
.end method

.method public final zze()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzc:Lcom/google/android/gms/internal/ads/zzee;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzee;->zzf()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzf:Lcom/google/android/gms/internal/ads/zzqf;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqf;->zze()V

    :cond_1
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzqt;)Lcom/google/android/gms/internal/ads/zzsl;
    .locals 6

    :try_start_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzqt;->zzg:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzqt;->zzh:I

    const/4 v2, -0x1

    const/16 v3, 0x22

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsq;->zza:Landroid/content/Context;

    if-eqz v2, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzh:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/common/api/a;->b(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v2, v1}, Lcom/google/android/gms/common/api/a;->o(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzh:Landroid/content/Context;

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzh:Landroid/content/Context;

    const/4 v0, 0x0

    :cond_2
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzqt;->zzb:I

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzqt;->zzc:I

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzqt;->zza:I

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzqt;->zzf:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzd;->zza()Landroid/media/AudioAttributes;

    move-result-object v2

    new-instance v5, Landroid/media/AudioTrack$Builder;

    invoke-direct {v5}, Landroid/media/AudioTrack$Builder;-><init>()V

    invoke-virtual {v5, v2}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    iget v5, p1, Lcom/google/android/gms/internal/ads/zzqt;->zze:I

    invoke-virtual {v1, v5}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v1, v5, :cond_3

    invoke-static {v0}, LS0/b;->m(Landroid/media/AudioTrack$Builder;)V

    :cond_3
    if-lt v1, v3, :cond_4

    if-eqz v4, :cond_4

    invoke-static {v0, v4}, Lcom/google/android/gms/common/api/a;->y(Landroid/media/AudioTrack$Builder;Landroid/content/Context;)V

    :cond_4
    invoke-virtual {v0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzb:Lcom/google/android/gms/internal/ads/zzsp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzsl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzd:Lcom/google/android/gms/internal/ads/zzdo;

    invoke-direct {v2, v0, p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzsl;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqt;Lcom/google/android/gms/internal/ads/zzsp;Lcom/google/android/gms/internal/ads/zzdo;)V

    return-object v2

    :cond_5
    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzqq;-><init>()V

    throw p1

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzqq;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzqa;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsq;->zzk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsq;->zze:Lcom/google/android/gms/internal/ads/zzqa;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzqa;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsq;->zze:Lcom/google/android/gms/internal/ads/zzqa;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzc:Lcom/google/android/gms/internal/ads/zzee;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzsm;->zza:Lcom/google/android/gms/internal/ads/zzsm;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzd(ILcom/google/android/gms/internal/ads/zzdz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzee;->zze()V

    :cond_0
    return-void
.end method

.method public final synthetic zzh(Lcom/google/android/gms/internal/ads/zzqa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsq;->zze:Lcom/google/android/gms/internal/ads/zzqa;

    return-void
.end method

.method public final synthetic zzi()Lcom/google/android/gms/internal/ads/zzqf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsq;->zzf:Lcom/google/android/gms/internal/ads/zzqf;

    return-object v0
.end method
