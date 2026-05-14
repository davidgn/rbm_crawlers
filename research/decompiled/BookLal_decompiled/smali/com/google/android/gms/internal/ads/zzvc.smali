.class public abstract Lcom/google/android/gms/internal/ads/zzvc;
.super Lcom/google/android/gms/internal/ads/zziq;
.source "SourceFile"


# static fields
.field private static final zzb:[B


# instance fields
.field private zzA:Z

.field private zzB:F

.field private zzC:Ljava/util/ArrayDeque;

.field private zzD:Lcom/google/android/gms/internal/ads/zzuy;

.field private zzE:Lcom/google/android/gms/internal/ads/zzuv;

.field private zzF:I

.field private zzG:Z

.field private zzH:Z

.field private zzI:Z

.field private zzJ:Z

.field private zzK:Z

.field private zzL:J

.field private zzM:Z

.field private zzN:J

.field private zzO:I

.field private zzP:I

.field private zzQ:Ljava/nio/ByteBuffer;

.field private zzR:Z

.field private zzS:Z

.field private zzT:Z

.field private zzU:Z

.field private zzV:Z

.field private zzW:Z

.field private zzX:I

.field private zzY:I

.field private zzZ:I

.field protected zza:Lcom/google/android/gms/internal/ads/zziu;

.field private zzaa:Z

.field private zzab:Z

.field private zzac:Z

.field private zzad:J

.field private zzae:Z

.field private zzaf:Z

.field private zzag:Z

.field private zzah:Lcom/google/android/gms/internal/ads/zzvb;

.field private zzai:J

.field private zzaj:Z

.field private zzak:Z

.field private zzal:Z

.field private zzam:J

.field private zzan:Lcom/google/android/gms/internal/ads/zzis;

.field private zzao:Lcom/google/android/gms/internal/ads/zzis;

.field private zzap:Lcom/google/android/gms/internal/ads/zzgvw;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzuq;

.field private final zze:Lcom/google/android/gms/internal/ads/zzve;

.field private final zzf:F

.field private final zzg:Lcom/google/android/gms/internal/ads/zzio;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzio;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzio;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzuj;

.field private final zzk:Landroid/media/MediaCodec$BufferInfo;

.field private final zzl:Ljava/util/ArrayDeque;

.field private final zzm:Lcom/google/android/gms/internal/ads/zztj;

.field private final zzn:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zzo:Lcom/google/android/gms/internal/ads/zzv;

.field private zzp:Lcom/google/android/gms/internal/ads/zzv;

.field private zzq:Lcom/google/android/gms/internal/ads/zztp;

.field private zzr:Lcom/google/android/gms/internal/ads/zztp;

.field private zzs:Lcom/google/android/gms/internal/ads/zzms;

.field private zzt:Landroid/media/MediaCrypto;

.field private zzu:J

.field private zzv:F

.field private zzw:F

.field private zzx:Lcom/google/android/gms/internal/ads/zzus;

.field private zzy:Lcom/google/android/gms/internal/ads/zzv;

.field private zzz:Landroid/media/MediaFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvc;->zzb:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzuq;Lcom/google/android/gms/internal/ads/zzve;ZF)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zziq;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzc:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzd:Lcom/google/android/gms/internal/ads/zzuq;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvc;->zze:Lcom/google/android/gms/internal/ads/zzve;

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzf:F

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzn:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzio;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzio;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzg:Lcom/google/android/gms/internal/ads/zzio;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzio;

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzio;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzh:Lcom/google/android/gms/internal/ads/zzio;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzio;

    const/4 p3, 0x2

    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzio;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzi:Lcom/google/android/gms/internal/ads/zzio;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzuj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzuj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzj:Lcom/google/android/gms/internal/ads/zzuj;

    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzk:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzv:F

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzw:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzu:J

    new-instance p5, Ljava/util/ArrayDeque;

    invoke-direct {p5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzl:Ljava/util/ArrayDeque;

    sget-object p5, Lcom/google/android/gms/internal/ads/zzvb;->zza:Lcom/google/android/gms/internal/ads/zzvb;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzah:Lcom/google/android/gms/internal/ads/zzvb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzio;->zzj(I)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzio;->zzc:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zztj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zztj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzm:Lcom/google/android/gms/internal/ads/zztj;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzB:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzF:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzX:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzO:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzP:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzN:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzad:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzai:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzL:J

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzY:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzZ:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zziu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zziu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zziu;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzal:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzam:J

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvw;->zzh()Lcom/google/android/gms/internal/ads/zzgvw;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzap:Lcom/google/android/gms/internal/ads/zzgvw;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzis;->zza:Lcom/google/android/gms/internal/ads/zzis;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzan:Lcom/google/android/gms/internal/ads/zzis;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzao:Lcom/google/android/gms/internal/ads/zzis;

    return-void
.end method

.method private final zzaA(I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzI()Lcom/google/android/gms/internal/ads/zzlp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzg:Lcom/google/android/gms/internal/ads/zzio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzio;->zza()V

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zziq;->zzQ(Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzio;I)I

    move-result p1

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzvc;->zzao(Lcom/google/android/gms/internal/ads/zzlp;)Lcom/google/android/gms/internal/ads/zziv;

    return v3

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzij;->zzb()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzae:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbr()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final zzaB(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzu:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzM()Lcom/google/android/gms/internal/ads/zzdo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdo;->zzb()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzu:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final zzaC()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzP:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaq()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzT:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaw()V

    return-void
.end method

.method private final zzaw()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaz()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzV:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzj:Lcom/google/android/gms/internal/ads/zzuj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzuj;->zza()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzi:Lcom/google/android/gms/internal/ads/zzio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzio;->zza()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzU:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzm:Lcom/google/android/gms/internal/ads/zztj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztj;->zzb()V

    return-void
.end method

.method private final zzax()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaO()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaM()V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaP()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzay()V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzal:Z

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzay()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzus;->zzk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaR()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaR()V

    throw v0
.end method

.method private final zzaz()V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzad:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbt()Lcom/google/android/gms/internal/ads/zzvb;

    move-result-object v2

    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/zzvb;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzai:J

    return-void
.end method

.method public static zzbj(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzN:I

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private final zzbm()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzO:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzh:Lcom/google/android/gms/internal/ads/zzio;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzc:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzbn()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzP:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzQ:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private final zzbo(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzZ:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zze()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzw:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzJ()[Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v2

    invoke-virtual {p0, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzvc;->zzak(FLcom/google/android/gms/internal/ads/zzv;[Lcom/google/android/gms/internal/ads/zzv;)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzB:F

    cmpl-float v2, v0, p1

    if-eqz v2, :cond_3

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p1, v2

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbq()V

    const/4 p1, 0x0

    return p1

    :cond_1
    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzf:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzus;->zzp(Landroid/os/Bundle;)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzB:F

    :cond_3
    :goto_0
    return v1
.end method

.method private final zzbp()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzaa:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzY:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzH:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzZ:I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzZ:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbu()V

    :goto_0
    return v1
.end method

.method private final zzbq()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzaa:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzY:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzZ:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaM()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaE()V

    return-void
.end method

.method private final zzbr()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzZ:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzaf:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzau()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaM()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaE()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzay()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbu()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzay()V

    return-void
.end method

.method private final zzbs(Lcom/google/android/gms/internal/ads/zzvb;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzah:Lcom/google/android/gms/internal/ads/zzvb;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzvb;->zzd:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzaj:Z

    :cond_0
    return-void
.end method

.method private final zzbt()Lcom/google/android/gms/internal/ads/zzvb;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzl:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzvb;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzah:Lcom/google/android/gms/internal/ads/zzvb;

    return-object v0
.end method

.method private final zzbu()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzr:Lcom/google/android/gms/internal/ads/zztp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzq:Lcom/google/android/gms/internal/ads/zztp;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzY:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzZ:I

    return-void
.end method

.method private final zzbv(JJ)Z
    .locals 4

    cmp-long v0, p3, p1

    const/4 v1, 0x0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzp:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v3, "audio/opus"

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzagf;->zzf(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public zzA(JZZ)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzl:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzvb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzah:Lcom/google/android/gms/internal/ads/zzvb;

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    if-nez p4, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzae:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzaf:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzT:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaw()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaN()Z

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzah:Lcom/google/android/gms/internal/ads/zzvb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvb;->zze:Lcom/google/android/gms/internal/ads/zzfg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfg;->zzc()I

    move-result p2

    if-lez p2, :cond_3

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzag:Z

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfg;->zzb()V

    return-void
.end method

.method public zzD()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzvb;->zza:Lcom/google/android/gms/internal/ads/zzvb;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbs(Lcom/google/android/gms/internal/ads/zzvb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzl:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzT:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaq()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzax()Z

    return-void
.end method

.method public zzE()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaM()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzr:Lcom/google/android/gms/internal/ads/zztp;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzr:Lcom/google/android/gms/internal/ads/zztp;

    throw v1
.end method

.method public final zzV(JJ)J
    .locals 6

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzM:Z

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzvc;->zzaj(JJZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public zzX(FF)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzv:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzw:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzy:Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzvc;->zzbo(Lcom/google/android/gms/internal/ads/zzv;)Z

    return-void
.end method

.method public zzZ(JJ)V
    .locals 26

    move-object/from16 v15, p0

    const/4 v14, 0x1

    :try_start_0
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzaf:Z
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_20

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzau()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    move v1, v14

    :goto_0
    move-object v4, v15

    :goto_1
    const/4 v3, 0x0

    goto/16 :goto_30

    :catch_1
    move-exception v0

    :goto_2
    move-object v1, v0

    move-object v4, v15

    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_34

    :cond_0
    :try_start_2
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzo:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_20

    const/4 v11, 0x2

    if-nez v1, :cond_1

    :try_start_3
    invoke-direct {v15, v11}, Lcom/google/android/gms/internal/ads/zzvc;->zzaA(I)Z

    move-result v1
    :try_end_3
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaE()V

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzT:Z
    :try_end_4
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_4 .. :try_end_4} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_20

    const/4 v10, 0x0

    if-eqz v1, :cond_1a

    :try_start_5
    const-string v1, "bypassRender"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_4
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzaf:Z

    xor-int/2addr v1, v14

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iget-object v11, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzj:Lcom/google/android/gms/internal/ads/zzuj;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzuj;->zzp()Z

    move-result v1
    :try_end_5
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_b

    if-eqz v1, :cond_4

    :try_start_6
    iget-object v7, v11, Lcom/google/android/gms/internal/ads/zzio;->zzc:Ljava/nio/ByteBuffer;

    iget v8, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzP:I

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzuj;->zzo()I

    move-result v16

    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzH()J

    move-result-wide v1

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzuj;->zzn()J

    move-result-wide v12

    invoke-direct {v15, v1, v2, v12, v13}, Lcom/google/android/gms/internal/ads/zzvc;->zzbv(JJ)Z

    move-result v13

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzij;->zzb()Z

    move-result v19

    iget-object v12, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzp:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_6
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz v12, :cond_3

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v20, v4

    move-wide/from16 v4, p3

    move/from16 v10, v16

    move-object/from16 v16, v11

    move-object/from16 v18, v12

    move-wide/from16 v11, v20

    move/from16 v14, v19

    move-object/from16 v15, v18

    :try_start_7
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzvc;->zzas(JJLcom/google/android/gms/internal/ads/zzus;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzv;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzuj;->zzn()J

    move-result-wide v1
    :try_end_7
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v15, p0

    :try_start_8
    invoke-virtual {v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzvc;->zzaZ(J)V

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzuj;->zza()V

    const/4 v14, 0x0

    goto :goto_7

    :catch_2
    move-exception v0

    :goto_5
    move-object v2, v0

    move-object v4, v15

    :goto_6
    const/4 v1, 0x1

    goto :goto_1

    :catch_3
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v15, p0

    goto/16 :goto_2

    :cond_2
    move-object/from16 v15, p0

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_f

    :cond_3
    move-object v14, v10

    throw v14
    :try_end_8
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_4
    move-object v14, v10

    move-object/from16 v16, v11

    :goto_7
    :try_start_9
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzae:Z
    :try_end_9
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_a

    if-eqz v1, :cond_5

    const/4 v13, 0x1

    :try_start_a
    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzaf:Z
    :try_end_a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_5

    const/4 v12, 0x0

    goto/16 :goto_f

    :catch_5
    move-exception v0

    move-object v2, v0

    move v1, v13

    goto/16 :goto_0

    :cond_5
    const/4 v13, 0x1

    :try_start_b
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzU:Z

    if-eqz v1, :cond_6

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzi:Lcom/google/android/gms/internal/ads/zzio;

    move-object/from16 v2, v16

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzuj;->zzq(Lcom/google/android/gms/internal/ads/zzio;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V
    :try_end_b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_8

    const/4 v12, 0x0

    :try_start_c
    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzU:Z

    goto :goto_b

    :catch_6
    move-exception v0

    :goto_8
    move-object v2, v0

    move v3, v12

    move v1, v13

    move-object v4, v15

    goto/16 :goto_30

    :catch_7
    move-exception v0

    :goto_9
    move-object v1, v0

    move v3, v12

    move-object v4, v15

    goto/16 :goto_34

    :catch_8
    move-exception v0

    :goto_a
    const/4 v12, 0x0

    goto :goto_8

    :catch_9
    move-exception v0

    const/4 v12, 0x0

    goto :goto_9

    :cond_6
    move-object/from16 v2, v16

    const/4 v12, 0x0

    :goto_b
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzV:Z

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzuj;->zzp()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v10, -0x5

    goto/16 :goto_10

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaq()V

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzV:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaE()V

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzT:Z

    if-nez v1, :cond_8

    goto/16 :goto_f

    :cond_8
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzae:Z

    xor-int/2addr v1, v13

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzI()Lcom/google/android/gms/internal/ads/zzlp;

    move-result-object v1

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzi:Lcom/google/android/gms/internal/ads/zzio;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzio;->zza()V

    :cond_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzio;->zza()V

    invoke-virtual {v15, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zziq;->zzQ(Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzio;I)I

    move-result v4

    const/4 v10, -0x5

    if-eq v4, v10, :cond_15

    const/4 v5, -0x4

    if-eq v4, v5, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzcW()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbt()Lcom/google/android/gms/internal/ads/zzvb;

    move-result-object v1

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzad:J

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzvb;->zzf:J

    goto/16 :goto_e

    :cond_a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzij;->zzb()Z

    move-result v4

    if-eqz v4, :cond_b

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzae:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbt()Lcom/google/android/gms/internal/ads/zzvb;

    move-result-object v1

    iget-wide v3, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzad:J

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzvb;->zzf:J

    goto/16 :goto_e

    :cond_b
    iget-wide v4, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzad:J

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzad:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzcW()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzh:Lcom/google/android/gms/internal/ads/zzio;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzij;->zzd()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbt()Lcom/google/android/gms/internal/ads/zzvb;

    move-result-object v4

    iget-wide v5, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzad:J

    iput-wide v5, v4, Lcom/google/android/gms/internal/ads/zzvb;->zzf:J

    :cond_d
    iget-boolean v4, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzag:Z
    :try_end_c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_6

    const-string v5, "audio/opus"

    if-eqz v4, :cond_10

    :try_start_d
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v4, :cond_f

    iput-object v4, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzp:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzp:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzp:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzagf;->zze([B)I

    move-result v4

    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzp:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzI(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    iput-object v4, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzp:Lcom/google/android/gms/internal/ads/zzv;

    :cond_e
    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzp:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v15, v4, v14}, Lcom/google/android/gms/internal/ads/zzvc;->zzap(Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaFormat;)V

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzag:Z

    goto :goto_c

    :cond_f
    throw v14

    :cond_10
    :goto_c
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzio;->zzl()V

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzp:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v4, :cond_12

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzij;->zze()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzp:Lcom/google/android/gms/internal/ads/zzv;

    iput-object v4, v3, Lcom/google/android/gms/internal/ads/zzio;->zza:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzvc;->zzav(Lcom/google/android/gms/internal/ads/zzio;)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzH()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzagf;->zzf(JJ)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzm:Lcom/google/android/gms/internal/ads/zztj;

    iget-object v5, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzp:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zztj;->zza(Lcom/google/android/gms/internal/ads/zzio;Ljava/util/List;)V

    :cond_12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzuj;->zzp()Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_d

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzH()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzuj;->zzn()J

    move-result-wide v6

    invoke-direct {v15, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzvc;->zzbv(JJ)Z

    move-result v6

    iget-wide v7, v3, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    invoke-direct {v15, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzvc;->zzbv(JJ)Z

    move-result v4

    if-ne v6, v4, :cond_14

    :goto_d
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzuj;->zzq(Lcom/google/android/gms/internal/ads/zzio;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_14
    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzU:Z

    goto :goto_e

    :cond_15
    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzvc;->zzao(Lcom/google/android/gms/internal/ads/zzlp;)Lcom/google/android/gms/internal/ads/zziv;

    :cond_16
    :goto_e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzuj;->zzp()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzio;->zzl()V

    :cond_17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzuj;->zzp()Z

    move-result v1

    if-nez v1, :cond_19

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzae:Z

    if-nez v1, :cond_19

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzV:Z

    if-eqz v1, :cond_18

    goto :goto_10

    :cond_18
    :goto_f
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_6

    move v3, v12

    move v1, v13

    move-object v4, v15

    goto/16 :goto_2e

    :cond_19
    :goto_10
    move-object v10, v14

    move v14, v13

    goto/16 :goto_4

    :catch_a
    move-exception v0

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_8

    :catch_b
    move-exception v0

    move v13, v14

    goto/16 :goto_a

    :cond_1a
    move v13, v14

    const/4 v12, 0x0

    move-object v14, v10

    const/4 v10, -0x5

    :try_start_e
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;
    :try_end_e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_e .. :try_end_e} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_1f

    if-eqz v1, :cond_5b

    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzM()Lcom/google/android/gms/internal/ads/zzdo;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdo;->zzb()J

    move-result-wide v8

    const-string v1, "drainAndFeed"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_11
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    if-eqz v6, :cond_5a

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaC()Z

    move-result v1
    :try_end_f
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_f .. :try_end_f} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_1b

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x4

    if-nez v1, :cond_31

    :try_start_10
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzk:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v6, v1}, Lcom/google/android/gms/internal/ads/zzus;->zzf(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v4

    if-gez v4, :cond_2a

    const/4 v1, -0x2

    if-ne v4, v1, :cond_26

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzac:Z

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    if-eqz v1, :cond_25

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzus;->zzg()Landroid/media/MediaFormat;

    move-result-object v1

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzF:I

    if-eqz v2, :cond_1b

    const-string v2, "width"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1b

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_1b

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzJ:Z

    :goto_12
    move-wide v1, v8

    move-object/from16 v16, v14

    move-object v4, v15

    goto/16 :goto_1f

    :cond_1b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_24

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzap:Lcom/google/android/gms/internal/ads/zzgvw;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    goto/16 :goto_14

    :cond_1c
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzap:Lcom/google/android/gms/internal/ads/zzgvw;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzis;->zza:Lcom/google/android/gms/internal/ads/zzis;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzir;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzir;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {v1, v4}, LS0/b;->a(Landroid/media/MediaFormat;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v13, :cond_22

    if-eq v5, v11, :cond_21

    const/4 v6, 0x3

    if-eq v5, v6, :cond_20

    if-eq v5, v7, :cond_1f

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1e

    goto :goto_13

    :cond_1e
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzir;->zze(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzir;

    goto :goto_13

    :cond_1f
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzir;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzir;

    goto :goto_13

    :cond_20
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzir;->zzc(Ljava/lang/String;F)Lcom/google/android/gms/internal/ads/zzir;

    goto :goto_13

    :cond_21
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzir;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzir;

    goto :goto_13

    :cond_22
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzir;->zza(Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/zzir;

    goto :goto_13

    :cond_23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzir;->zzg()Lcom/google/android/gms/internal/ads/zzis;

    move-result-object v2

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzao:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzis;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    iput-object v2, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzao:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzvc;->zzat(Lcom/google/android/gms/internal/ads/zzis;)V

    :cond_24
    :goto_14
    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzz:Landroid/media/MediaFormat;

    iput-boolean v13, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzA:Z

    goto/16 :goto_12

    :cond_25
    throw v14

    :cond_26
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzK:Z

    if-eqz v1, :cond_28

    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzae:Z

    if-nez v1, :cond_27

    iget v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzY:I

    if-ne v1, v11, :cond_28

    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbr()V

    :cond_28
    iget-wide v4, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzL:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_29

    const-wide/16 v1, 0x64

    add-long/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzM()Lcom/google/android/gms/internal/ads/zzdo;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdo;->zza()J

    move-result-wide v1

    cmp-long v1, v4, v1

    if-gez v1, :cond_29

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbr()V

    :cond_29
    :goto_15
    move-wide v1, v8

    move-object/from16 v16, v14

    move-object v4, v15

    goto/16 :goto_20

    :cond_2a
    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v2, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzam:J

    sub-long/2addr v10, v2

    iput-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v2, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzJ:Z

    if-eqz v2, :cond_2b

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzJ:Z

    invoke-interface {v6, v4, v12}, Lcom/google/android/gms/internal/ads/zzus;->zzc(IZ)V

    goto/16 :goto_12

    :cond_2b
    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_2c

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_2c

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbr()V

    goto :goto_15

    :cond_2c
    iput v4, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzP:I

    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/ads/zzus;->zzj(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzQ:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_2d

    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzQ:Ljava/nio/ByteBuffer;

    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_2d
    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzah:Lcom/google/android/gms/internal/ads/zzvb;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzvb;->zze:Lcom/google/android/gms/internal/ads/zzfg;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzfg;->zze(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzv;

    if-nez v1, :cond_2e

    iget-boolean v2, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzaj:Z

    if-eqz v2, :cond_2e

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzz:Landroid/media/MediaFormat;

    if-eqz v2, :cond_2e

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzah:Lcom/google/android/gms/internal/ads/zzvb;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzvb;->zze:Lcom/google/android/gms/internal/ads/zzfg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfg;->zzd()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzv;

    :cond_2e
    if-eqz v1, :cond_2f

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzp:Lcom/google/android/gms/internal/ads/zzv;

    goto :goto_16

    :cond_2f
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzA:Z

    if-eqz v1, :cond_31

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzp:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v1, :cond_31

    :goto_16
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzp:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v1, :cond_30

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzz:Landroid/media/MediaFormat;

    invoke-virtual {v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzvc;->zzap(Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaFormat;)V

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzA:Z

    iput-boolean v12, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzaj:Z

    goto :goto_17

    :cond_30
    throw v14
    :try_end_10
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_6

    :cond_31
    :goto_17
    :try_start_11
    iget-boolean v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzal:Z
    :try_end_11
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_11 .. :try_end_11} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_1b

    if-nez v1, :cond_32

    :try_start_12
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzk:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzH()J

    move-result-wide v3
    :try_end_12
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_6

    cmp-long v1, v1, v3

    if-gez v1, :cond_33

    :cond_32
    move v11, v13

    goto :goto_18

    :cond_33
    move v11, v12

    :goto_18
    :try_start_13
    iput-boolean v11, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzR:Z

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzah:Lcom/google/android/gms/internal/ads/zzvb;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzvb;->zzf:J
    :try_end_13
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_13 .. :try_end_13} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_1b

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_34

    :try_start_14
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzk:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_14
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_14 .. :try_end_14} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_6

    cmp-long v1, v1, v3

    if-gtz v1, :cond_34

    move v10, v13

    goto :goto_19

    :cond_34
    move v10, v12

    :goto_19
    :try_start_15
    iput-boolean v10, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzS:Z

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzQ:Ljava/nio/ByteBuffer;

    iget v5, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzP:I

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzk:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_15
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_15 .. :try_end_15} :catch_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_1b

    :try_start_16
    iget-wide v12, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzvc;->zzp:Lcom/google/android/gms/internal/ads/zzv;
    :try_end_16
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_16 .. :try_end_16} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_19

    if-eqz v1, :cond_59

    const/16 v17, 0x1

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move/from16 v19, v3

    move-wide/from16 v2, p1

    move-object/from16 v20, v4

    move/from16 v21, v5

    move-wide/from16 v4, p3

    move/from16 v22, v7

    move-object/from16 v7, v20

    move-wide/from16 v24, v8

    move/from16 v8, v21

    move/from16 v9, v19

    move/from16 v19, v10

    move/from16 v10, v17

    move/from16 v16, v11

    move-wide v11, v12

    move/from16 v13, v16

    move-object/from16 v16, v14

    move/from16 v14, v19

    move-object/from16 v15, v18

    :try_start_17
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzvc;->zzas(JJLcom/google/android/gms/internal/ads/zzus;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzv;)Z

    move-result v1
    :try_end_17
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_17 .. :try_end_17} :catch_18
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_17} :catch_17

    if-eqz v1, :cond_39

    move-object/from16 v1, v23

    :try_start_18
    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_18
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_18 .. :try_end_18} :catch_f
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_e

    move-object/from16 v4, p0

    :try_start_19
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzvc;->zzaZ(J)V

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_35

    const/4 v14, 0x1

    goto :goto_1a

    :cond_35
    const/4 v14, 0x0

    :goto_1a
    if-nez v14, :cond_36

    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzab:Z

    if-eqz v1, :cond_36

    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzS:Z

    if-eqz v1, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzM()Lcom/google/android/gms/internal/ads/zzdo;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdo;->zza()J

    move-result-wide v1

    iput-wide v1, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzL:J

    goto :goto_1d

    :catch_c
    move-exception v0

    :goto_1b
    move-object v2, v0

    goto/16 :goto_6

    :catch_d
    move-exception v0

    :goto_1c
    move-object v1, v0

    goto/16 :goto_3

    :cond_36
    :goto_1d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbn()V

    if-eqz v14, :cond_37

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbr()V

    :goto_1e
    move-wide/from16 v1, v24

    goto :goto_20

    :cond_37
    move-wide/from16 v1, v24

    :goto_1f
    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzvc;->zzaB(J)Z

    move-result v3
    :try_end_19
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_19} :catch_c

    if-nez v3, :cond_38

    goto :goto_20

    :cond_38
    move-wide v8, v1

    move-object v15, v4

    move-object/from16 v14, v16

    const/4 v10, -0x5

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_11

    :catch_e
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_1b

    :catch_f
    move-exception v0

    move-object/from16 v4, p0

    goto :goto_1c

    :cond_39
    move-object/from16 v4, p0

    goto :goto_1e

    :goto_20
    :try_start_1a
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    if-eqz v5, :cond_3a

    iget v3, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzY:I

    const/4 v12, 0x2

    if-eq v3, v12, :cond_3a

    iget-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzae:Z

    if-eqz v3, :cond_3b

    :cond_3a
    :goto_21
    const/4 v3, 0x0

    goto/16 :goto_2d

    :cond_3b
    iget v3, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzO:I
    :try_end_1a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1a .. :try_end_1a} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_1a} :catch_15

    if-gez v3, :cond_3c

    :try_start_1b
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzus;->zze()I

    move-result v3

    iput v3, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzO:I

    if-ltz v3, :cond_3a

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzh:Lcom/google/android/gms/internal/ads/zzio;

    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzus;->zzh(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v6, Lcom/google/android/gms/internal/ads/zzio;->zzc:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzio;->zza()V
    :try_end_1b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_1b} :catch_c

    :cond_3c
    :try_start_1c
    iget v3, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzY:I
    :try_end_1c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1c .. :try_end_1c} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_1c} :catch_15

    const/4 v13, 0x1

    if-ne v3, v13, :cond_3e

    :try_start_1d
    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzK:Z

    if-nez v1, :cond_3d

    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzab:Z

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzO:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzus;->zza(IIIJI)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbm()V

    goto :goto_22

    :catch_10
    move-exception v0

    move-object v2, v0

    move v1, v13

    goto/16 :goto_1

    :cond_3d
    :goto_22
    iput v12, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzY:I
    :try_end_1d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1d .. :try_end_1d} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_1d} :catch_10

    goto :goto_21

    :cond_3e
    :try_start_1e
    iget-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzI:Z
    :try_end_1e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1e .. :try_end_1e} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_1e} :catch_15

    if-eqz v3, :cond_40

    const/4 v3, 0x0

    :try_start_1f
    iput-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzI:Z

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzh:Lcom/google/android/gms/internal/ads/zzio;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzio;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_3f

    sget-object v7, Lcom/google/android/gms/internal/ads/zzvc;->zzb:[B

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzO:I

    const/4 v7, 0x0

    const/16 v8, 0x26

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzus;->zza(IIIJI)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbm()V

    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzaa:Z

    goto/16 :goto_2a

    :catch_11
    move-exception v0

    move-object v2, v0

    move v1, v13

    goto/16 :goto_30

    :catch_12
    move-exception v0

    :goto_23
    move-object v1, v0

    goto/16 :goto_34

    :cond_3f
    throw v16
    :try_end_1f
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1f .. :try_end_1f} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_1f} :catch_11

    :cond_40
    const/4 v3, 0x0

    :try_start_20
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzX:I
    :try_end_20
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_20 .. :try_end_20} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_20} :catch_13

    if-ne v6, v13, :cond_44

    move v6, v3

    :goto_24
    :try_start_21
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzy:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v7, :cond_43

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_42

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzy:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzh:Lcom/google/android/gms/internal/ads/zzio;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzio;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_41

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/2addr v6, v13

    goto :goto_24

    :cond_41
    throw v16

    :cond_42
    iput v12, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzX:I

    goto :goto_25

    :cond_43
    throw v16
    :try_end_21
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_21 .. :try_end_21} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_21 .. :try_end_21} :catch_11

    :cond_44
    :goto_25
    :try_start_22
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzh:Lcom/google/android/gms/internal/ads/zzio;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzio;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_57

    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzI()Lcom/google/android/gms/internal/ads/zzlp;

    move-result-object v7
    :try_end_22
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_22 .. :try_end_22} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_22} :catch_13

    :try_start_23
    new-instance v8, Lcom/google/android/gms/internal/ads/zzuz;

    invoke-direct {v8, v4, v7}, Lcom/google/android/gms/internal/ads/zzuz;-><init>(Lcom/google/android/gms/internal/ads/zzvc;Lcom/google/android/gms/internal/ads/zzlp;)V

    invoke-interface {v5, v8}, Lcom/google/android/gms/internal/ads/zzus;->zzi(Ljava/lang/Runnable;)V
    :try_end_23
    .catch Lcom/google/android/gms/internal/ads/zzin; {:try_start_23 .. :try_end_23} :catch_14
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_23 .. :try_end_23} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_23} :catch_13

    :try_start_24
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzn:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8
    :try_end_24
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_24 .. :try_end_24} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_24} :catch_13

    const/4 v9, -0x3

    if-ne v8, v9, :cond_45

    :try_start_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzcW()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbt()Lcom/google/android/gms/internal/ads/zzvb;

    move-result-object v1

    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzad:J

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzvb;->zzf:J

    goto/16 :goto_2d

    :cond_45
    const/4 v14, -0x5

    if-ne v8, v14, :cond_47

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzX:I

    if-ne v5, v12, :cond_46

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzh:Lcom/google/android/gms/internal/ads/zzio;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzio;->zza()V

    iput v13, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzX:I

    :cond_46
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzvc;->zzao(Lcom/google/android/gms/internal/ads/zzlp;)Lcom/google/android/gms/internal/ads/zziv;
    :try_end_25
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_25 .. :try_end_25} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_25} :catch_11

    goto/16 :goto_2a

    :cond_47
    :try_start_26
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzh:Lcom/google/android/gms/internal/ads/zzio;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzij;->zzb()Z

    move-result v8
    :try_end_26
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_26 .. :try_end_26} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_26} :catch_13

    if-eqz v8, :cond_4a

    :try_start_27
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbt()Lcom/google/android/gms/internal/ads/zzvb;

    move-result-object v1

    iget-wide v8, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzad:J

    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzvb;->zzf:J

    iget v1, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzX:I

    if-ne v1, v12, :cond_48

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzio;->zza()V

    iput v13, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzX:I

    :cond_48
    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzae:Z

    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzaa:Z

    if-nez v1, :cond_49

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbr()V

    goto/16 :goto_2d

    :cond_49
    iget-boolean v1, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzK:Z

    if-nez v1, :cond_58

    iput-boolean v13, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzab:Z

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzO:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzus;->zza(IIIJI)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbm()V
    :try_end_27
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_27 .. :try_end_27} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_27 .. :try_end_27} :catch_11

    goto/16 :goto_2d

    :cond_4a
    :try_start_28
    iget-boolean v8, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzaa:Z
    :try_end_28
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_28 .. :try_end_28} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_28} :catch_13

    if-nez v8, :cond_4b

    :try_start_29
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzij;->zzc()Z

    move-result v8

    if-nez v8, :cond_4b

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzio;->zza()V

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzX:I

    if-ne v5, v12, :cond_56

    iput v13, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzX:I
    :try_end_29
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_29 .. :try_end_29} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_29} :catch_11

    goto/16 :goto_2a

    :cond_4b
    :try_start_2a
    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzvc;->zzaX(Lcom/google/android/gms/internal/ads/zzio;)Z

    move-result v10

    if-nez v10, :cond_56

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzio;->zzk()Z

    move-result v10
    :try_end_2a
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2a .. :try_end_2a} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_2a} :catch_13

    if-eqz v10, :cond_4c

    :try_start_2b
    iget-object v11, v7, Lcom/google/android/gms/internal/ads/zzio;->zzb:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzil;->zzc(I)V
    :try_end_2b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2b .. :try_end_2b} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_2b .. :try_end_2b} :catch_11

    :cond_4c
    :try_start_2c
    iget-boolean v6, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzag:Z
    :try_end_2c
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2c .. :try_end_2c} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_2c} :catch_13

    if-eqz v6, :cond_4e

    :try_start_2d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbt()Lcom/google/android/gms/internal/ads/zzvb;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzvb;->zze:Lcom/google/android/gms/internal/ads/zzfg;

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v11, :cond_4d

    invoke-virtual {v6, v8, v9, v11}, Lcom/google/android/gms/internal/ads/zzfg;->zza(JLjava/lang/Object;)V

    iput-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzag:Z

    goto :goto_26

    :cond_4d
    throw v16
    :try_end_2d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2d .. :try_end_2d} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_2d} :catch_11

    :cond_4e
    :goto_26
    :try_start_2e
    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzad:J

    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iput-wide v14, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzad:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzcW()Z

    move-result v6
    :try_end_2e
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2e .. :try_end_2e} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_2e} :catch_13

    if-nez v6, :cond_4f

    :try_start_2f
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzij;->zzd()Z

    move-result v6
    :try_end_2f
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2f .. :try_end_2f} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_2f} :catch_11

    if-eqz v6, :cond_50

    :cond_4f
    :try_start_30
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbt()Lcom/google/android/gms/internal/ads/zzvb;

    move-result-object v6

    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzad:J

    iput-wide v14, v6, Lcom/google/android/gms/internal/ads/zzvb;->zzf:J

    :cond_50
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzio;->zzl()V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzij;->zze()Z

    move-result v6
    :try_end_30
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_30 .. :try_end_30} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_30 .. :try_end_30} :catch_13

    if-eqz v6, :cond_51

    :try_start_31
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzvc;->zzav(Lcom/google/android/gms/internal/ads/zzio;)V
    :try_end_31
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_31 .. :try_end_31} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_31 .. :try_end_31} :catch_11

    :cond_51
    :try_start_32
    iget-boolean v6, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzal:Z

    if-eqz v6, :cond_53

    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzad:J

    cmp-long v6, v8, v14

    if-gtz v6, :cond_52

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzam:J

    sub-long/2addr v14, v8

    const-wide/16 v17, 0x1

    add-long v14, v14, v17

    add-long/2addr v14, v12

    iput-wide v14, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzam:J

    goto :goto_28

    :catch_13
    move-exception v0

    :goto_27
    move-object v2, v0

    const/4 v1, 0x1

    goto/16 :goto_30

    :cond_52
    :goto_28
    iput-wide v8, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzad:J

    iput-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzal:Z

    :cond_53
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzvc;->zzaV(Lcom/google/android/gms/internal/ads/zzio;)V

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzvc;->zzaW(Lcom/google/android/gms/internal/ads/zzio;)I

    move-result v11

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzam:J

    add-long/2addr v12, v8

    if-eqz v10, :cond_54

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzO:I

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzio;->zzb:Lcom/google/android/gms/internal/ads/zzil;

    const/4 v7, 0x0

    move-wide v9, v12

    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzus;->zzb(IILcom/google/android/gms/internal/ads/zzil;JI)V

    goto :goto_29

    :cond_54
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzO:I

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzio;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_55

    invoke-virtual {v7}, Ljava/nio/Buffer;->limit()I

    move-result v8

    const/4 v7, 0x0

    move-wide v9, v12

    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzus;->zza(IIIJI)V

    :goto_29
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbm()V

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzaa:Z

    iput v3, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzX:I

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zziu;

    iget v7, v6, Lcom/google/android/gms/internal/ads/zziu;->zzc:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/google/android/gms/internal/ads/zziu;->zzc:I

    goto :goto_2a

    :cond_55
    throw v16

    :catch_14
    move-exception v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzvc;->zzan(Ljava/lang/Exception;)V

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzvc;->zzaA(I)Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzay()V

    :cond_56
    :goto_2a
    invoke-direct {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzvc;->zzaB(J)Z

    move-result v5

    if-eqz v5, :cond_58

    goto/16 :goto_20

    :cond_57
    throw v16

    :catch_15
    move-exception v0

    :goto_2b
    const/4 v3, 0x0

    goto :goto_27

    :catch_16
    move-exception v0

    :goto_2c
    const/4 v3, 0x0

    goto/16 :goto_23

    :cond_58
    :goto_2d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v1, 0x1

    goto :goto_2e

    :catch_17
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v4, p0

    goto :goto_27

    :catch_18
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v4, p0

    goto/16 :goto_23

    :cond_59
    move-object/from16 v16, v14

    move-object v4, v15

    const/4 v3, 0x0

    throw v16

    :catch_19
    move-exception v0

    move-object v4, v15

    goto :goto_2b

    :catch_1a
    move-exception v0

    move-object v4, v15

    goto :goto_2c

    :catch_1b
    move-exception v0

    move v3, v12

    move-object v4, v15

    goto :goto_27

    :catch_1c
    move-exception v0

    move v3, v12

    move-object v4, v15

    goto/16 :goto_23

    :cond_5a
    move v3, v12

    move-object/from16 v16, v14

    move-object v4, v15

    throw v16
    :try_end_32
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_32 .. :try_end_32} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_32 .. :try_end_32} :catch_13

    :cond_5b
    move v3, v12

    move-object v4, v15

    :try_start_33
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zziu;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zziu;->zzd:I

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zziq;->zzR(J)I

    move-result v5

    add-int/2addr v2, v5

    iput v2, v1, Lcom/google/android/gms/internal/ads/zziu;->zzd:I
    :try_end_33
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_33 .. :try_end_33} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_33 .. :try_end_33} :catch_1e

    const/4 v1, 0x1

    :try_start_34
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzvc;->zzaA(I)Z

    :goto_2e
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zziu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zziu;->zza()V
    :try_end_34
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_34 .. :try_end_34} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_34 .. :try_end_34} :catch_1d

    return-void

    :catch_1d
    move-exception v0

    :goto_2f
    move-object v2, v0

    goto :goto_30

    :catch_1e
    move-exception v0

    const/4 v1, 0x1

    goto :goto_2f

    :catch_1f
    move-exception v0

    move v3, v12

    move v1, v13

    move-object v4, v15

    goto :goto_2f

    :catch_20
    move-exception v0

    move v1, v14

    move-object v4, v15

    const/4 v3, 0x0

    goto :goto_2f

    :goto_30
    instance-of v5, v2, Landroid/media/MediaCodec$CodecException;

    if-eqz v5, :cond_5c

    goto :goto_31

    :cond_5c
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    array-length v7, v6

    if-lez v7, :cond_60

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.media.MediaCodec"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    :goto_31
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzvc;->zzan(Ljava/lang/Exception;)V

    if-eqz v5, :cond_5d

    move-object v5, v2

    check-cast v5, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v5}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v5

    if-eqz v5, :cond_5d

    move v14, v1

    goto :goto_32

    :cond_5d
    move v14, v3

    :goto_32
    if-eqz v14, :cond_5e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaM()V

    :cond_5e
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzE:Lcom/google/android/gms/internal/ads/zzuv;

    invoke-virtual {v4, v2, v1}, Lcom/google/android/gms/internal/ads/zzvc;->zzaT(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzuv;)Lcom/google/android/gms/internal/ads/zzuu;

    move-result-object v1

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzuu;->zza:I

    const/16 v3, 0x44d

    if-ne v2, v3, :cond_5f

    const/16 v2, 0xfa6

    goto :goto_33

    :cond_5f
    const/16 v2, 0xfa3

    :goto_33
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v4, v1, v3, v14, v2}, Lcom/google/android/gms/internal/ads/zziq;->zzP(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zzjd;

    move-result-object v1

    throw v1

    :cond_60
    throw v2

    :goto_34
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzvc;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v1}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfk;->zzE(I)I

    move-result v5

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zziq;->zzP(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zzjd;

    move-result-object v1

    throw v1
.end method

.method public final zzaD()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzak:Z

    return-void
.end method

.method public final zzaE()V
    .locals 23

    move-object/from16 v8, p0

    const-string v9, "MediaCodecRenderer"

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    if-nez v0, :cond_1a

    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzT:Z

    if-nez v0, :cond_1a

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    if-nez v10, :cond_0

    goto/16 :goto_13

    :cond_0
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzvc;->zzaF(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaq()V

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/mpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/opus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzj:Lcom/google/android/gms/internal/ads/zzuj;

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzuj;->zzm(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzj:Lcom/google/android/gms/internal/ads/zzuj;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzuj;->zzm(I)V

    :goto_0
    iput-boolean v11, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzT:Z

    return-void

    :cond_2
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzr:Lcom/google/android/gms/internal/ads/zztp;

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzq:Lcom/google/android/gms/internal/ads/zztp;

    if-eqz v0, :cond_3

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzq:Lcom/google/android/gms/internal/ads/zztp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zztp;->zza()Lcom/google/android/gms/internal/ads/zzto;

    :cond_3
    const/4 v12, 0x0

    :try_start_0
    const-string v13, "Failed to initialize decoder: "

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v15, 0x0

    if-eqz v14, :cond_19

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzC:Ljava/util/ArrayDeque;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzuy; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_5

    :try_start_1
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zze:Lcom/google/android/gms/internal/ads/zzve;

    invoke-virtual {v8, v0, v14, v12}, Lcom/google/android/gms/internal/ads/zzvc;->zzaf(Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzv;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzC:Ljava/util/ArrayDeque;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzC:Ljava/util/ArrayDeque;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzuv;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v18, v10

    goto/16 :goto_12

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    iput-object v15, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzD:Lcom/google/android/gms/internal/ads/zzuy;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzvg; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzuy; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    :try_start_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzuy;

    const v2, -0xc34e

    invoke-direct {v1, v14, v0, v12, v2}, Lcom/google/android/gms/internal/ads/zzuy;-><init>(Lcom/google/android/gms/internal/ads/zzv;Ljava/lang/Throwable;ZI)V

    throw v1

    :cond_5
    :goto_3
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzC:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzC:Ljava/util/ArrayDeque;

    if-eqz v6, :cond_17

    :goto_4
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    if-nez v0, :cond_16

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzuv;

    if-eqz v7, :cond_15

    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/zzvc;->zzaU(Lcom/google/android/gms/internal/ads/zzv;)Z

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzvc;->zzaG(Lcom/google/android/gms/internal/ads/zzuv;)Z

    move-result v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzuy; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_1a

    :try_start_3
    const-string v0, "createCodec:"

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzE:Lcom/google/android/gms/internal/ads/zzuv;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    if-eqz v1, :cond_12

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzuv;->zza:Ljava/lang/String;

    iget v3, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzw:F

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzJ()[Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    invoke-virtual {v8, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzvc;->zzak(FLcom/google/android/gms/internal/ads/zzv;[Lcom/google/android/gms/internal/ads/zzv;)F

    move-result v3

    iget v4, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzf:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_6

    const/high16 v3, -0x40800000    # -1.0f

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzM()Lcom/google/android/gms/internal/ads/zzdo;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzdo;->zzb()J

    move-result-wide v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    :try_start_4
    invoke-virtual {v8, v7, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzvc;->zzah(Lcom/google/android/gms/internal/ads/zzuv;Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzup;

    move-result-object v11

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    const/16 v15, 0x1f

    if-lt v12, v15, :cond_8

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzL()Lcom/google/android/gms/internal/ads/zzpy;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/zzpy;->zza()Landroid/media/metrics/LogSessionId;

    move-result-object v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v17, v6

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/e;->e()Landroid/media/metrics/LogSessionId;

    move-result-object v6

    invoke-static {v15, v6}, Lcom/google/android/gms/internal/ads/e;->x(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v11, Lcom/google/android/gms/internal/ads/zzup;->zzb:Landroid/media/MediaFormat;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v18, v10

    :try_start_7
    const-string v10, "log-session-id"

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/e;->p(Landroid/media/metrics/LogSessionId;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v10, v15}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    :goto_5
    move-object v12, v7

    move-object/from16 v11, v17

    :goto_6
    const/4 v10, 0x1

    goto/16 :goto_10

    :catch_3
    move-exception v0

    :goto_7
    move-object/from16 v18, v10

    goto :goto_5

    :cond_7
    :goto_8
    move-object/from16 v18, v10

    goto :goto_9

    :catch_4
    move-exception v0

    move-object/from16 v17, v6

    goto :goto_7

    :cond_8
    move-object/from16 v17, v6

    goto :goto_8

    :goto_9
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xc

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzd:Lcom/google/android/gms/internal/ads/zzuq;

    invoke-interface {v0, v11}, Lcom/google/android/gms/internal/ads/zzuq;->zzc(Lcom/google/android/gms/internal/ads/zzup;)Lcom/google/android/gms/internal/ads/zzus;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzva;

    const/4 v10, 0x0

    invoke-direct {v6, v8, v10}, Lcom/google/android/gms/internal/ads/zzva;-><init>(Lcom/google/android/gms/internal/ads/zzvc;[B)V

    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/ads/zzus;->zzm(Lcom/google/android/gms/internal/ads/zzur;)Z

    move-result v0

    iput-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzM:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzM()Lcom/google/android/gms/internal/ads/zzdo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdo;->zzb()J

    move-result-wide v19

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzc:Landroid/content/Context;

    invoke-virtual {v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzuv;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzv;->zze(Lcom/google/android/gms/internal/ads/zzv;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Format exceeds selected codec\'s capabilities ["

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iput v3, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzB:F

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzy:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v1, 0x0

    iput v1, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzF:I

    const/16 v0, 0x1d

    if-ne v12, v0, :cond_a

    const-string v1, "c2.android.aac.decoder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzG:Z

    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzH:Z

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzuv;->zza:Ljava/lang/String;

    if-gt v12, v0, :cond_c

    const-string v0, "OMX.broadcom.video_decoder.tunnel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "OMX.broadcom.video_decoder.tunnel.secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "OMX.bcm.vdec.avc.tunnel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "OMX.bcm.vdec.avc.tunnel.secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "OMX.bcm.vdec.hevc.tunnel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "OMX.bcm.vdec.hevc.tunnel.secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    :goto_c
    const-string v0, "Amazon"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "AFTS"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzuv;->zzf:Z

    if-eqz v0, :cond_d

    goto :goto_b

    :cond_d
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzK:Z

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    if-eqz v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zze()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzM()Lcom/google/android/gms/internal/ads/zzdo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdo;->zzb()J

    move-result-wide v0

    const-wide/16 v21, 0x3e8

    add-long v0, v0, v21

    iput-wide v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzN:J

    :cond_e
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zziu;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zziu;->zza:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    const/4 v10, 0x1

    add-int/2addr v1, v10

    :try_start_a
    iput v1, v0, Lcom/google/android/gms/internal/ads/zziu;->zza:I

    sub-long v15, v19, v4

    const/16 v0, 0x1f

    if-lt v12, v0, :cond_10

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzap:Lcom/google/android/gms/internal/ads/zzgvw;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    if-eqz v0, :cond_f

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzap:Lcom/google/android/gms/internal/ads/zzgvw;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzus;->zzr(Ljava/util/List;)V

    goto :goto_e

    :catch_5
    move-exception v0

    move-object v12, v7

    move-object/from16 v11, v17

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_10
    :goto_e
    move-object/from16 v1, p0

    move-object v3, v11

    move-wide/from16 v4, v19

    move-object v12, v7

    move-object/from16 v11, v17

    move-wide v6, v15

    :try_start_b
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzvc;->zzal(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzup;JJ)V

    :goto_f
    move-object v6, v11

    const/4 v12, 0x0

    const/4 v15, 0x0

    move v11, v10

    move-object/from16 v10, v18

    goto/16 :goto_4

    :catch_6
    move-exception v0

    goto :goto_10

    :cond_11
    move-object v12, v7

    move-object/from16 v11, v17

    const/4 v1, 0x0

    const/4 v10, 0x1

    throw v1

    :catchall_0
    move-exception v0

    move-object v12, v7

    move-object/from16 v11, v17

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :catch_7
    move-exception v0

    move-object v11, v6

    move-object v12, v7

    move-object/from16 v18, v10

    goto/16 :goto_6

    :catch_8
    move-exception v0

    move-object v12, v7

    move-object/from16 v18, v10

    move v10, v11

    move-object v11, v6

    goto :goto_10

    :cond_12
    move-object v12, v7

    move-object/from16 v18, v10

    move v10, v11

    move-object v1, v15

    move-object v11, v6

    throw v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :goto_10
    :try_start_c
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzuv;->zza:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzuy;

    const/4 v2, 0x0

    invoke-direct {v1, v14, v0, v2, v12}, Lcom/google/android/gms/internal/ads/zzuy;-><init>(Lcom/google/android/gms/internal/ads/zzv;Ljava/lang/Throwable;ZLcom/google/android/gms/internal/ads/zzuv;)V

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzvc;->zzan(Ljava/lang/Exception;)V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzD:Lcom/google/android/gms/internal/ads/zzuy;

    if-nez v0, :cond_13

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzD:Lcom/google/android/gms/internal/ads/zzuy;

    goto :goto_11

    :catch_9
    move-exception v0

    goto :goto_12

    :cond_13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzuy;->zza(Lcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/zzuy;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzD:Lcom/google/android/gms/internal/ads/zzuy;

    :goto_11
    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_f

    :cond_14
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzD:Lcom/google/android/gms/internal/ads/zzuy;

    throw v0

    :cond_15
    move-object/from16 v18, v10

    move-object v1, v15

    throw v1

    :cond_16
    move-object/from16 v18, v10

    move-object v1, v15

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzvc;->zzC:Ljava/util/ArrayDeque;

    return-void

    :cond_17
    move-object/from16 v18, v10

    move-object v1, v15

    throw v1

    :cond_18
    move-object/from16 v18, v10

    move-object v1, v15

    new-instance v0, Lcom/google/android/gms/internal/ads/zzuy;

    const v2, -0xc34f

    const/4 v3, 0x0

    invoke-direct {v0, v14, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzuy;-><init>(Lcom/google/android/gms/internal/ads/zzv;Ljava/lang/Throwable;ZI)V

    throw v0

    :cond_19
    move-object/from16 v18, v10

    move-object v1, v15

    throw v1
    :try_end_c
    .catch Lcom/google/android/gms/internal/ads/zzuy; {:try_start_c .. :try_end_c} :catch_9

    :goto_12
    const/16 v1, 0xfa1

    move-object/from16 v2, v18

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zziq;->zzP(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zzjd;

    move-result-object v0

    throw v0

    :cond_1a
    :goto_13
    return-void
.end method

.method public final zzaF(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzr:Lcom/google/android/gms/internal/ads/zztp;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzvc;->zzag(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public zzaG(Lcom/google/android/gms/internal/ads/zzuv;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final zzaH()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzT:Z

    return v0
.end method

.method public final zzaI()Lcom/google/android/gms/internal/ads/zzus;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    return-object v0
.end method

.method public final zzaJ()Lcom/google/android/gms/internal/ads/zzv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzy:Lcom/google/android/gms/internal/ads/zzv;

    return-object v0
.end method

.method public final zzaK()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzz:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public final zzaL()Lcom/google/android/gms/internal/ads/zzuv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzE:Lcom/google/android/gms/internal/ads/zzuv;

    return-object v0
.end method

.method public final zzaM()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzus;->zzl()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zziu;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zziu;->zzb:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zziu;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzE:Lcom/google/android/gms/internal/ads/zzuv;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzuv;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzvc;->zzam(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzt:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzq:Lcom/google/android/gms/internal/ads/zztp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaS()V

    return-void

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzt:Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzq:Lcom/google/android/gms/internal/ads/zztp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaS()V

    throw v1
.end method

.method public final zzaN()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzax()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaE()V

    :cond_0
    return v0
.end method

.method public zzaO()Z
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzZ:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzG:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzac:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzH:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzab:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbu()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzjd; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaCodecRenderer"

    const-string v3, "Failed to update the DRM session, releasing the codec instead."

    invoke-static {v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_1
    return v2
.end method

.method public zzaP()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzaQ()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzam:J

    return-wide v0
.end method

.method public zzaR()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbm()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbn()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaz()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzN:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzab:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzL:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzaa:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzI:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzJ:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzR:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzS:Z

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzY:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzZ:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzW:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzX:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzal:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzam:J

    return-void
.end method

.method public final zzaS()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaR()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzC:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzE:Lcom/google/android/gms/internal/ads/zzuv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzy:Lcom/google/android/gms/internal/ads/zzv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzz:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzA:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzac:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzB:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzF:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzG:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzH:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzK:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzM:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzW:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzX:I

    return-void
.end method

.method public zzaT(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzuv;)Lcom/google/android/gms/internal/ads/zzuu;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzuu;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuu;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzuv;)V

    return-object v0
.end method

.method public zzaU(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public zzaV(Lcom/google/android/gms/internal/ads/zzio;)V
    .locals 0

    return-void
.end method

.method public zzaW(Lcom/google/android/gms/internal/ads/zzio;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public zzaX(Lcom/google/android/gms/internal/ads/zzio;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zzaY()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzai:J

    return-wide v0
.end method

.method public zzaZ(J)V
    .locals 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzai:J

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzl:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvb;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzvb;->zzb:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzvb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbs(Lcom/google/android/gms/internal/ads/zzvb;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzar()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zzaa()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public zzab()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzaf:Z

    return v0
.end method

.method public final zzad(Lcom/google/android/gms/internal/ads/zzv;)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zze:Lcom/google/android/gms/internal/ads/zzve;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzvc;->zzae(Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzv;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzvg; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0xfa2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zziq;->zzP(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zzjd;

    move-result-object p1

    throw p1
.end method

.method public abstract zzae(Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzv;)I
.end method

.method public abstract zzaf(Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzv;Z)Ljava/util/List;
.end method

.method public zzag(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract zzah(Lcom/google/android/gms/internal/ads/zzuv;Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzup;
.end method

.method public zzai(Lcom/google/android/gms/internal/ads/zzuv;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zziv;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzaj(JJZ)J
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzmt;->zzV(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public zzak(FLcom/google/android/gms/internal/ads/zzv;[Lcom/google/android/gms/internal/ads/zzv;)F
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzal(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzup;JJ)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzam(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzan(Ljava/lang/Exception;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzao(Lcom/google/android/gms/internal/ads/zzlp;)Lcom/google/android/gms/internal/ads/zziv;
    .locals 13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzag:Z

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzlp;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    const-string v4, "video/av01"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v4, "video/x-vnd.on2.vp9"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzt;->zzq(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v1

    :cond_1
    move-object v9, v1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlp;->zza:Lcom/google/android/gms/internal/ads/zztp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzr:Lcom/google/android/gms/internal/ads/zztp;

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzT:Z

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzV:Z

    return-object v5

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    if-nez p1, :cond_3

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzC:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaE()V

    return-object v5

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzE:Lcom/google/android/gms/internal/ads/zzuv;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzy:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzq:Lcom/google/android/gms/internal/ads/zztp;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzr:Lcom/google/android/gms/internal/ads/zztp;

    if-ne v2, v4, :cond_11

    invoke-virtual {p0, v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzvc;->zzai(Lcom/google/android/gms/internal/ads/zzuv;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zziv;

    move-result-object v5

    iget v6, v5, Lcom/google/android/gms/internal/ads/zziv;->zzd:I

    const/4 v7, 0x3

    if-eqz v6, :cond_e

    const/16 v10, 0x10

    const/4 v11, 0x2

    if-eq v6, v0, :cond_a

    if-eq v6, v11, :cond_6

    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzvc;->zzbo(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_0
    move v11, v10

    goto/16 :goto_3

    :cond_4
    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzy:Lcom/google/android/gms/internal/ads/zzv;

    if-eq v4, v2, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbp()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    move v11, v3

    goto :goto_3

    :cond_6
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzvc;->zzbo(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_0

    :cond_7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzW:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzX:I

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzF:I

    if-eq v10, v11, :cond_9

    if-ne v10, v0, :cond_8

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    iget v12, v8, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    if-ne v10, v12, :cond_8

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    iget v12, v8, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    if-ne v10, v12, :cond_8

    goto :goto_2

    :cond_8
    move v0, v3

    :cond_9
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzI:Z

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzy:Lcom/google/android/gms/internal/ads/zzv;

    if-eq v4, v2, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbp()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_a
    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/zzvc;->zzbo(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v12

    if-nez v12, :cond_b

    goto :goto_0

    :cond_b
    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzy:Lcom/google/android/gms/internal/ads/zzv;

    if-eq v4, v2, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbp()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_c
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzaa:Z

    if-eqz v2, :cond_5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzY:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzH:Z

    if-eqz v2, :cond_d

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzZ:I

    goto :goto_3

    :cond_d
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzZ:I

    goto :goto_1

    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbq()V

    goto :goto_1

    :goto_3
    if-eqz v6, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzx:Lcom/google/android/gms/internal/ads/zzus;

    if-ne v0, p1, :cond_f

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzZ:I

    if-ne p1, v7, :cond_10

    :cond_f
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzuv;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zziv;

    const/4 v10, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zziv;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;II)V

    return-object p1

    :cond_10
    return-object v5

    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbq()V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzuv;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zziv;

    const/4 v10, 0x0

    const/16 v11, 0x80

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zziv;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;II)V

    return-object p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sample MIME type is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xfa5

    invoke-virtual {p0, p1, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zziq;->zzP(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zzjd;

    move-result-object p1

    throw p1
.end method

.method public zzap(Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaFormat;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzar()V
    .locals 0

    return-void
.end method

.method public abstract zzas(JJLcom/google/android/gms/internal/ads/zzus;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzv;)Z
.end method

.method public abstract zzat(Lcom/google/android/gms/internal/ads/zzis;)V
.end method

.method public zzau()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public zzav(Lcom/google/android/gms/internal/ads/zzio;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzba()Z
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzo:Lcom/google/android/gms/internal/ads/zzv;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzS()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaC()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzN:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzM()Lcom/google/android/gms/internal/ads/zzdo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdo;->zzb()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzN:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final zzbb()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzv:F

    return v0
.end method

.method public final zzbc()Lcom/google/android/gms/internal/ads/zzms;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzs:Lcom/google/android/gms/internal/ads/zzms;

    return-object v0
.end method

.method public final zzbd()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzy:Lcom/google/android/gms/internal/ads/zzv;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbo(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    return v0
.end method

.method public final zzbe()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzah:Lcom/google/android/gms/internal/ads/zzvb;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzvb;->zzf:J

    return-wide v0
.end method

.method public final zzbf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzad:J

    return-wide v0
.end method

.method public final zzbg()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzah:Lcom/google/android/gms/internal/ads/zzvb;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzvb;->zzd:J

    return-wide v0
.end method

.method public final zzbh()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzah:Lcom/google/android/gms/internal/ads/zzvb;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzvb;->zzc:J

    return-wide v0
.end method

.method public final zzbi(Landroid/media/MediaFormat;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzan:Lcom/google/android/gms/internal/ads/zzis;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzis;->zzb(Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method public final synthetic zzbk(Lcom/google/android/gms/internal/ads/zzlp;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzh:Lcom/google/android/gms/internal/ads/zzio;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zziq;->zzQ(Lcom/google/android/gms/internal/ads/zzlp;Lcom/google/android/gms/internal/ads/zzio;I)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final synthetic zzbl()Lcom/google/android/gms/internal/ads/zzms;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzs:Lcom/google/android/gms/internal/ads/zzms;

    return-object v0
.end method

.method public final zzu()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public zzx(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Lcom/google/android/gms/internal/ads/zzms;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzs:Lcom/google/android/gms/internal/ads/zzms;

    return-void
.end method

.method public zzy(ZZ)V
    .locals 0

    new-instance p1, Lcom/google/android/gms/internal/ads/zziu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zziu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zziu;

    return-void
.end method

.method public zzz([Lcom/google/android/gms/internal/ads/zzv;JJLcom/google/android/gms/internal/ads/zzwt;)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvc;->zzah:Lcom/google/android/gms/internal/ads/zzvb;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzvb;->zzd:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvb;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzvb;-><init>(JJJ)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzvc;->zzbs(Lcom/google/android/gms/internal/ads/zzvb;)V

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvc;->zzak:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzar()V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvc;->zzl:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzvc;->zzad:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzvc;->zzai:J

    cmp-long v2, v7, v3

    if-eqz v2, :cond_3

    cmp-long v2, v7, v5

    if-ltz v2, :cond_3

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzvb;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v5, v1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzvb;-><init>(JJJ)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzvc;->zzbs(Lcom/google/android/gms/internal/ads/zzvb;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvc;->zzah:Lcom/google/android/gms/internal/ads/zzvb;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzvb;->zzd:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzar()V

    :cond_2
    return-void

    :cond_3
    new-instance v9, Lcom/google/android/gms/internal/ads/zzvb;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzvc;->zzad:J

    move-object v2, v9

    move-wide v5, p2

    move-wide/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzvb;-><init>(JJJ)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method
