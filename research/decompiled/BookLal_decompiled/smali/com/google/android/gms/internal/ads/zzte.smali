.class public final Lcom/google/android/gms/internal/ads/zzte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzrr;


# static fields
.field private static final zza:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private zzA:J

.field private zzB:J

.field private zzC:I

.field private zzD:Z

.field private zzE:Z

.field private zzF:J

.field private zzG:F

.field private zzH:Ljava/nio/ByteBuffer;

.field private zzI:I

.field private zzJ:Ljava/nio/ByteBuffer;

.field private zzK:Z

.field private zzL:Z

.field private zzM:Z

.field private zzN:Z

.field private zzO:I

.field private zzP:Z

.field private zzQ:Lcom/google/android/gms/internal/ads/zze;

.field private zzR:Landroid/media/AudioDeviceInfo;

.field private zzS:I

.field private zzT:J

.field private zzU:Z

.field private zzV:Z

.field private zzW:J

.field private zzX:J

.field private zzY:Landroid/os/Handler;

.field private final zzZ:Lcom/google/android/gms/internal/ads/zzsz;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzst;

.field private final zzd:Lcom/google/android/gms/internal/ads/zztm;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcv;

.field private final zzf:Lcom/google/android/gms/internal/ads/zztl;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzgvm;

.field private final zzh:Ljava/util/ArrayDeque;

.field private zzi:Lcom/google/android/gms/internal/ads/zzsv;

.field private final zzj:Lcom/google/android/gms/internal/ads/zztd;

.field private final zzk:Lcom/google/android/gms/internal/ads/zztd;

.field private zzl:Lcom/google/android/gms/internal/ads/zzpy;

.field private zzm:Lcom/google/android/gms/internal/ads/zzro;

.field private zzn:Lcom/google/android/gms/internal/ads/zzsy;

.field private zzo:Lcom/google/android/gms/internal/ads/zzsy;

.field private zzp:Lcom/google/android/gms/internal/ads/zzck;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzqu;

.field private zzr:Lcom/google/android/gms/internal/ads/zzqr;

.field private zzs:Lcom/google/android/gms/internal/ads/zzqk;

.field private zzt:Lcom/google/android/gms/internal/ads/zzd;

.field private zzu:Lcom/google/android/gms/internal/ads/zztc;

.field private zzv:Lcom/google/android/gms/internal/ads/zztc;

.field private zzw:Lcom/google/android/gms/internal/ads/zzav;

.field private zzx:Z

