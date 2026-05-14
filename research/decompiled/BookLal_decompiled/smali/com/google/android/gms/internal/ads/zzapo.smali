.class public final Lcom/google/android/gms/internal/ads/zzapo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapd;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzes;

.field private final zze:Lcom/google/android/gms/internal/ads/zzer;

.field private zzf:Lcom/google/android/gms/internal/ads/zzags;

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/ads/zzv;

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:J

.field private zzn:Z

.field private zzo:I

.field private zzp:I

.field private zzq:I

.field private zzr:Z

.field private zzs:J

.field private zzt:I

.field private zzu:J

.field private zzv:I

.field private zzw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapo;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzb:I

    const-string p1, "video/mp2t"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzc:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    const/16 p2, 0x400

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzd:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object p1

    array-length p3, p1

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzer;-><init>([BI)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapo;->zze:Lcom/google/android/gms/internal/ads/zzer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzm:J

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzer;)I
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzc()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzaee;->zzb(Lcom/google/android/gms/internal/ads/zzer;Z)Lcom/google/android/gms/internal/ads/zzaed;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaed;->zzc:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzw:Ljava/lang/String;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzaed;->zza:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzt:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaed;->zzb:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzv:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzc()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzer;)J
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public final zza()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzi:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzm:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzn:Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzafi;Lcom/google/android/gms/internal/ads/zzaqr;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqr;->zza()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqr;->zzb()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzu(II)Lcom/google/android/gms/internal/ads/zzags;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzf:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaqr;->zzc()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzg:Ljava/lang/String;

    return-void
.end method

.method public final zzc(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzm:J

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzes;)V
    .locals 14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzf:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v0

    if-lez v0, :cond_1e

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzi:I

    const/16 v1, 0x56

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_1b

    const/4 v1, 0x3

    const/16 v5, 0x8

    if-eq v0, v3, :cond_19

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzk:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzj:I

    sub-int/2addr v3, v6

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzapo;->zze:Lcom/google/android/gms/internal/ads/zzer;

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzer;->zza:[B

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzj:I

    invoke-virtual {p1, v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzj:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzj:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzk:I

    if-ne v6, v0, :cond_0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_10

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzn:Z

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v0

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v0

    move v0, v4

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzo:I

    if-nez v0, :cond_f

    if-ne v7, v2, :cond_2

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzapo;->zzg(Lcom/google/android/gms/internal/ads/zzer;)J

    move v7, v2

    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v8

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzp:I

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v9

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v10

    if-nez v9, :cond_d

    if-nez v10, :cond_d

    if-nez v7, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v9

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzapo;->zzf(Lcom/google/android/gms/internal/ads/zzer;)I

    move-result v10

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    add-int/lit8 v9, v10, 0x7

    div-int/2addr v9, v5

    new-array v9, v9, [B

    invoke-virtual {v3, v9, v4, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzl([BII)V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzt;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzt;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    const-string v11, "audio/mp4a-latm"

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzw:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v11, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzv:I

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v11, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzt:I

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzt;->zzG(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzt;->zzq(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzapo;->zza:Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzt;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzb:I

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzt;->zzg(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzh:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzv;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzh:Lcom/google/android/gms/internal/ads/zzv;

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    int-to-long v10, v10

    const-wide/32 v12, 0x3d090000

    div-long/2addr v12, v10

    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzu:J

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzf:Lcom/google/android/gms/internal/ads/zzags;

    invoke-interface {v10, v9}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzapo;->zzg(Lcom/google/android/gms/internal/ads/zzer;)J

    move-result-wide v9

    long-to-int v9, v9

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzapo;->zzf(Lcom/google/android/gms/internal/ads/zzer;)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_4
    :goto_2
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v9

    iput v9, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzq:I

    if-eqz v9, :cond_9

    if-eq v9, v2, :cond_8

    if-eq v9, v1, :cond_7

    if-eq v9, v8, :cond_7

    const/4 v1, 0x5

    if-eq v9, v1, :cond_7

    if-eq v9, v0, :cond_6

    const/4 v0, 0x7

    if-ne v9, v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_6
    :goto_3
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto :goto_4

    :cond_8
    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :goto_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzr:Z

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzs:J

    if-eqz v0, :cond_c

    if-eq v7, v2, :cond_b

    :cond_a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzs:J

    shl-long/2addr v7, v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v1

    int-to-long v9, v1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzs:J

    if-nez v0, :cond_a

    goto :goto_5

    :cond_b
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzapo;->zzg(Lcom/google/android/gms/internal/ads/zzer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzs:J

    :cond_c
    :goto_5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzi()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    goto :goto_6

    :cond_d
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :cond_e
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :cond_f
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :cond_10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzn:Z

    if-nez v0, :cond_11

    goto :goto_a

    :cond_11
    :goto_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzo:I

    if-nez v0, :cond_18

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzp:I

    if-nez v0, :cond_17

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzq:I

    if-nez v0, :cond_16

    move v0, v4

    :goto_7
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzj(I)I

    move-result v1

    add-int v10, v0, v1

    const/16 v0, 0xff

    if-eq v1, v0, :cond_15

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzd:Lcom/google/android/gms/internal/ads/zzes;

    shr-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzd:Lcom/google/android/gms/internal/ads/zzes;

    mul-int/lit8 v1, v10, 0x8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v5

    invoke-virtual {v3, v5, v4, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzl([BII)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzf:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzd:Lcom/google/android/gms/internal/ads/zzes;

    invoke-interface {v0, v1, v10}, Lcom/google/android/gms/internal/ads/zzags;->zzc(Lcom/google/android/gms/internal/ads/zzes;I)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzm:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v5

    if-eqz v0, :cond_13

    goto :goto_9

    :cond_13
    move v2, v4

    :goto_9
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzf:Lcom/google/android/gms/internal/ads/zzags;

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzm:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzags;->zze(JIIILcom/google/android/gms/internal/ads/zzagr;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzm:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzu:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzm:J

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzr:Z

    if-eqz v0, :cond_14

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzs:J

    long-to-int v0, v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    :cond_14
    :goto_a
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzi:I

    goto/16 :goto_0

    :cond_15
    move v0, v10

    goto :goto_7

    :cond_16
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :cond_17
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :cond_18
    invoke-static {v6, v6}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :cond_19
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzl:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/2addr v0, v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzk:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzd:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v3

    array-length v3, v3

    if-le v0, v3, :cond_1a

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zze:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v2

    array-length v3, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    :cond_1a
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzj:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzi:I

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v0

    and-int/lit16 v2, v0, 0xe0

    const/16 v5, 0xe0

    if-ne v2, v5, :cond_1c

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzl:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzi:I

    goto/16 :goto_0

    :cond_1c
    if-eq v0, v1, :cond_0

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzi:I

    goto/16 :goto_0

    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v0

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzapo;->zzi:I

    goto/16 :goto_0

    :cond_1e
    return-void
.end method

.method public final zze(Z)V
    .locals 0

    return-void
.end method
