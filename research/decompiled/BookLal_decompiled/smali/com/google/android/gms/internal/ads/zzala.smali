.class final Lcom/google/android/gms/internal/ads/zzala;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzags;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzalu;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzes;

.field public zzd:Lcom/google/android/gms/internal/ads/zzalv;

.field public zze:Lcom/google/android/gms/internal/ads/zzakv;

.field public zzf:I

.field public zzg:I

.field public zzh:I

.field public zzi:I

.field private final zzj:Lcom/google/android/gms/internal/ads/zzv;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzes;

.field private zzm:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzags;Lcom/google/android/gms/internal/ads/zzalv;Lcom/google/android/gms/internal/ads/zzakv;Lcom/google/android/gms/internal/ads/zzv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzala;->zza:Lcom/google/android/gms/internal/ads/zzags;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzala;->zzd:Lcom/google/android/gms/internal/ads/zzalv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzala;->zze:Lcom/google/android/gms/internal/ads/zzakv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzala;->zzj:Lcom/google/android/gms/internal/ads/zzv;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzalu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzalu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzb:Lcom/google/android/gms/internal/ads/zzalu;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzes;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzc:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    const/4 p4, 0x1

    invoke-direct {p1, p4}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzk:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzes;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzl:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzala;->zza(Lcom/google/android/gms/internal/ads/zzalv;Lcom/google/android/gms/internal/ads/zzakv;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzalv;Lcom/google/android/gms/internal/ads/zzakv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzd:Lcom/google/android/gms/internal/ads/zzalv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzala;->zze:Lcom/google/android/gms/internal/ads/zzakv;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzala;->zza:Lcom/google/android/gms/internal/ads/zzags;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzala;->zzj:Lcom/google/android/gms/internal/ads/zzv;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzala;->zzc()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzq;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzd:Lcom/google/android/gms/internal/ads/zzalv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalv;->zza:Lcom/google/android/gms/internal/ads/zzals;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzb:Lcom/google/android/gms/internal/ads/zzalu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzalu;->zza:Lcom/google/android/gms/internal/ads/zzakv;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzakv;->zza:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzals;->zza(I)Lcom/google/android/gms/internal/ads/zzalt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalt;->zzb:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzq;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzq;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzj:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzt;->zzr(Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zza:Lcom/google/android/gms/internal/ads/zzags;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    return-void
.end method

.method public final zzc()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzb:Lcom/google/android/gms/internal/ads/zzalu;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzd:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzp:J

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzq:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzk:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzo:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzm:Lcom/google/android/gms/internal/ads/zzalt;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzf:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzh:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzg:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzi:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzm:Z

    return-void
.end method

.method public final zzd()J
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzm:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzd:Lcom/google/android/gms/internal/ads/zzalv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalv;->zzf:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzf:I

    aget-wide v1, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzb:Lcom/google/android/gms/internal/ads/zzalu;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzf:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzi:[J

    aget-wide v1, v0, v1

    :goto_0
    return-wide v1
.end method

.method public final zze()J
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzm:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzd:Lcom/google/android/gms/internal/ads/zzalv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalv;->zzc:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzf:I

    aget-wide v1, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzb:Lcom/google/android/gms/internal/ads/zzalu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzf:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzh:I

    aget-wide v1, v0, v1

    :goto_0
    return-wide v1
.end method

.method public final zzf()I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzm:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzd:Lcom/google/android/gms/internal/ads/zzalv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalv;->zzd:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzf:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzb:Lcom/google/android/gms/internal/ads/zzalu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzh:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzf:I

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public final zzg()I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzm:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzd:Lcom/google/android/gms/internal/ads/zzalv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalv;->zzg:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzf:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzb:Lcom/google/android/gms/internal/ads/zzalu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzj:[Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzf:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzala;->zzj()Lcom/google/android/gms/internal/ads/zzalt;

    move-result-object v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public final zzh()Z
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzf:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzf:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzm:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzg:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzg:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzala;->zzb:Lcom/google/android/gms/internal/ads/zzalu;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzalu;->zzg:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzala;->zzh:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_1

    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzala;->zzh:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzala;->zzg:I

    return v2

    :cond_1
    return v1
.end method

.method public final zzi(II)I
    .locals 11

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzala;->zzj()Lcom/google/android/gms/internal/ads/zzalt;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzalt;->zzd:I

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzb:Lcom/google/android/gms/internal/ads/zzalu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzalu;->zzn:Lcom/google/android/gms/internal/ads/zzes;

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzalt;->zze:[B

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzala;->zzl:Lcom/google/android/gms/internal/ads/zzes;

    array-length v4, v1

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzb([BI)V

    move-object v1, v3

    move v3, v4

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzala;->zzb:Lcom/google/android/gms/internal/ads/zzalu;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzala;->zzf:I

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzalu;->zzb(I)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v2

    :goto_1
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzala;->zzk:Lcom/google/android/gms/internal/ads/zzes;

    if-eq v6, v7, :cond_4

    move v9, v2

    goto :goto_2

    :cond_4
    const/16 v9, 0x80

    :goto_2
    or-int/2addr v9, v3

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v10

    int-to-byte v9, v9

    aput-byte v9, v10, v2

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzala;->zza:Lcom/google/android/gms/internal/ads/zzags;

    invoke-interface {v9, v8, v6, v6}, Lcom/google/android/gms/internal/ads/zzags;->zzd(Lcom/google/android/gms/internal/ads/zzes;II)V

    invoke-interface {v9, v1, v3, v6}, Lcom/google/android/gms/internal/ads/zzags;->zzd(Lcom/google/android/gms/internal/ads/zzes;II)V

    if-nez v7, :cond_5

    add-int/2addr v3, v6

    return v3

    :cond_5
    const/4 v1, 0x6

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-nez v5, :cond_6

    int-to-byte p2, p2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzala;->zzc:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v5

    aput-byte v2, v5, v2

    aput-byte v6, v5, v6

    aput-byte v2, v5, v8

    aput-byte p2, v5, v7

    shr-int/lit8 p2, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v2, 0x4

    aput-byte p2, v5, v2

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v2, 0x5

    aput-byte p2, v5, v2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v5, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput-byte p1, v5, p2

    invoke-interface {v9, v4, v0, v6}, Lcom/google/android/gms/internal/ads/zzags;->zzd(Lcom/google/android/gms/internal/ads/zzes;II)V

    add-int/lit8 v3, v3, 0x9

    return v3

    :cond_6
    add-int/2addr v3, v6

    iget-object p1, v4, Lcom/google/android/gms/internal/ads/zzalu;->zzn:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v4

    const/4 v5, -0x2

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    mul-int/2addr v4, v1

    add-int/2addr v4, v8

    if-eqz p2, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzc:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v5

    invoke-virtual {p1, v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    aget-byte p1, v5, v8

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v0

    aget-byte v2, v5, v7

    and-int/lit16 v2, v2, 0xff

    or-int/2addr p1, v2

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v5, v8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v5, v7

    move-object p1, v1

    :cond_7
    invoke-interface {v9, p1, v4, v6}, Lcom/google/android/gms/internal/ads/zzags;->zzd(Lcom/google/android/gms/internal/ads/zzes;II)V

    add-int/2addr v3, v4

    return v3
.end method

.method public final zzj()Lcom/google/android/gms/internal/ads/zzalt;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzm:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzb:Lcom/google/android/gms/internal/ads/zzalu;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzalu;->zza:Lcom/google/android/gms/internal/ads/zzakv;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzakv;->zza:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalu;->zzm:Lcom/google/android/gms/internal/ads/zzalt;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzd:Lcom/google/android/gms/internal/ads/zzalv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzalv;->zza:Lcom/google/android/gms/internal/ads/zzals;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzals;->zza(I)Lcom/google/android/gms/internal/ads/zzalt;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzalt;->zza:Z

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final synthetic zzk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzala;->zzm:Z

    return v0
.end method

.method public final synthetic zzl(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzala;->zzm:Z

    return-void
.end method