.field private zzy:J

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzte;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzsx;[B)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsx;->zzb()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsx;->zzb()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzb:Landroid/content/Context;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzd;->zza:Lcom/google/android/gms/internal/ads/zzd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzt:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsx;->zzd()Lcom/google/android/gms/internal/ads/zzsz;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzZ:Lcom/google/android/gms/internal/ads/zzsz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsx;->zzc()Lcom/google/android/gms/internal/ads/zzqu;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzst;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzst;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzc:Lcom/google/android/gms/internal/ads/zzst;

    new-instance v0, Lcom/google/android/gms/internal/ads/zztm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zztm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzd:Lcom/google/android/gms/internal/ads/zztm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcv;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zze:Lcom/google/android/gms/internal/ads/zzcv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zztl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zztl;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzf:Lcom/google/android/gms/internal/ads/zztl;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzk(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzg:Lcom/google/android/gms/internal/ads/zzgvm;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzG:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzO:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zze;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/ads/zze;-><init>(IF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzQ:Lcom/google/android/gms/internal/ads/zze;

    new-instance v0, Lcom/google/android/gms/internal/ads/zztc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzav;->zza:Lcom/google/android/gms/internal/ads/zzav;

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v0

    move-object v3, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zztc;-><init>(Lcom/google/android/gms/internal/ads/zzav;JJ[B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zztc;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzav;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzx:Z

    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzh:Ljava/util/ArrayDeque;

    new-instance p2, Lcom/google/android/gms/internal/ads/zztd;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zztd;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzj:Lcom/google/android/gms/internal/ads/zztd;

    new-instance p2, Lcom/google/android/gms/internal/ads/zztd;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zztd;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzk:Lcom/google/android/gms/internal/ads/zztd;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    const/4 v1, -0x1

    if-lt p2, v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsx;->zzb()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsx;->zzb()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/api/a;->b(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzte;->zzaf(I)I

    move-result v1

    :cond_2
    :goto_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzS:I

    return-void
.end method

.method public static zzD(ILjava/nio/ByteBuffer;)I
    .locals 8

    const/16 v0, 0x14

    if-eq p0, v0, :cond_c

    const/16 v0, 0x1e

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v4, 0x400

    if-eq p0, v0, :cond_5

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x10

    packed-switch p0, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1b

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected audio encoding: "

    invoke-static {p0, v0, v1}, LC/a;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-array p0, v0, [B

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzer;-><init>([BI)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaej;->zzb(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object p0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzaei;->zzc:I

    return p0

    :pswitch_1
    return v4

    :pswitch_2
    const/16 p0, 0x200

    return p0

    :pswitch_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v4

    add-int/lit8 v4, v4, -0xa

    move v5, p0

    :goto_0
    if-gt v5, v4, :cond_1

    add-int/lit8 v6, v5, 0x4

    invoke-static {p1, v6}, Lcom/google/android/gms/internal/ads/zzfk;->zzJ(Ljava/nio/ByteBuffer;I)I

    move-result v6

    and-int/2addr v6, v1

    const v7, -0x78d9046

    if-ne v6, v7, :cond_0

    sub-int/2addr v5, p0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_1
    if-eq v5, v3, :cond_3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/2addr p0, v5

    add-int/lit8 p0, p0, 0x7

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v5

    const/16 v2, 0xbb

    if-ne p0, v2, :cond_2

    const/16 p0, 0x9

    goto :goto_2

    :cond_2
    const/16 p0, 0x8

    :goto_2
    add-int/2addr v1, p0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x7

    const/16 p1, 0x28

    shl-int p0, p1, p0

    mul-int/2addr p0, v0

    return p0

    :cond_3
    return v2

    :pswitch_4
    const/16 p0, 0x800

    return p0

    :pswitch_5
    return v4

    :pswitch_6
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzfk;->zzJ(Ljava/nio/ByteBuffer;I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzagd;->zzb(I)I

    move-result p0

    if-eq p0, v3, :cond_4

    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaeg;->zze(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_5
    :pswitch_8
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    const v0, -0xde4bec0

    if-eq p0, v0, :cond_b

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    const v0, -0x17bd3b8f

    if-ne p0, v0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    const v0, 0x25205864

    if-ne p0, v0, :cond_7

    const/16 v4, 0x1000

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-eq v0, v1, :cond_a

    if-eq v0, v3, :cond_9

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_8

    add-int/lit8 v0, p0, 0x4

    add-int/lit8 p0, p0, 0x5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x6

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit16 p0, p0, 0xfc

    :goto_3
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    goto :goto_5

    :cond_8
    add-int/lit8 v0, p0, 0x5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 p0, p0, 0x6

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    :goto_4
    and-int/lit8 p0, p0, 0x3c

    goto :goto_3

    :cond_9
    add-int/lit8 v0, p0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 p0, p0, 0x7

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    goto :goto_4

    :cond_a
    add-int/lit8 v0, p0, 0x4

    add-int/lit8 p0, p0, 0x5

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xfc

    shr-int/lit8 p1, p1, 0x2

    or-int/2addr p0, p1

    :goto_5
    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 v4, p0, 0x20

    :cond_b
    :goto_6
    return v4

    :cond_c
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzagf;->zzb(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public static synthetic zzG()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzte;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic zzH()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzte;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private final zzP()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzl()Lcom/google/android/gms/internal/ads/zzck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcm;->zza:Lcom/google/android/gms/internal/ads/zzcm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzck;->zzb(Lcom/google/android/gms/internal/ads/zzcm;)V

    return-void
.end method

.method private final zzQ(Lcom/google/android/gms/internal/ads/zzqt;)Lcom/google/android/gms/internal/ads/zzqk;
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzsq;->zzf(Lcom/google/android/gms/internal/ads/zzqt;)Lcom/google/android/gms/internal/ads/zzsl;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqq; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object v9, v0

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzqt;->zzb:I

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzqt;->zzc:I

    iget v5, p1, Lcom/google/android/gms/internal/ads/zzqt;->zza:I

    iget v6, p1, Lcom/google/android/gms/internal/ads/zzqt;->zze:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzrn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzg()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzrn;-><init>(IIIIILcom/google/android/gms/internal/ads/zzv;ZLjava/lang/Exception;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzro;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzro;->zza(Ljava/lang/Exception;)V

    :goto_0
    throw p1
.end method

.method private final zzR(J)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzte;->zzU(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzJ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzc()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzg()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zze()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzte;->zzT(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzte;->zzU(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzJ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzH:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzck;->zzd(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzH:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzte;->zzT(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzte;->zzU(J)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final zzS()Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzc()Z

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzte;->zzU(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzJ:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    return v4

    :cond_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzf()V

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzte;->zzR(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzg()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzJ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    move v3, v4

    :cond_4
    :goto_0
    return v3
.end method

.method private final zzT(Ljava/nio/ByteBuffer;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzte;->zzJ:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->zzf()Z

    move-result v1

    if-eqz v1, :cond_15

    const-wide/16 v1, 0x14

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfk;->zzq(J)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzsy;->zzk()Lcom/google/android/gms/internal/ads/zzqt;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzqt;->zzb:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfk;->zzs(JI)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzac()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v6, v2, v4

    if-gez v6, :cond_15

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzsy;->zzk()Lcom/google/android/gms/internal/ads/zzqt;

    move-result-object v6

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzqt;->zza:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzsy;->zzj()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v9

    long-to-int v2, v2

    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_14

    if-ge v2, v1, :cond_14

    const/high16 v12, 0x50000000

    const/high16 v13, 0x10000000

    const/16 v14, 0x16

    const/16 v15, 0x15

    const/4 v3, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eq v6, v11, :cond_a

    if-eq v6, v10, :cond_9

    if-eq v6, v3, :cond_7

    if-eq v6, v15, :cond_6

    if-eq v6, v14, :cond_5

    if-eq v6, v13, :cond_4

    if-eq v6, v12, :cond_3

    const/high16 v12, 0x60000000

    if-ne v6, v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    :goto_2
    or-int/2addr v12, v13

    or-int/2addr v12, v14

    or-int/2addr v12, v15

    goto/16 :goto_6

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    :goto_3
    or-int/2addr v12, v13

    or-int/2addr v12, v14

    goto/16 :goto_6

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    :goto_4
    or-int/2addr v12, v13

    goto/16 :goto_6

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x18

    goto :goto_2

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x18

    goto :goto_3

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/high16 v13, -0x40800000    # -1.0f

    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gez v13, :cond_8

    neg-float v12, v12

    const/high16 v13, -0x31000000

    :goto_5
    mul-float/2addr v12, v13

    float-to-int v12, v12

    goto :goto_6

    :cond_8
    const/high16 v13, 0x4f000000

    goto :goto_5

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    goto :goto_6

    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    goto :goto_4

    :goto_6
    int-to-long v12, v12

    int-to-long v14, v2

    mul-long/2addr v12, v14

    div-long/2addr v12, v4

    long-to-int v12, v12

    if-eq v6, v11, :cond_13

    if-eq v6, v10, :cond_12

    if-eq v6, v3, :cond_10

    const/16 v3, 0x15

    if-eq v6, v3, :cond_f

    const/16 v3, 0x16

    if-eq v6, v3, :cond_e

    const/high16 v3, 0x10000000

    if-eq v6, v3, :cond_d

    const/high16 v3, 0x50000000

    if-eq v6, v3, :cond_c

    const/high16 v3, 0x60000000

    if-ne v6, v3, :cond_b

    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v12, v12

    int-to-byte v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_7

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_c
    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v11, v11

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_d
    shr-int/lit8 v3, v12, 0x10

    shr-int/lit8 v10, v12, 0x18

    int-to-byte v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_e
    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v12, v12

    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v11

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_f
    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v3, v3

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v11

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_10
    if-gez v12, :cond_11

    int-to-float v3, v12

    neg-float v3, v3

    const/high16 v10, -0x31000000

    div-float/2addr v3, v10

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_11
    int-to-float v3, v12

    const/high16 v10, 0x4f000000

    div-float/2addr v3, v10

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_12
    shr-int/lit8 v3, v12, 0x18

    int-to-byte v3, v3

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_13
    shr-int/lit8 v3, v12, 0x10

    shr-int/lit8 v10, v12, 0x18

    int-to-byte v3, v3

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int v10, v9, v7

    if-ne v3, v10, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v9

    goto/16 :goto_1

    :cond_14
    move-object/from16 v1, p1

    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object v1, v8

    goto :goto_8

    :cond_15
    move-object/from16 v1, p1

    :goto_8
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzte;->zzJ:Ljava/nio/ByteBuffer;

    :cond_16
    return-void
.end method

.method private final zzU(J)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzJ:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzk:Lcom/google/android/gms/internal/ads/zztd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztd;->zzb()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzte;->zzJ:Ljava/nio/ByteBuffer;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzte;->zzI:I

    invoke-interface {v5, v6, v7, p1, p2}, Lcom/google/android/gms/internal/ads/zzqk;->zzc(Ljava/nio/ByteBuffer;IJ)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqj; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzte;->zzT:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzk:Lcom/google/android/gms/internal/ads/zztd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zztd;->zzc()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzqk;->zzg()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzte;->zzB:J

    cmp-long p2, v5, v1

    if-lez p2, :cond_1

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzte;->zzV:Z

    :cond_1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzN:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzro;

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzth;

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzsy;->zzf()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzA:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzJ:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    sub-int/2addr v0, p2

    int-to-long v5, v0

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzA:J

    :cond_3
    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsy;->zzf()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzJ:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzH:Ljava/nio/ByteBuffer;

    if-ne p1, p2, :cond_4

    goto :goto_0

    :cond_4
    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzB:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzC:I

    int-to-long v0, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzI:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzB:J

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzJ:Ljava/nio/ByteBuffer;

    return-void

    :catch_0
    move-exception p1

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzqj;->zzb:Z

    if-eqz p2, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzac()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-lez v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqk;->zzg()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzV()V

    goto :goto_1

    :cond_7
    move v3, v4

    :goto_1
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqj;->zza:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzrq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->zzg()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    invoke-direct {v0, p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzrq;-><init>(ILcom/google/android/gms/internal/ads/zzv;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzro;

    if-eqz p1, :cond_8

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzro;->zza(Ljava/lang/Exception;)V

    :cond_8
    if-nez p2, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzk:Lcom/google/android/gms/internal/ads/zztd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zztd;->zza(Ljava/lang/Exception;)V

    return-void

    :cond_9
    throw v0

    :cond_a
    :goto_2
    return-void
.end method

.method private final zzV()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzk()Lcom/google/android/gms/internal/ads/zzqt;

    return-void
.end method

.method private final zzW()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzG:F

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzqk;->zzf(F)V

    :cond_0
    return-void
.end method

.method private final zzX()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzsy;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzsy;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->zzh()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzte;->zzad(Lcom/google/android/gms/internal/ads/zzv;I)Lcom/google/android/gms/internal/ads/zzqn;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzqu;->zzb(Lcom/google/android/gms/internal/ads/zzqn;)Lcom/google/android/gms/internal/ads/zzqt;

    move-result-object v7
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzql; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->zzg()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->zzh()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->zzi()I

    move-result v5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->zzj()I

    move-result v6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->zzl()Lcom/google/android/gms/internal/ads/zzck;

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzsy;-><init>(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;IILcom/google/android/gms/internal/ads/zzqt;Lcom/google/android/gms/internal/ads/zzck;[B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzrm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzsy;->zzg()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzrm;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;)V

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzA()V

    return-void
.end method

.method private final zzY(Lcom/google/android/gms/internal/ads/zzav;)V
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/ads/zztc;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-wide v2, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zztc;-><init>(Lcom/google/android/gms/internal/ads/zzav;JJ[B)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzab()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzte;->zzu:Lcom/google/android/gms/internal/ads/zztc;

    return-void

    :cond_0
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zztc;

    return-void
.end method

.method private final zzZ(J)V
    .locals 9

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaa()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzZ:Lcom/google/android/gms/internal/ads/zzsz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzav;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsz;->zzb(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzav;

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzav;->zza:Lcom/google/android/gms/internal/ads/zzav;

    goto :goto_0

    :goto_1
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzav;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzaa()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzZ:Lcom/google/android/gms/internal/ads/zzsz;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzx:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsz;->zzc(Z)Z

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzx:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzh:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/google/android/gms/internal/ads/zztc;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzac()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzsy;->zzd(J)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zztc;-><init>(Lcom/google/android/gms/internal/ads/zzav;JJ[B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzP()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzro;

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzx:Z

    check-cast p1, Lcom/google/android/gms/internal/ads/zzth;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzth;->zza:Lcom/google/android/gms/internal/ads/zzti;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzti;->zzaz()Lcom/google/android/gms/internal/ads/zzrj;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzrj;->zzh(Z)V

    :cond_2
    return-void
.end method

.method private final zzaa()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzg()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzv;->zzI:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzab()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzac()J
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzA:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzsy;->zzj()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    add-long/2addr v0, v2

    const-wide/16 v4, -0x1

    add-long/2addr v0, v4

    div-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzB:J

    :goto_0
    return-wide v0
.end method

.method private final zzad(Lcom/google/android/gms/internal/ads/zzv;I)Lcom/google/android/gms/internal/ads/zzqn;
    .locals 1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzqm;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzqm;-><init>(Lcom/google/android/gms/internal/ads/zzv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzt:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzqm;->zza(Lcom/google/android/gms/internal/ads/zzd;)Lcom/google/android/gms/internal/ads/zzqm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzR:Landroid/media/AudioDeviceInfo;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzqm;->zzb(Landroid/media/AudioDeviceInfo;)Lcom/google/android/gms/internal/ads/zzqm;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzO:I

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzqm;->zzc(I)Lcom/google/android/gms/internal/ads/zzqm;

    const/4 p1, -0x1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzqm;->zze(I)Lcom/google/android/gms/internal/ads/zzqm;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzS:I

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzqm;->zzd(I)Lcom/google/android/gms/internal/ads/zzqm;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzqn;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzqn;-><init>(Lcom/google/android/gms/internal/ads/zzqm;[B)V

    return-object p1
.end method

.method private final zzae()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzL:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzL:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqk;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzM:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqk;->zzd()V

    :cond_1
    return-void
.end method

.method private static zzaf(I)I
    .locals 1

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public final zzA()V
    .locals 12

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzab()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzy:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzz:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzA:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzB:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzV:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzC:I

    new-instance v11, Lcom/google/android/gms/internal/ads/zztc;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzav;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zztc;-><init>(Lcom/google/android/gms/internal/ads/zzav;JJ[B)V

    iput-object v11, p0, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zztc;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzF:J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzu:Lcom/google/android/gms/internal/ads/zztc;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzte;->zzh:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzH:Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzI:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzJ:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzL:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzK:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzM:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzd:Lcom/google/android/gms/internal/ads/zztm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztm;->zzr()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzP()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzi:Lcom/google/android/gms/internal/ads/zzsv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzsy;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzsy;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzte;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqk;->zze()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzk:Lcom/google/android/gms/internal/ads/zztd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztd;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzj:Lcom/google/android/gms/internal/ads/zztd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztd;->zzc()V

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzW:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzX:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzY:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final zzB()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzA()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzg:Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzco;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzco;->zzj()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zze:Lcom/google/android/gms/internal/ads/zzcv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcp;->zzj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzf:Lcom/google/android/gms/internal/ads/zztl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcp;->zzj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzh()V

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzN:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzU:Z

    return-void
.end method

.method public final zzC()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqu;->zze()V

    return-void
.end method

.method public final synthetic zzE()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzX:J

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzro;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzth;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzth;->zza:Lcom/google/android/gms/internal/ads/zzti;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzti;->zzaB(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzX:J

    :cond_0
    return-void
.end method

.method public final synthetic zzF()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzro;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzth;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzth;->zza:Lcom/google/android/gms/internal/ads/zzti;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzti;->zzay(Lcom/google/android/gms/internal/ads/zzti;)V

    :cond_0
    return-void
.end method

.method public final synthetic zzI()Lcom/google/android/gms/internal/ads/zzsv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzi:Lcom/google/android/gms/internal/ads/zzsv;

    return-object v0
.end method

.method public final synthetic zzJ()Lcom/google/android/gms/internal/ads/zzro;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzro;

    return-object v0
.end method

.method public final synthetic zzK()Lcom/google/android/gms/internal/ads/zzsy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    return-object v0
.end method

.method public final synthetic zzL()Lcom/google/android/gms/internal/ads/zzqk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    return-object v0
.end method

.method public final synthetic zzM(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzM:Z

    return-void
.end method

.method public final synthetic zzN()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzN:Z

    return v0
.end method

.method public final synthetic zzO()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzT:J

    return-wide v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzro;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzro;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzpy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzl:Lcom/google/android/gms/internal/ads/zzpy;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzdo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqu;->zzd(Lcom/google/android/gms/internal/ads/zzdo;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzte;->zze(Lcom/google/android/gms/internal/ads/zzv;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzv;)I
    .locals 6

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzv;->zzI:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfk;->zzA(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    if-eq v0, v4, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzH(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object p1

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    const/4 v5, -0x1

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzte;->zzad(Lcom/google/android/gms/internal/ads/zzv;I)Lcom/google/android/gms/internal/ads/zzqn;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzqu;->zza(Lcom/google/android/gms/internal/ads/zzqn;)Lcom/google/android/gms/internal/ads/zzqp;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqp;->zzd:I

    if-eq p1, v3, :cond_3

    if-eq p1, v4, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v4

    :cond_3
    return v3
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzqh;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzU:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzqh;->zza:Lcom/google/android/gms/internal/ads/zzqh;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzte;->zzad(Lcom/google/android/gms/internal/ads/zzv;I)Lcom/google/android/gms/internal/ads/zzqn;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqu;->zza(Lcom/google/android/gms/internal/ads/zzqn;)Lcom/google/android/gms/internal/ads/zzqp;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzqg;-><init>()V

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzqp;->zza:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqg;->zza(Z)Lcom/google/android/gms/internal/ads/zzqg;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzqp;->zzb:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqg;->zzb(Z)Lcom/google/android/gms/internal/ads/zzqg;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzqp;->zzc:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzqg;->zzc(Z)Lcom/google/android/gms/internal/ads/zzqg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zzd()Lcom/google/android/gms/internal/ads/zzqh;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Z)J
    .locals 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzab()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzE:Z

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzk()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzac()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzsy;->zzd(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzh:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zztc;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zztc;->zzc:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zztc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zztc;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zztc;

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zztc;->zzc:J

    sub-long/2addr v0, v3

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zztc;->zza:Lcom/google/android/gms/internal/ads/zzav;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzav;->zzb:F

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfk;->zzv(JF)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzZ:Lcom/google/android/gms/internal/ads/zzsz;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzsz;->zzd(J)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zztc;

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zztc;->zzb:J

    add-long/2addr v4, v0

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/zztc;->zzd:J

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzv:Lcom/google/android/gms/internal/ads/zztc;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zztc;->zzb:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zztc;->zzd:J

    add-long v4, v0, v2

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzZ:Lcom/google/android/gms/internal/ads/zzsz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsz;->zze()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzsy;->zzd(J)J

    move-result-wide v2

    add-long/2addr v4, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzW:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    sub-long v2, v0, v2

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzsy;->zzd(J)J

    move-result-wide v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzW:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzX:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzX:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzY:Landroid/os/Handler;

    if-nez p1, :cond_3

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzY:Landroid/os/Handler;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzY:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzY:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zztb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zztb;-><init>(Lcom/google/android/gms/internal/ads/zzte;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-wide v4

    :cond_5
    :goto_2
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzv;I[I)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzr:Lcom/google/android/gms/internal/ads/zzqr;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzb:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzta;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzta;-><init>(Lcom/google/android/gms/internal/ads/zzte;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzr:Lcom/google/android/gms/internal/ads/zzqr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzqu;->zzc(Lcom/google/android/gms/internal/ads/zzqr;)V

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzv;->zzI:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfk;->zzA(I)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgsj;->zza(Z)V

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfk;->zzD(I)I

    move-result v4

    mul-int/2addr v4, v3

    new-instance v5, Lcom/google/android/gms/internal/ads/zzgvj;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzgvj;-><init>()V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzte;->zzg:Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzgvj;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgvj;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzte;->zze:Lcom/google/android/gms/internal/ads/zzcv;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzgvj;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvj;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzte;->zzZ:Lcom/google/android/gms/internal/ads/zzsz;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzsz;->zza()[Lcom/google/android/gms/internal/ads/zzco;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzgvj;->zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvj;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgvj;->zzi()Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzck;-><init>(Lcom/google/android/gms/internal/ads/zzgvm;)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzck;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzte;->zzp:Lcom/google/android/gms/internal/ads/zzck;

    :cond_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzte;->zzd:Lcom/google/android/gms/internal/ads/zztm;

    iget v7, p1, Lcom/google/android/gms/internal/ads/zzv;->zzJ:I

    iget v8, p1, Lcom/google/android/gms/internal/ads/zzv;->zzK:I

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/ads/zztm;->zzq(II)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzte;->zzc:Lcom/google/android/gms/internal/ads/zzst;

    invoke-virtual {v5, p3}, Lcom/google/android/gms/internal/ads/zzst;->zzq([I)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcl;

    iget v7, p1, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    invoke-direct {v5, v7, v3, v0}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(III)V

    :try_start_0
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzck;->zza(Lcom/google/android/gms/internal/ads/zzcl;)Lcom/google/android/gms/internal/ads/zzcl;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcn; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzcl;->zzd:I

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzH(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzcl;->zzb:I

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzG(I)Lcom/google/android/gms/internal/ads/zzt;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcl;->zzc:I

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfk;->zzD(I)I

    move-result v5

    mul-int/2addr v5, v0

    move-object v7, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzrm;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzrm;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzck;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvm;->zzi()Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzck;-><init>(Lcom/google/android/gms/internal/ads/zzgvm;)V

    move-object v3, p1

    move-object v7, v0

    move v4, v1

    move v5, v4

    :goto_0
    invoke-direct {p0, v3, v1}, Lcom/google/android/gms/internal/ads/zzte;->zzad(Lcom/google/android/gms/internal/ads/zzv;I)Lcom/google/android/gms/internal/ads/zzqn;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzqu;->zzb(Lcom/google/android/gms/internal/ads/zzqn;)Lcom/google/android/gms/internal/ads/zzqt;

    move-result-object v6
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzql; {:try_start_1 .. :try_end_1} :catch_1

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzqt;->zza:I

    const/4 v8, 0x0

    if-eqz v1, :cond_5

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzqt;->zzc:I

    if-eqz v1, :cond_4

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzte;->zzU:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsy;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzsy;-><init>(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;IILcom/google/android/gms/internal/ads/zzqt;Lcom/google/android/gms/internal/ads/zzck;[B)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzab()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzsy;

    return-void

    :cond_3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    return-void

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzrm;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2a

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid output channel config (isOffload=false)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqn;->zza:Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzrm;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzv;)V

    throw v1

    :cond_5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzrm;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x24

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid output encoding (isOffload=false)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqn;->zza:Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzrm;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzv;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzrm;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzrm;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;)V

    throw v1
.end method

.method public final zzi()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzN:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqk;->zza()V

    :cond_0
    return-void
.end method

.method public final zzj()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzD:Z

    return-void
.end method

.method public final zzk(Ljava/nio/ByteBuffer;JI)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzH:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    if-ne v2, v0, :cond_1

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v7

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zza(Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzsy;

    const/4 v8, 0x0

    if-eqz v0, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzS()Z

    move-result v0

    if-nez v0, :cond_2

    return v7

    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzsy;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzsy;->zzb(Lcom/google/android/gms/internal/ads/zzsy;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzae()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzn()Z

    move-result v0

    if-eqz v0, :cond_3

    return v7

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzA()V

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzsy;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzsy;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqk;->zzg()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzk()Lcom/google/android/gms/internal/ads/zzqt;

    :cond_5
    :goto_1
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzte;->zzZ(J)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzab()Z

    move-result v0

    if-nez v0, :cond_e

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzj:Lcom/google/android/gms/internal/ads/zztd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztd;->zzb()Z

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzrn; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_7

    return v7

    :cond_7
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzk()Lcom/google/android/gms/internal/ads/zzqt;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzte;->zzQ(Lcom/google/android/gms/internal/ads/zzqt;)Lcom/google/android/gms/internal/ads/zzqk;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzrn; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v9, v0

    :try_start_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzk()Lcom/google/android/gms/internal/ads/zzqt;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqt;->zze:I

    const v10, 0xf4240

    if-le v0, v10, :cond_d

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzk()Lcom/google/android/gms/internal/ads/zzqt;

    move-result-object v0

    new-instance v11, Lcom/google/android/gms/internal/ads/zzqs;

    invoke-direct {v11, v0, v8}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(Lcom/google/android/gms/internal/ads/zzqt;[B)V

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzqs;->zze(I)Lcom/google/android/gms/internal/ads/zzqs;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqt;

    invoke-direct {v0, v11, v8}, Lcom/google/android/gms/internal/ads/zzqt;-><init>(Lcom/google/android/gms/internal/ads/zzqs;[B)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzrn; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzte;->zzQ(Lcom/google/android/gms/internal/ads/zzqt;)Lcom/google/android/gms/internal/ads/zzqk;

    move-result-object v10

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/ads/zzsy;->zza(Lcom/google/android/gms/internal/ads/zzqt;)Lcom/google/android/gms/internal/ads/zzsy;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzrn; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v10

    :goto_2
    :try_start_4
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsv;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzsy;->zzk()Lcom/google/android/gms/internal/ads/zzqt;

    move-result-object v9

    invoke-direct {v0, v1, v9, v8}, Lcom/google/android/gms/internal/ads/zzsv;-><init>(Lcom/google/android/gms/internal/ads/zzte;Lcom/google/android/gms/internal/ads/zzqt;[B)V

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzi:Lcom/google/android/gms/internal/ads/zzsv;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {v9, v0}, Lcom/google/android/gms/internal/ads/zzqk;->zzm(Lcom/google/android/gms/internal/ads/zzqi;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqk;->zzg()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzk()Lcom/google/android/gms/internal/ads/zzqt;

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :cond_8
    :goto_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzl:Lcom/google/android/gms/internal/ads/zzpy;

    if-eqz v0, :cond_9

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {v9, v0}, Lcom/google/android/gms/internal/ads/zzqk;->zzn(Lcom/google/android/gms/internal/ads/zzpy;)V

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzW()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzQ:Lcom/google/android/gms/internal/ads/zze;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zze;->zza:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzR:Landroid/media/AudioDeviceInfo;

    if-eqz v0, :cond_a

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {v9, v0}, Lcom/google/android/gms/internal/ads/zzqk;->zzo(Landroid/media/AudioDeviceInfo;)V

    :cond_a
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzte;->zzE:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqk;->zzh()I

    move-result v0

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzte;->zzO:I

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzO:I

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzro;

    if-eqz v10, :cond_e

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzsy;->zze()Lcom/google/android/gms/internal/ads/zzrl;

    move-result-object v11

    check-cast v10, Lcom/google/android/gms/internal/ads/zzth;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzth;->zza:Lcom/google/android/gms/internal/ads/zzti;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzti;->zzaz()Lcom/google/android/gms/internal/ads/zzrj;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzrj;->zzk(Lcom/google/android/gms/internal/ads/zzrl;)V

    if-eq v0, v9, :cond_e

    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzte;->zzP:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzk()Lcom/google/android/gms/internal/ads/zzqt;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/internal/ads/zzqs;

    invoke-direct {v10, v9, v8}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(Lcom/google/android/gms/internal/ads/zzqt;[B)V

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzte;->zzO:I

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzqs;->zzg(I)Lcom/google/android/gms/internal/ads/zzqs;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzqt;

    invoke-direct {v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzqt;-><init>(Lcom/google/android/gms/internal/ads/zzqs;[B)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzsy;->zza(Lcom/google/android/gms/internal/ads/zzqt;)Lcom/google/android/gms/internal/ads/zzsy;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzsy;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzk()Lcom/google/android/gms/internal/ads/zzqt;

    move-result-object v9

    new-instance v10, Lcom/google/android/gms/internal/ads/zzqs;

    invoke-direct {v10, v9, v8}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(Lcom/google/android/gms/internal/ads/zzqt;[B)V

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzte;->zzO:I

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzqs;->zzg(I)Lcom/google/android/gms/internal/ads/zzqs;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzqt;

    invoke-direct {v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzqt;-><init>(Lcom/google/android/gms/internal/ads/zzqs;[B)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzsy;->zza(Lcom/google/android/gms/internal/ads/zzqt;)Lcom/google/android/gms/internal/ads/zzsy;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzn:Lcom/google/android/gms/internal/ads/zzsy;

    :cond_b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzro;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzte;->zzO:I

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x23

    if-lt v10, v11, :cond_c

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/internal/ads/zzth;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzth;->zza:Lcom/google/android/gms/internal/ads/zzti;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzti;->zzaA()Lcom/google/android/gms/internal/ads/zzuo;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzti;->zzaA()Lcom/google/android/gms/internal/ads/zzuo;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzuo;->zza(I)V

    :cond_c
    check-cast v0, Lcom/google/android/gms/internal/ads/zzth;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzth;->zza:Lcom/google/android/gms/internal/ads/zzti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzti;->zzaz()Lcom/google/android/gms/internal/ads/zzrj;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzrj;->zzm(I)V

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzV()V

    throw v9
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzrn; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzte;->zzj:Lcom/google/android/gms/internal/ads/zztd;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zztd;->zza(Ljava/lang/Exception;)V

    return v7

    :cond_e
    :goto_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzj:Lcom/google/android/gms/internal/ads/zztd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztd;->zzc()V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzE:Z

    const-wide/16 v9, 0x0

    if-eqz v0, :cond_f

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/google/android/gms/internal/ads/zzte;->zzF:J

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzte;->zzD:Z

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzte;->zzE:Z

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzte;->zzZ(J)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzN:Z

    if-eqz v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzi()V

    :cond_f
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzH:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1c

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v11, :cond_10

    move v0, v6

    goto :goto_6

    :cond_10
    move v0, v7

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zza(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_11

    return v6

    :cond_11
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzf()Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzC:I

    if-nez v0, :cond_13

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzk()Lcom/google/android/gms/internal/ads/zzqt;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqt;->zza:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzte;->zzD(ILjava/nio/ByteBuffer;)I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzC:I

    if-eqz v0, :cond_12

    goto :goto_7

    :cond_12
    return v6

    :cond_13
    :goto_7
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzu:Lcom/google/android/gms/internal/ads/zztc;

    if-eqz v0, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzS()Z

    move-result v0

    if-nez v0, :cond_14

    return v7

    :cond_14
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzte;->zzZ(J)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzte;->zzu:Lcom/google/android/gms/internal/ads/zztc;

    :cond_15
    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzte;->zzF:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzf()Z

    move-result v13

    if-eqz v13, :cond_16

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzte;->zzy:J

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzsy;->zzi()I

    move-result v15

    int-to-long v8, v15

    div-long/2addr v13, v8

    goto :goto_8

    :cond_16
    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzte;->zzz:J

    :goto_8
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzte;->zzd:Lcom/google/android/gms/internal/ads/zztm;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zztm;->zzs()J

    move-result-wide v8

    sub-long/2addr v13, v8

    invoke-virtual {v0, v13, v14}, Lcom/google/android/gms/internal/ads/zzsy;->zzc(J)J

    move-result-wide v8

    add-long/2addr v11, v8

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzD:Z

    if-nez v0, :cond_18

    sub-long v8, v11, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v13, 0x30d40

    cmp-long v0, v8, v13

    if-lez v0, :cond_18

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzro;

    if-eqz v0, :cond_17

    new-instance v8, Lcom/google/android/gms/internal/ads/zzrp;

    invoke-direct {v8, v3, v4, v11, v12}, Lcom/google/android/gms/internal/ads/zzrp;-><init>(JJ)V

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/ads/zzro;->zza(Ljava/lang/Exception;)V

    :cond_17
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzte;->zzD:Z

    :cond_18
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzD:Z

    if-eqz v0, :cond_1a

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzS()Z

    move-result v0

    if-nez v0, :cond_19

    return v7

    :cond_19
    sub-long v8, v3, v11

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzte;->zzF:J

    add-long/2addr v10, v8

    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzte;->zzF:J

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzte;->zzD:Z

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzte;->zzZ(J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzm:Lcom/google/android/gms/internal/ads/zzro;

    if-eqz v0, :cond_1a

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1a

    check-cast v0, Lcom/google/android/gms/internal/ads/zzth;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzth;->zza:Lcom/google/android/gms/internal/ads/zzti;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzti;->zzaq()V

    :cond_1a
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzf()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzte;->zzy:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v10, v0

    add-long/2addr v8, v10

    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzte;->zzy:J

    goto :goto_9

    :cond_1b
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzte;->zzz:J

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzC:I

    int-to-long v10, v0

    int-to-long v12, v5

    mul-long/2addr v10, v12

    add-long/2addr v10, v8

    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzte;->zzz:J

    :goto_9
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzte;->zzH:Ljava/nio/ByteBuffer;

    iput v5, v1, Lcom/google/android/gms/internal/ads/zzte;->zzI:I

    :cond_1c
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzte;->zzR(J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzH:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzte;->zzH:Ljava/nio/ByteBuffer;

    iput v7, v1, Lcom/google/android/gms/internal/ads/zzte;->zzI:I

    return v6

    :cond_1d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqk;->zzl()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio output"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzte;->zzA()V

    return v6

    :cond_1e
    return v7
.end method

.method public final zzl()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzK:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzab()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzae()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzK:Z

    :cond_0
    return-void
.end method

.method public final zzm()Z
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzab()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzK:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final zzn()Z
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzab()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqk;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzM:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzac()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzqk;->zzk()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzqk;->zzi()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfk;->zzs(JI)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzav;)V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzav;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzav;->zzb:F

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzav;->zzc:F

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzav;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzav;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzte;->zzY(Lcom/google/android/gms/internal/ads/zzav;)V

    return-void
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzav;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzav;

    return-object v0
.end method

.method public final zzq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzx:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzw:Lcom/google/android/gms/internal/ads/zzav;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzte;->zzY(Lcom/google/android/gms/internal/ads/zzav;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzt:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzt:Lcom/google/android/gms/internal/ads/zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzX()V

    return-void
.end method

.method public final zzs(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzP:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzO:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzP:Z

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzO:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzO:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzX()V

    :cond_1
    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zze;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzQ:Lcom/google/android/gms/internal/ads/zze;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zze;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzQ:Lcom/google/android/gms/internal/ads/zze;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zze;->zza:I

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzQ:Lcom/google/android/gms/internal/ads/zze;

    return-void
.end method

.method public final zzu(Landroid/media/AudioDeviceInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzR:Landroid/media/AudioDeviceInfo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzo(Landroid/media/AudioDeviceInfo;)V

    :cond_0
    return-void
.end method

.method public final zzv(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzS:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzte;->zzaf(I)I

    move-result p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzS:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzX()V

    return-void
.end method

.method public final zzw()J
    .locals 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzab()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzf()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzqk;->zzj()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzsy;->zzd(J)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqk;->zzj()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzo:Lcom/google/android/gms/internal/ads/zzsy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsy;->zzk()Lcom/google/android/gms/internal/ads/zzqt;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqt;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzafj;->zzf(I)I

    move-result v0

    const v3, -0x7fffffff

    if-eq v0, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    int-to-long v5, v0

    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v3, 0xf4240

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzfk;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    :goto_1
    return-wide v0
.end method

.method public final zzx(II)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzg()Z

    :cond_0
    return-void
.end method

.method public final zzy(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzG:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzte;->zzG:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzW()V

    :cond_0
    return-void
.end method

.method public final zzz()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzN:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzte;->zzab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzte;->zzs:Lcom/google/android/gms/internal/ads/zzqk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzqk;->zzb()V

    :cond_0
    return-void
.end method
