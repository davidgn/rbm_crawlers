.class public final Lcom/google/android/gms/internal/ads/zzacm;
.super Lcom/google/android/gms/internal/ads/zzvc;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadb;


# static fields
.field private static final zzb:[I

.field private static zzc:Z

.field private static zzd:Z


# instance fields
.field private zzA:I

.field private zzB:J

.field private zzC:I

.field private zzD:I

.field private zzE:I

.field private zzF:Lcom/google/android/gms/internal/ads/zzna;

.field private zzG:J

.field private zzH:Z

.field private zzI:J

.field private zzJ:I

.field private zzK:J

.field private zzL:Lcom/google/android/gms/internal/ads/zzbv;

.field private zzM:Lcom/google/android/gms/internal/ads/zzbv;

.field private zzN:I

.field private zzO:I

.field private zzP:Lcom/google/android/gms/internal/ads/zzacz;

.field private zzQ:J

.field private zzR:J

.field private zzS:Z

.field private zzT:I

.field private final zze:Landroid/content/Context;

.field private final zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzadw;

.field private final zzh:Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzadc;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzada;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzabv;

.field private final zzl:J

.field private final zzm:Lcom/google/android/gms/internal/ads/zzadd;

.field private final zzn:Ljava/util/PriorityQueue;

.field private zzo:Lcom/google/android/gms/internal/ads/zzacl;

.field private zzp:Z

.field private zzq:Z

.field private zzr:Lcom/google/android/gms/internal/ads/zzaec;

.field private zzs:Z

.field private zzt:I

.field private zzu:Ljava/util/List;

.field private zzv:Landroid/view/Surface;

.field private zzw:Lcom/google/android/gms/internal/ads/zzaco;

.field private zzx:Lcom/google/android/gms/internal/ads/zzet;

.field private zzy:Z

.field private zzz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacm;->zzb:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzack;)V
    .locals 7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzack;->zzg()Lcom/google/android/gms/internal/ads/zzuq;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzack;->zzf()Lcom/google/android/gms/internal/ads/zzve;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzack;->zze()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    const/high16 v6, 0x41f00000    # 30.0f

    const/4 v2, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzvc;-><init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzuq;Lcom/google/android/gms/internal/ads/zzve;ZF)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzack;->zze()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zze:Landroid/content/Context;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzadw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzack;->zzh()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzack;->zzi()Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzadw;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzadx;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzg:Lcom/google/android/gms/internal/ads/zzadw;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzf:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadc;

    const-wide/16 v4, 0x0

    invoke-direct {p1, v0, p0, v4, v5}, Lcom/google/android/gms/internal/ads/zzadc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzadb;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzi:Lcom/google/android/gms/internal/ads/zzadc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzada;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzada;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzj:Lcom/google/android/gms/internal/ads/zzada;

    const-string p1, "NVIDIA"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzh:Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzet;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzx:Lcom/google/android/gms/internal/ads/zzet;

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzz:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzA:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbv;->zza:Lcom/google/android/gms/internal/ads/zzbv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzL:Lcom/google/android/gms/internal/ads/zzbv;

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzO:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzM:Lcom/google/android/gms/internal/ads/zzbv;

    const/16 p1, -0x3e8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzN:I

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzQ:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzR:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzabv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzabv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzk:Lcom/google/android/gms/internal/ads/zzabv;

    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzn:Ljava/util/PriorityQueue;

    const-wide/16 v2, -0x3a98

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzl:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadd;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzadd;-><init>(F)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzm:Lcom/google/android/gms/internal/ads/zzadd;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzF:Lcom/google/android/gms/internal/ads/zzna;

    return-void
.end method

.method public static zzaw(Lcom/google/android/gms/internal/ads/zzuv;Lcom/google/android/gms/internal/ads/zzv;)I
    .locals 11

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    if-ne v1, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "video/dolby-vision"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "video/avc"

    const-string v6, "video/av01"

    const/4 v7, 0x2

    const/4 v8, 0x1

    const-string v9, "video/hevc"

    if-eqz v4, :cond_4

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdp;->zze(Lcom/google/android/gms/internal/ads/zzv;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0x200

    if-eq p1, v3, :cond_2

    if-eq p1, v8, :cond_2

    if-ne p1, v7, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x400

    if-ne p1, v3, :cond_3

    move-object v3, v6

    goto :goto_1

    :cond_2
    :goto_0
    move-object v3, v5

    goto :goto_1

    :cond_3
    move-object v3, v9

    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v4, 0x3

    const/4 v10, 0x4

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string p1, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v7, 0x6

    goto :goto_3

    :sswitch_1
    const-string p1, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v7, v4

    goto :goto_3

    :sswitch_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v7, 0x5

    goto :goto_3

    :sswitch_3
    const-string p1, "video/mp4v-es"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v7, v8

    goto :goto_3

    :sswitch_4
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v7, v10

    goto :goto_3

    :sswitch_5
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :sswitch_6
    const-string p1, "video/3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    move v7, v2

    :goto_3
    packed-switch v7, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const/16 v10, 0x8

    goto :goto_4

    :pswitch_1
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "BRAVIA 4K 2015"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "Amazon"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "KFSOWI"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "AFTS"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzuv;->zzf:Z

    if-nez p0, :cond_7

    :cond_6
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    add-int/lit8 v0, v0, 0xf

    add-int/lit8 v1, v1, 0xf

    div-int/lit8 v0, v0, 0x10

    div-int/lit8 v1, v1, 0x10

    mul-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x300

    div-int/2addr v1, v10

    return v1

    :pswitch_2
    mul-int/2addr v0, v1

    mul-int/2addr v0, v4

    div-int/2addr v0, v10

    const/high16 p0, 0x200000

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :goto_4
    :pswitch_3
    mul-int/2addr v0, v1

    mul-int/2addr v0, v4

    div-int/2addr v0, v10

    return v0

    :cond_7
    :goto_5
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_6
        -0x631b55f6 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzbA()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzw:Lcom/google/android/gms/internal/ads/zzaco;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaco;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzw:Lcom/google/android/gms/internal/ads/zzaco;

    :cond_0
    return-void
.end method

.method private final zzbB()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzg:Lcom/google/android/gms/internal/ads/zzadw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzv:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzadw;->zzg(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzy:Z

    return-void
.end method

.method private final zzbC()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzM:Lcom/google/android/gms/internal/ads/zzbv;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzg:Lcom/google/android/gms/internal/ads/zzadw;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzadw;->zzf(Lcom/google/android/gms/internal/ads/zzbv;)V

    :cond_0
    return-void
.end method

.method public static zzbm(Lcom/google/android/gms/internal/ads/zzuv;Lcom/google/android/gms/internal/ads/zzv;)I
    .locals 4

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzv;->zzp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p1, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v0, v2

    return v0

    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzaw(Lcom/google/android/gms/internal/ads/zzuv;Lcom/google/android/gms/internal/ads/zzv;)I

    move-result p0

    return p0
.end method

.method public static synthetic zzbn(Lcom/google/android/gms/internal/ads/zzacm;)Lcom/google/android/gms/internal/ads/zzms;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbc()Lcom/google/android/gms/internal/ads/zzms;

    move-result-object p0

    return-object p0
.end method

.method public static final zzbq(Ljava/lang/String;)Z
    .locals 12

    const-string v0, "OMX.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-class p0, Lcom/google/android/gms/internal/ads/zzacm;

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzacm;->zzc:Z

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x7

    const/4 v7, 0x4

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-gt v1, v2, :cond_3

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v11, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v11, "machuca"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v9

    goto :goto_1

    :sswitch_1
    const-string v11, "once"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v8

    goto :goto_1

    :sswitch_2
    const-string v11, "magnolia"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v7

    goto :goto_1

    :sswitch_3
    const-string v11, "aquaman"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_1

    :sswitch_4
    const-string v11, "oneday"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v6

    goto :goto_1

    :sswitch_5
    const-string v11, "dangalUHD"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_1

    :sswitch_6
    const-string v11, "dangalFHD"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :sswitch_7
    const-string v11, "dangal"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v10

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :goto_2
    :pswitch_0
    move v0, v10

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_3
    :goto_3
    const/16 v2, 0x1b

    if-gt v1, v2, :cond_4

    :try_start_1
    const-string v1, "HWEML"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sparse-switch v2, :sswitch_data_1

    goto/16 :goto_4

    :sswitch_8
    const-string v2, "AFTEUFF014"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v3, v9

    goto :goto_4

    :sswitch_9
    const-string v2, "AFTSO001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v3, 0x8

    goto :goto_4

    :sswitch_a
    const-string v2, "AFTEU014"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v3, v7

    goto :goto_4

    :sswitch_b
    const-string v2, "AFTEU011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v3, v4

    goto :goto_4

    :sswitch_c
    const-string v2, "AFTR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v3, v5

    goto :goto_4

    :sswitch_d
    const-string v2, "AFTN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v3, v10

    goto :goto_4

    :sswitch_e
    const-string v2, "AFTA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v3, v0

    goto :goto_4

    :sswitch_f
    const-string v2, "AFTKMST12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v3, v6

    goto :goto_4

    :sswitch_10
    const-string v2, "AFTJMST12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v3, v8

    :cond_5
    :goto_4
    packed-switch v3, :pswitch_data_1

    :goto_5
    :try_start_2
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzacm;->zzd:Z

    sput-boolean v10, Lcom/google/android/gms/internal/ads/zzacm;->zzc:Z

    :goto_6
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean p0, Lcom/google/android/gms/internal/ads/zzacm;->zzd:Z

    return p0

    :goto_7
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_7
        -0x48b8f57f -> :sswitch_6
        -0x48b8bd30 -> :sswitch_5
        -0x3c588c8a -> :sswitch_4
        -0x2d5172e2 -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x14d76e6c -> :sswitch_10
        -0x132295cd -> :sswitch_f
        0x1e9d52 -> :sswitch_e
        0x1e9d5f -> :sswitch_d
        0x1e9d63 -> :sswitch_c
        0x6a6b6031 -> :sswitch_b
        0x6a6b6034 -> :sswitch_a
        0x6b2deee6 -> :sswitch_9
        0x7e53ab34 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final zzbr(Lcom/google/android/gms/internal/ads/zzuv;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzuv;->zzh:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzbs(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzv;ZZ)Ljava/util/List;
    .locals 2

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvm;->zzi()Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzacj;->zza(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzvo;->zzd(Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzv;ZZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzvo;->zzc(Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzv;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final zzbt(Lcom/google/android/gms/internal/ads/zzwt;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzN()Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzg()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwt;->zza:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbd;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzbd;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzR:J

    return-void

    :cond_1
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzR:J

    return-void
.end method

.method private final zzbu(Ljava/lang/Object;)V
    .locals 5

    instance-of v0, p1, Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/Surface;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzv:Landroid/view/Surface;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzv:Landroid/view/Surface;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzi:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzadc;->zzd(Landroid/view/Surface;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzy:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zze()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaI()Lcom/google/android/gms/internal/ads/zzus;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaL()Lcom/google/android/gms/internal/ads/zzuv;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzacm;->zzby(Lcom/google/android/gms/internal/ads/zzuv;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzp:Z

    if-nez v4, :cond_4

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzacm;->zzbz(Lcom/google/android/gms/internal/ads/zzuv;)Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzus;->zzn(Landroid/view/Surface;)V

    goto :goto_1

    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x23

    if-lt v3, v4, :cond_3

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzus;->zzo()V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaM()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaE()V

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacm;->zzbC()V

    goto :goto_2

    :cond_6
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzM:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaec;->zzq()V

    :cond_7
    :goto_2
    const/4 p1, 0x2

    if-ne v0, p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaec;->zzw(Z)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzi:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzadc;->zzj(Z)V

    return-void

    :cond_9
    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacm;->zzbC()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzv:Landroid/view/Surface;

    if-eqz p1, :cond_a

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzy:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzg:Lcom/google/android/gms/internal/ads/zzadw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzg(Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method private final zzbv(Lcom/google/android/gms/internal/ads/zzio;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzcW()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzij;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzR:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbg()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzR:J

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x186a0

    cmp-long p1, v4, v2

    if-gtz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method private final zzbw(Lcom/google/android/gms/internal/ads/zzio;)Z
    .locals 4

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzH()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzbx(JJLcom/google/android/gms/internal/ads/zzv;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzP:Lcom/google/android/gms/internal/ads/zzacz;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaK()Landroid/media/MediaFormat;

    move-result-object v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzacz;->zzcS(JJLcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method private final zzby(Lcom/google/android/gms/internal/ads/zzuv;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzv:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzbr(Lcom/google/android/gms/internal/ads/zzuv;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzaC(Lcom/google/android/gms/internal/ads/zzuv;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final zzbz(Lcom/google/android/gms/internal/ads/zzuv;)Landroid/view/Surface;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaec;->zzk()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzv:Landroid/view/Surface;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzbr(Lcom/google/android/gms/internal/ads/zzuv;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzaC(Lcom/google/android/gms/internal/ads/zzuv;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzw:Lcom/google/android/gms/internal/ads/zzaco;

    if-eqz v0, :cond_3

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzuv;->zzf:Z

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaco;->zza:Z

    if-eq v0, v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacm;->zzbA()V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzw:Lcom/google/android/gms/internal/ads/zzaco;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zze:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzuv;->zzf:Z

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzb(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzaco;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzw:Lcom/google/android/gms/internal/ads/zzaco;

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzw:Lcom/google/android/gms/internal/ads/zzaco;

    return-object p1
.end method


# virtual methods
.method public final zzA(JZZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzg(Z)V

    :cond_0
    if-eqz p4, :cond_1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzG:J

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzvc;->zzA(JZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzi:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzadc;->zzl()V

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzm:Lcom/google/android/gms/internal/ads/zzadd;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzd()V

    :cond_3
    const/4 p1, 0x0

    if-eqz p3, :cond_5

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzaec;->zzw(Z)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzi:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzadc;->zzj(Z)V

    :cond_5
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzD:I

    return-void
.end method

.method public final zzB()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzC:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzM()Lcom/google/android/gms/internal/ads/zzdo;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdo;->zzb()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzB:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzI:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzJ:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaec;->zza()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzi:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzadc;->zzb()V

    return-void
.end method

.method public final zzC()V
    .locals 7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzC:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzM()Lcom/google/android/gms/internal/ads/zzdo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdo;->zzb()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzB:J

    sub-long v4, v2, v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzg:Lcom/google/android/gms/internal/ads/zzadw;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzC:I

    invoke-virtual {v0, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzadw;->zzd(IJ)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzC:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzB:J

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzJ:I

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzg:Lcom/google/android/gms/internal/ads/zzadw;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzI:J

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzadw;->zze(JI)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzI:J

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzJ:I

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaec;->zzb()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzi:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzadc;->zzc()V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzm:Lcom/google/android/gms/internal/ads/zzadd;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzadd;->zzd()V

    :cond_3
    return-void
.end method

.method public final zzD()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzM:Lcom/google/android/gms/internal/ads/zzbv;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzR:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzy:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzH:Z

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzD()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzg:Lcom/google/android/gms/internal/ads/zzadw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zziu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzadw;->zzi(Lcom/google/android/gms/internal/ads/zziu;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbv;->zza:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf(Lcom/google/android/gms/internal/ads/zzbv;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzg:Lcom/google/android/gms/internal/ads/zzadw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zziu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zzi(Lcom/google/android/gms/internal/ads/zziu;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbv;->zza:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zzf(Lcom/google/android/gms/internal/ads/zzbv;)V

    throw v0
.end method

.method public final zzE()V
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzE()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzs:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzQ:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacm;->zzbA()V

    return-void

    :catchall_0
    move-exception v3

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzs:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzQ:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacm;->zzbA()V

    throw v3
.end method

.method public final zzF()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzf:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaec;->zzx()V

    :cond_0
    return-void
.end method

.method public final zzG(Lcom/google/android/gms/internal/ads/zzbf;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzO()Lcom/google/android/gms/internal/ads/zzwt;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzbt(Lcom/google/android/gms/internal/ads/zzwt;)V

    :cond_0
    return-void
.end method

.method public final zzU()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecVideoRenderer"

    return-object v0
.end method

.method public final zzW(J)Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbf()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzG:J

    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaY()J

    move-result-wide v4

    cmp-long v0, v4, v2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    return v2

    :cond_2
    cmp-long p1, p1, v4

    if-lez p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final zzX(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvc;->zzX(FF)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzaec;->zzm(F)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzi:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzadc;->zzn(F)V

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzm:Lcom/google/android/gms/internal/ads/zzadd;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzc(F)V

    :cond_1
    return-void
.end method

.method public final zzY()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzt:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaec;->zzt()V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzt:I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzi:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzadc;->zzh()V

    return-void
.end method

.method public final zzZ(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaec;->zzv(JJ)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaeb; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzaeb;->zza:Lcom/google/android/gms/internal/ads/zzv;

    const/4 p3, 0x0

    const/16 p4, 0x1b59

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zziq;->zzP(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zzjd;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzvc;->zzZ(JJ)V

    return-void
.end method

.method public final zzaA(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zziu;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zziu;->zzk:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zziu;->zzk:J

    iget v1, v0, Lcom/google/android/gms/internal/ads/zziu;->zzl:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zziu;->zzl:I

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzI:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzI:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzJ:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzJ:I

    return-void
.end method

.method public final zzaB(Lcom/google/android/gms/internal/ads/zzus;IJJ)V
    .locals 0

    const-string p3, "releaseOutputBuffer"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {p1, p2, p5, p6}, Lcom/google/android/gms/internal/ads/zzus;->zzd(IJ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zziu;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zziu;->zze:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/zziu;->zze:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzD:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzL:Lcom/google/android/gms/internal/ads/zzbv;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbv;->zza:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbv;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzM:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbv;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzM:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzg:Lcom/google/android/gms/internal/ads/zzadw;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzf(Lcom/google/android/gms/internal/ads/zzbv;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzi:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzadc;->zzf()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzv:Landroid/view/Surface;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacm;->zzbB()V

    :cond_1
    return-void
.end method

.method public final zzaC(Lcom/google/android/gms/internal/ads/zzuv;)Z
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzuv;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzacm;->zzbq(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzuv;->zzf:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zze:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaco;->zza(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final zzaG(Lcom/google/android/gms/internal/ads/zzuv;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzby(Lcom/google/android/gms/internal/ads/zzuv;)Z

    move-result p1

    return p1
.end method

.method public final zzaO()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaL()Lcom/google/android/gms/internal/ads/zzuv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzuv;->zza:Ljava/lang/String;

    const-string v1, "c2.mtk.avc.decoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "c2.mtk.hevc.decoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaO()Z

    move-result v0

    return v0
.end method

.method public final zzaP()Z
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaJ()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzR:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbg()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzR:J

    add-long/2addr v8, v10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaQ()J

    move-result-wide v10

    add-long/2addr v10, v1

    const-wide v1, 0x7fffffffffffffffL

    sub-long/2addr v1, v8

    cmp-long v1, v10, v1

    if-lez v1, :cond_1

    :cond_0
    move v1, v7

    goto :goto_0

    :cond_1
    move v1, v6

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzF:Lcom/google/android/gms/internal/ads/zzna;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzH:Z

    if-nez v2, :cond_4

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzv;->zzq:I

    if-gtz v0, :cond_4

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbe()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    return v6

    :cond_4
    :goto_1
    return v7
.end method

.method public final zzaR()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzn:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzE:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzT:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzH:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzk:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabv;->zzc()V

    :cond_0
    return-void
.end method

.method public final zzaT(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzuv;)Lcom/google/android/gms/internal/ads/zzuu;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzacg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzv:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzacg;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzuv;Landroid/view/Surface;)V

    return-object v0
.end method

.method public final zzaU(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaec;->zze()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaec;->zzd(Lcom/google/android/gms/internal/ads/zzv;)Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaeb; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0x1b58

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zziq;->zzP(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzv;ZI)Lcom/google/android/gms/internal/ads/zzjd;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zzaV(Lcom/google/android/gms/internal/ads/zzio;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzk:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaL()Lcom/google/android/gms/internal/ads/zzuv;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzuv;->zzb:Ljava/lang/String;

    const-string v2, "video/av01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzij;->zzc()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzio;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzabv;->zzb(Ljava/nio/ByteBuffer;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzT:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzaW(Lcom/google/android/gms/internal/ads/zzio;)I

    move-result p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_2

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzE:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzE:I

    return-void
.end method

.method public final zzaW(Lcom/google/android/gms/internal/ads/zzio;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzF:Lcom/google/android/gms/internal/ads/zzna;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzbw(Lcom/google/android/gms/internal/ads/zzio;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzbv(Lcom/google/android/gms/internal/ads/zzio;)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x20

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzaX(Lcom/google/android/gms/internal/ads/zzio;)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzbv(Lcom/google/android/gms/internal/ads/zzio;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzbw(Lcom/google/android/gms/internal/ads/zzio;)Z

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzm:Lcom/google/android/gms/internal/ads/zzadd;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzadd;->zzb(J)J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzl:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzij;->zze()Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzij;->zzf()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzio;->zza()V

    :goto_1
    move v1, v3

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzk:Lcom/google/android/gms/internal/ads/zzabv;

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaL()Lcom/google/android/gms/internal/ads/zzuv;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzuv;->zzb:Ljava/lang/String;

    const-string v5, "video/av01"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzio;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_8

    if-nez v0, :cond_5

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzT:I

    if-gtz v5, :cond_6

    :cond_5
    move v5, v3

    goto :goto_2

    :cond_6
    move v5, v1

    :goto_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzabv;->zza(Ljava/nio/ByteBuffer;Z)I

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzio;->zza()V

    goto :goto_1

    :cond_7
    invoke-virtual {v4}, Ljava/nio/Buffer;->limit()I

    move-result v5

    if-eq v2, v5, :cond_8

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzo:Lcom/google/android/gms/internal/ads/zzacl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzacl;->zzc:I

    add-int/2addr v5, v2

    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    if-ge v5, v4, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzio;->zzk()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzio;->zzc:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_8
    :goto_3
    if-eqz v1, :cond_a

    if-eqz v0, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zziu;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zziu;->zzd:I

    add-int/2addr v0, v3

    iput v0, p1, Lcom/google/android/gms/internal/ads/zziu;->zzd:I

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzn:Ljava/util/PriorityQueue;

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzT:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzT:I

    :cond_a
    :goto_4
    return v1
.end method

.method public final zzaZ(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvc;->zzaZ(J)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzE:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzE:I

    return-void
.end method

.method public final zzaa()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzba()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzaec;->zzh(Z)Z

    move-result v0

    return v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaI()Lcom/google/android/gms/internal/ads/zzus;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzi:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzadc;->zzi(Z)Z

    move-result v0

    return v0
.end method

.method public final zzab()Z
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzab()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaec;->zzj()Z

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

.method public final zzae(Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzv;)I
    .locals 12

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzas;->zzb(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x80

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zze:Landroid/content/Context;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzv;->zzs:Lcom/google/android/gms/internal/ads/zzq;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    invoke-static {v1, p1, p2, v3, v5}, Lcom/google/android/gms/internal/ads/zzacm;->zzbs(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzv;ZZ)Ljava/util/List;

    move-result-object v6

    if-eqz v3, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1, p1, p2, v5, v5}, Lcom/google/android/gms/internal/ads/zzacm;->zzbs(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzv;ZZ)Ljava/util/List;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v2, 0x81

    goto/16 :goto_6

    :cond_3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzvc;->zzbj(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v2, 0x82

    goto/16 :goto_6

    :cond_4
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzuv;

    invoke-virtual {v7, v1, p2}, Lcom/google/android/gms/internal/ads/zzuv;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v8

    if-nez v8, :cond_6

    move v9, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzuv;

    invoke-virtual {v10, v1, p2}, Lcom/google/android/gms/internal/ads/zzuv;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v8, v4

    move v6, v5

    move-object v7, v10

    goto :goto_2

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    move v6, v4

    :goto_2
    if-eq v4, v8, :cond_7

    const/4 v9, 0x3

    goto :goto_3

    :cond_7
    const/4 v9, 0x4

    :goto_3
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/ads/zzuv;->zze(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v10

    if-eq v4, v10, :cond_8

    const/16 v10, 0x8

    goto :goto_4

    :cond_8
    const/16 v10, 0x10

    :goto_4
    iget-boolean v7, v7, Lcom/google/android/gms/internal/ads/zzuv;->zzg:Z

    if-eq v4, v7, :cond_9

    move v7, v5

    goto :goto_5

    :cond_9
    const/16 v7, 0x40

    :goto_5
    if-eq v4, v6, :cond_a

    move v2, v5

    :cond_a
    const-string v6, "video/dolby-vision"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzacj;->zza(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v2, 0x100

    :cond_b
    if-eqz v8, :cond_c

    invoke-static {v1, p1, p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzacm;->zzbs(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzv;ZZ)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzvo;->zze(Landroid/content/Context;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzv;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzuv;

    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzuv;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzuv;->zze(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 v5, 0x20

    :cond_c
    or-int p1, v9, v10

    or-int/2addr p1, v5

    or-int/2addr p1, v7

    or-int/2addr v2, p1

    :goto_6
    return v2
.end method

.method public final zzaf(Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzv;Z)Ljava/util/List;
    .locals 1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzacm;->zze:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p3, p1, p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzacm;->zzbs(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzve;Lcom/google/android/gms/internal/ads/zzv;ZZ)Ljava/util/List;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzvo;->zze(Landroid/content/Context;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzv;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzah(Lcom/google/android/gms/internal/ads/zzuv;Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaCrypto;F)Lcom/google/android/gms/internal/ads/zzup;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzJ()[Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    array-length v5, v4

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzacm;->zzbm(Lcom/google/android/gms/internal/ads/zzuv;Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v6

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    const/4 v11, -0x1

    const/4 v13, 0x1

    if-ne v5, v13, :cond_1

    if-eq v6, v11, :cond_0

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzacm;->zzaw(Lcom/google/android/gms/internal/ads/zzuv;Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v4

    if-eq v4, v11, :cond_0

    int-to-float v5, v6

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzacl;

    invoke-direct {v4, v8, v7, v6}, Lcom/google/android/gms/internal/ads/zzacl;-><init>(III)V

    move/from16 v16, v7

    move/from16 v17, v8

    goto/16 :goto_e

    :cond_1
    move v12, v7

    move v10, v8

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v14, v5, :cond_6

    aget-object v9, v4, v14

    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zzv;->zzE:Lcom/google/android/gms/internal/ads/zzi;

    if-eqz v13, :cond_2

    iget-object v11, v9, Lcom/google/android/gms/internal/ads/zzv;->zzE:Lcom/google/android/gms/internal/ads/zzi;

    if-nez v11, :cond_2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzt;->zzD(Lcom/google/android/gms/internal/ads/zzi;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v9

    :cond_2
    invoke-virtual {v1, v2, v9}, Lcom/google/android/gms/internal/ads/zzuv;->zzf(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zziv;

    move-result-object v11

    iget v11, v11, Lcom/google/android/gms/internal/ads/zziv;->zzd:I

    if-eqz v11, :cond_5

    iget v11, v9, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    const/4 v13, -0x1

    if-eq v11, v13, :cond_4

    move-object/from16 v16, v4

    iget v4, v9, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    if-ne v4, v13, :cond_3

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    move-object/from16 v16, v4

    goto :goto_1

    :goto_2
    or-int/2addr v15, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v4, v9, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v1, v9}, Lcom/google/android/gms/internal/ads/zzacm;->zzbm(Lcom/google/android/gms/internal/ads/zzuv;Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v6, v4

    goto :goto_3

    :cond_5
    move-object/from16 v16, v4

    const/4 v13, -0x1

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move v11, v13

    move-object/from16 v4, v16

    const/4 v13, 0x1

    goto :goto_0

    :cond_6
    if-eqz v15, :cond_11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x2c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/2addr v4, v5

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Resolutions unknown. Codec max resolution: "

    const-string v5, "x"

    invoke-static {v9, v4, v10, v5, v12}, Lcom/google/android/gms/ads/internal/util/client/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v9, "MediaCodecVideoRenderer"

    invoke-static {v9, v4}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    if-le v7, v8, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_8

    move v13, v7

    :goto_5
    const/4 v11, 0x1

    goto :goto_6

    :cond_8
    move v13, v8

    goto :goto_5

    :goto_6
    if-eq v11, v4, :cond_9

    move v11, v7

    goto :goto_7

    :cond_9
    move v11, v8

    :goto_7
    sget-object v14, Lcom/google/android/gms/internal/ads/zzacm;->zzb:[I

    const/4 v15, 0x0

    :goto_8
    const/16 v3, 0x9

    if-ge v15, v3, :cond_10

    int-to-float v3, v11

    move/from16 v16, v7

    int-to-float v7, v13

    move/from16 v17, v8

    aget v8, v14, v15

    move-object/from16 v18, v14

    int-to-float v14, v8

    if-le v8, v13, :cond_a

    div-float/2addr v3, v7

    mul-float/2addr v3, v14

    float-to-int v3, v3

    if-gt v3, v11, :cond_b

    :cond_a
    :goto_9
    const/4 v3, 0x0

    goto :goto_c

    :cond_b
    const/4 v7, 0x1

    if-eq v7, v4, :cond_c

    move v14, v8

    goto :goto_a

    :cond_c
    move v14, v3

    :goto_a
    if-ne v7, v4, :cond_d

    goto :goto_b

    :cond_d
    move v8, v3

    :goto_b
    invoke-virtual {v1, v14, v8}, Lcom/google/android/gms/internal/ads/zzuv;->zzi(II)Landroid/graphics/Point;

    move-result-object v3

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzv;->zzz:F

    if-eqz v3, :cond_e

    float-to-double v7, v7

    iget v14, v3, Landroid/graphics/Point;->x:I

    move/from16 v19, v4

    iget v4, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v14, v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzuv;->zzg(IID)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_c

    :cond_e
    move/from16 v19, v4

    :cond_f
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v16

    move/from16 v8, v17

    move-object/from16 v14, v18

    move/from16 v4, v19

    goto :goto_8

    :cond_10
    move/from16 v16, v7

    move/from16 v17, v8

    goto :goto_9

    :goto_c
    if-eqz v3, :cond_12

    iget v4, v3, Landroid/graphics/Point;->x:I

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzt;->zzu(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/ads/zzt;->zzv(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzacm;->zzaw(Lcom/google/android/gms/internal/ads/zzuv;Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v3, 0x23

    invoke-static {v10, v3}, LC/a;->e(II)I

    move-result v4

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/2addr v4, v3

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Codec max resolution adjusted to: "

    invoke-static {v7, v3, v10, v5, v12}, Lcom/google/android/gms/ads/internal/util/client/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_11
    move/from16 v16, v7

    move/from16 v17, v8

    :cond_12
    :goto_d
    new-instance v4, Lcom/google/android/gms/internal/ads/zzacl;

    invoke-direct {v4, v10, v12, v6}, Lcom/google/android/gms/internal/ads/zzacl;-><init>(III)V

    :goto_e
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzuv;->zzc:Ljava/lang/String;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzacm;->zzo:Lcom/google/android/gms/internal/ads/zzacl;

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzacm;->zzh:Z

    new-instance v6, Landroid/media/MediaFormat;

    invoke-direct {v6}, Landroid/media/MediaFormat;-><init>()V

    const-string v7, "mime"

    invoke-virtual {v6, v7, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "width"

    move/from16 v7, v17

    invoke-virtual {v6, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "height"

    move/from16 v7, v16

    invoke-virtual {v6, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzei;->zza(Landroid/media/MediaFormat;Ljava/util/List;)V

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzv;->zzz:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v8, v3, v7

    if-eqz v8, :cond_13

    const-string v8, "frame-rate"

    invoke-virtual {v6, v8, v3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_13
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzv;->zzA:I

    const-string v8, "rotation-degrees"

    invoke-static {v6, v8, v3}, Lcom/google/android/gms/internal/ads/zzei;->zzb(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzv;->zzE:Lcom/google/android/gms/internal/ads/zzi;

    if-eqz v3, :cond_14

    const-string v8, "color-transfer"

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzi;->zzd:I

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzei;->zzb(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v8, "color-standard"

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzi;->zzb:I

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzei;->zzb(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v8, "color-range"

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzi;->zzc:I

    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzei;->zzb(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzi;->zze:[B

    if-eqz v3, :cond_14

    const-string v8, "hdr-static-info"

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v6, v8, v3}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_14
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v8, "video/dolby-vision"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzdp;->zze(Lcom/google/android/gms/internal/ads/zzv;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v8, "profile"

    invoke-static {v6, v8, v3}, Lcom/google/android/gms/internal/ads/zzei;->zzb(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_15
    iget v3, v4, Lcom/google/android/gms/internal/ads/zzacl;->zza:I

    const-string v8, "max-width"

    invoke-virtual {v6, v8, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v3, v4, Lcom/google/android/gms/internal/ads/zzacl;->zzb:I

    const-string v8, "max-height"

    invoke-virtual {v6, v8, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v3, v4, Lcom/google/android/gms/internal/ads/zzacl;->zzc:I

    const-string v4, "max-input-size"

    invoke-static {v6, v4, v3}, Lcom/google/android/gms/internal/ads/zzei;->zzb(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const-string v3, "priority"

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move/from16 v3, p4

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_16

    const-string v7, "operating-rate"

    invoke-virtual {v6, v7, v3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_16
    if-eqz v5, :cond_17

    const-string v3, "no-post-process"

    const/4 v5, 0x1

    invoke-virtual {v6, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "auto-frc"

    invoke-virtual {v6, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_17
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x23

    if-lt v3, v5, :cond_18

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzacm;->zzN:I

    neg-int v3, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const-string v4, "importance"

    invoke-virtual {v6, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_18
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzvc;->zzbi(Landroid/media/MediaFormat;)V

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzbz(Lcom/google/android/gms/internal/ads/zzuv;)Landroid/view/Surface;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz v4, :cond_19

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzacm;->zze:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfk;->zzR(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_19

    const-string v4, "allow-frame-drop"

    const/4 v5, 0x0

    invoke-virtual {v6, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_19
    const/4 v4, 0x0

    invoke-static {v1, v6, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzup;->zzb(Lcom/google/android/gms/internal/ads/zzuv;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzv;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/google/android/gms/internal/ads/zzup;

    move-result-object v1

    return-object v1
.end method

.method public final zzai(Lcom/google/android/gms/internal/ads/zzuv;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zziv;
    .locals 8

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzuv;->zzf(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zziv;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zziv;->zze:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzo:Lcom/google/android/gms/internal/ads/zzacl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p3, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzacl;->zza:I

    if-gt v3, v4, :cond_0

    iget v3, p3, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzacl;->zzb:I

    if-le v3, v4, :cond_1

    :cond_0
    or-int/lit16 v1, v1, 0x100

    :cond_1
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzacm;->zzbm(Lcom/google/android/gms/internal/ads/zzuv;Lcom/google/android/gms/internal/ads/zzv;)I

    move-result v3

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzacl;->zzc:I

    if-le v3, v2, :cond_2

    or-int/lit8 v1, v1, 0x40

    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzA:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_4

    iget v2, p2, Lcom/google/android/gms/internal/ads/zzv;->zzz:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_4

    iget v4, p3, Lcom/google/android/gms/internal/ads/zzv;->zzz:F

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_4

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_3

    if-ne v2, v3, :cond_4

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MiTV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzuv;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/zziv;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    move v7, v1

    move v6, v2

    goto :goto_0

    :cond_5
    iget v0, v0, Lcom/google/android/gms/internal/ads/zziv;->zzd:I

    move v6, v0

    move v7, v2

    :goto_0
    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zziv;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;II)V

    return-object p1
.end method

.method public final zzak(FLcom/google/android/gms/internal/ads/zzv;[Lcom/google/android/gms/internal/ads/zzv;)F
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    move v2, v1

    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_1

    aget-object v3, p3, v0

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzv;->zzz:F

    cmpl-float v4, v3, v1

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p3, v2, v1

    if-nez p3, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    mul-float/2addr v2, p1

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzF:Lcom/google/android/gms/internal/ads/zzna;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaL()Lcom/google/android/gms/internal/ads/zzuv;

    move-result-object p1

    if-eqz p1, :cond_4

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzuv;->zzh(II)F

    move-result p1

    cmpl-float p2, v2, v1

    if-eqz p2, :cond_3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :cond_3
    return p1

    :cond_4
    return v2
.end method

.method public final zzal(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzup;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzg:Lcom/google/android/gms/internal/ads/zzadw;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzadw;->zzb(Ljava/lang/String;JJ)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzbq(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzp:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaL()Lcom/google/android/gms/internal/ads/zzuv;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1d

    const/4 p4, 0x0

    if-lt p2, p3, :cond_1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzuv;->zzb:Ljava/lang/String;

    const-string p3, "video/x-vnd.on2.vp9"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzuv;->zzb()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object p1

    array-length p2, p1

    move p3, p4

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object p5, p1, p3

    iget p5, p5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 p6, 0x4000

    if-ne p5, p6, :cond_0

    const/4 p4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzq:Z

    return-void
.end method

.method public final zzam(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzg:Lcom/google/android/gms/internal/ads/zzadw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzh(Ljava/lang/String;)V

    return-void
.end method

.method public final zzan(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzg:Lcom/google/android/gms/internal/ads/zzadw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzj(Ljava/lang/Exception;)V

    return-void
.end method

.method public final zzao(Lcom/google/android/gms/internal/ads/zzlp;)Lcom/google/android/gms/internal/ads/zziv;
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzvc;->zzao(Lcom/google/android/gms/internal/ads/zzlp;)Lcom/google/android/gms/internal/ads/zziv;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlp;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzg:Lcom/google/android/gms/internal/ads/zzadw;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzadw;->zzc(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zziv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzm:Lcom/google/android/gms/internal/ads/zzadd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzd()V

    :cond_0
    return-object v0
.end method

.method public final zzap(Lcom/google/android/gms/internal/ads/zzv;Landroid/media/MediaFormat;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaI()Lcom/google/android/gms/internal/ads/zzus;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzacm;->zzz:I

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzus;->zzq(I)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "crop-right"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "crop-top"

    const-string v6, "crop-bottom"

    const-string v7, "crop-left"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v8

    goto :goto_0

    :cond_1
    move v4, v9

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v3, v7

    add-int/2addr v3, v8

    goto :goto_1

    :cond_2
    const-string v3, "width"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v4, v2

    add-int/2addr v4, v8

    goto :goto_2

    :cond_3
    const-string v4, "height"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    :goto_2
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzv;->zzB:F

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzv;->zzA:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_4

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_5

    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    div-float v2, v5, v2

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    :cond_5
    new-instance v5, Lcom/google/android/gms/internal/ads/zzbv;

    invoke-direct {v5, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzbv;-><init>(IIF)V

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzacm;->zzL:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz v10, :cond_7

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzacm;->zzS:Z

    if-eqz v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzt;->zzu(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzv(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzt;->zzA(F)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v12

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzacm;->zzt:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzacm;->zzu:Ljava/util/List;

    if-nez v1, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvm;->zzi()Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v1

    :cond_6
    move-object/from16 v16, v1

    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbh()J

    move-result-wide v13

    invoke-interface/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzaec;->zzs(ILcom/google/android/gms/internal/ads/zzv;JILjava/util/List;)V

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzacm;->zzt:I

    goto :goto_3

    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzacm;->zzi:Lcom/google/android/gms/internal/ads/zzadc;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzv;->zzz:F

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzadc;->zze(F)V

    :goto_3
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzacm;->zzS:Z

    return-void
.end method

.method public final zzaq(JJJZZ)Z
    .locals 0

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz p5, :cond_0

    iget-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzf:Z

    if-eqz p5, :cond_0

    iget-wide p5, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzQ:J

    neg-long p5, p5

    sub-long/2addr p3, p5

    :cond_0
    const-wide/32 p5, -0x7a120

    cmp-long p1, p1, p5

    const/4 p2, 0x0

    if-gez p1, :cond_4

    if-nez p7, :cond_4

    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/internal/ads/zziq;->zzR(J)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzG:J

    const/4 p3, 0x1

    if-eqz p8, :cond_2

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zziu;

    iget p5, p4, Lcom/google/android/gms/internal/ads/zziu;->zzd:I

    add-int/2addr p5, p1

    iput p5, p4, Lcom/google/android/gms/internal/ads/zziu;->zzd:I

    iget p1, p4, Lcom/google/android/gms/internal/ads/zziu;->zzf:I

    iget p6, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzE:I

    add-int/2addr p1, p6

    iput p1, p4, Lcom/google/android/gms/internal/ads/zziu;->zzf:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzn:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result p1

    add-int/2addr p1, p5

    iput p1, p4, Lcom/google/android/gms/internal/ads/zziu;->zzd:I

    goto :goto_0

    :cond_2
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zziu;

    iget p5, p4, Lcom/google/android/gms/internal/ads/zziu;->zzj:I

    add-int/2addr p5, p3

    iput p5, p4, Lcom/google/android/gms/internal/ads/zziu;->zzj:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzn:Ljava/util/PriorityQueue;

    invoke-virtual {p4}, Ljava/util/PriorityQueue;->size()I

    move-result p4

    add-int/2addr p4, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzE:I

    invoke-virtual {p0, p4, p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzaz(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaN()Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzaec;->zzg(Z)V

    :cond_3
    return p3

    :cond_4
    :goto_1
    return p2
.end method

.method public final zzar()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaec;->zzi()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzQ:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbh()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzQ:J

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    neg-long v0, v0

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzo(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzi:Lcom/google/android/gms/internal/ads/zzadc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzadc;->zza(I)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzS:Z

    return-void
.end method

.method public final zzas(JJLcom/google/android/gms/internal/ads/zzus;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzv;)Z
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v2, p5

    move/from16 v3, p7

    move-wide/from16 v14, p10

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbg()J

    move-result-wide v0

    sub-long v4, v14, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzn:Ljava/util/PriorityQueue;

    invoke-virtual {v7}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v14

    if-gez v8, :cond_0

    invoke-virtual {v7}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v1, v0}, Lcom/google/android/gms/internal/ads/zzacm;->zzaz(II)V

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    const/4 v1, 0x1

    if-eqz v7, :cond_2

    if-eqz p12, :cond_1

    if-nez p13, :cond_1

    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzacm;->zzax(Lcom/google/android/gms/internal/ads/zzus;IJ)V

    return v1

    :cond_1
    new-instance v8, Lcom/google/android/gms/internal/ads/zzaci;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzaci;-><init>(Lcom/google/android/gms/internal/ads/zzacm;Lcom/google/android/gms/internal/ads/zzus;IJ)V

    invoke-interface {v7, v14, v15, v8}, Lcom/google/android/gms/internal/ads/zzaec;->zzu(JLcom/google/android/gms/internal/ads/zzaea;)Z

    move-result v0

    return v0

    :cond_2
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzi:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbh()J

    move-result-wide v16

    iget-object v12, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzj:Lcom/google/android/gms/internal/ads/zzada;

    move-wide/from16 v8, p10

    move-wide/from16 v10, p1

    move-object/from16 v19, v12

    move-wide/from16 v12, p3

    move-wide v0, v14

    move-wide/from16 v14, v16

    move/from16 v16, p12

    move/from16 v17, p13

    move-object/from16 v18, v19

    invoke-virtual/range {v7 .. v18}, Lcom/google/android/gms/internal/ads/zzadc;->zzk(JJJJZZLcom/google/android/gms/internal/ads/zzada;)I

    move-result v7

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzm:Lcom/google/android/gms/internal/ads/zzadd;

    if-eqz v8, :cond_4

    const/4 v9, 0x5

    if-eq v7, v9, :cond_3

    const/4 v9, 0x4

    if-eq v7, v9, :cond_3

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/ads/zzada;->zza()J

    move-result-wide v9

    invoke-virtual {v8, v0, v1, v9, v10}, Lcom/google/android/gms/internal/ads/zzadd;->zza(JJ)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz v7, :cond_9

    const/4 v0, 0x1

    if-eq v7, v0, :cond_7

    const/4 v1, 0x2

    if-eq v7, v1, :cond_6

    const/4 v1, 0x3

    if-eq v7, v1, :cond_5

    goto :goto_1

    :goto_3
    return v0

    :cond_5
    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzacm;->zzax(Lcom/google/android/gms/internal/ads/zzus;IJ)V

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/ads/zzada;->zza()J

    move-result-wide v1

    invoke-virtual {v6, v1, v2}, Lcom/google/android/gms/internal/ads/zzacm;->zzaA(J)V

    return v0

    :cond_6
    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzacm;->zzay(Lcom/google/android/gms/internal/ads/zzus;IJ)V

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/ads/zzada;->zza()J

    move-result-wide v1

    invoke-virtual {v6, v1, v2}, Lcom/google/android/gms/internal/ads/zzacm;->zzaA(J)V

    return v0

    :cond_7
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/ads/zzada;->zzb()J

    move-result-wide v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/ads/zzada;->zza()J

    move-result-wide v7

    iget-wide v9, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzK:J

    cmp-long v9, v0, v9

    if-nez v9, :cond_8

    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzacm;->zzax(Lcom/google/android/gms/internal/ads/zzus;IJ)V

    goto :goto_4

    :cond_8
    move-object/from16 p8, p0

    move-wide/from16 p9, v4

    move-wide/from16 p11, v0

    move-object/from16 p13, p14

    invoke-direct/range {p8 .. p13}, Lcom/google/android/gms/internal/ads/zzacm;->zzbx(JJLcom/google/android/gms/internal/ads/zzv;)V

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v4

    move-wide/from16 p13, v0

    invoke-virtual/range {p8 .. p14}, Lcom/google/android/gms/internal/ads/zzacm;->zzaB(Lcom/google/android/gms/internal/ads/zzus;IJJ)V

    :goto_4
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzacm;->zzaA(J)V

    iput-wide v0, v6, Lcom/google/android/gms/internal/ads/zzacm;->zzK:J

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zziq;->zzM()Lcom/google/android/gms/internal/ads/zzdo;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdo;->zzc()J

    move-result-wide v0

    move-object/from16 p8, p0

    move-wide/from16 p9, v4

    move-wide/from16 p11, v0

    move-object/from16 p13, p14

    invoke-direct/range {p8 .. p13}, Lcom/google/android/gms/internal/ads/zzacm;->zzbx(JJLcom/google/android/gms/internal/ads/zzv;)V

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v4

    move-wide/from16 p13, v0

    invoke-virtual/range {p8 .. p14}, Lcom/google/android/gms/internal/ads/zzacm;->zzaB(Lcom/google/android/gms/internal/ads/zzus;IJJ)V

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/internal/ads/zzada;->zza()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/internal/ads/zzacm;->zzaA(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public final zzat(Lcom/google/android/gms/internal/ads/zzis;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzg:Lcom/google/android/gms/internal/ads/zzadw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzadw;->zzk(Lcom/google/android/gms/internal/ads/zzis;)V

    return-void
.end method

.method public final zzau()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaec;->zzi()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbe()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbe()J

    :cond_1
    return-void
.end method

.method public final zzav(Lcom/google/android/gms/internal/ads/zzio;)V
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzq:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzio;->zzf:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_2

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    const/4 v1, 0x4

    if-ne v3, v1, :cond_2

    if-eqz v4, :cond_1

    if-ne v4, v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaI()Lcom/google/android/gms/internal/ads/zzus;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "hdr10-plus-info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzus;->zzp(Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final zzax(Lcom/google/android/gms/internal/ads/zzus;IJ)V
    .locals 0

    const-string p3, "skipVideoBuffer"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzus;->zzc(IZ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zziu;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zziu;->zzf:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/gms/internal/ads/zziu;->zzf:I

    return-void
.end method

.method public final zzay(Lcom/google/android/gms/internal/ads/zzus;IJ)V
    .locals 0

    const-string p3, "dropVideoBuffer"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzus;->zzc(IZ)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzaz(II)V

    return-void
.end method

.method public final zzaz(II)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zziu;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zziu;->zzh:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zziu;->zzh:I

    iget v1, v0, Lcom/google/android/gms/internal/ads/zziu;->zzg:I

    add-int/2addr p1, p2

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zziu;->zzg:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzC:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzC:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzD:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzD:I

    iget p1, v0, Lcom/google/android/gms/internal/ads/zziu;->zzi:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/internal/ads/zziu;->zzi:I

    return-void
.end method

.method public final synthetic zzbo()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacm;->zzbB()V

    return-void
.end method

.method public final synthetic zzbp()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzv:Landroid/view/Surface;

    return-object v0
.end method

.method public final zzx(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v1, 0x7

    if-eq p1, v1, :cond_9

    const/16 v1, 0xa

    if-eq p1, v1, :cond_8

    const/4 v1, 0x4

    if-eq p1, v1, :cond_7

    const/4 v1, 0x5

    if-eq p1, v1, :cond_5

    const/16 v1, 0xd

    if-eq p1, v1, :cond_3

    const/16 v1, 0xe

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvc;->zzx(ILjava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzF:Lcom/google/android/gms/internal/ads/zzna;

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    check-cast p2, Lcom/google/android/gms/internal/ads/zzna;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzF:Lcom/google/android/gms/internal/ads/zzna;

    if-nez p2, :cond_1

    move v0, v1

    :cond_1
    if-eq p1, v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbd()Z

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzv:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzacm;->zzbu(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzacm;

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzx(ILjava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzN:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaI()Lcom/google/android/gms/internal/ads/zzus;

    move-result-object p1

    if-eqz p1, :cond_a

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p2, v0, :cond_a

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzN:I

    neg-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v1, "importance"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzus;->zzp(Landroid/os/Bundle;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzet;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzet;->zza()I

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzet;->zzb()I

    move-result p1

    if-eqz p1, :cond_a

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzx:Lcom/google/android/gms/internal/ads/zzet;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzv:Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzaec;->zzp(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzet;)V

    return-void

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/util/List;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbr;->zza:Lcom/google/android/gms/internal/ads/zzgvm;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaec;->zze()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaec;->zzf()V

    return-void

    :cond_4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzu:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz p1, :cond_a

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzaec;->zzn(Ljava/util/List;)V

    return-void

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzA:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz p2, :cond_6

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzaec;->zzr(I)V

    return-void

    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzi:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzadc;->zzm(I)V

    return-void

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzz:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaI()Lcom/google/android/gms/internal/ads/zzus;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzus;->zzq(I)V

    return-void

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzO:I

    if-eq p2, p1, :cond_a

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzO:I

    return-void

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzacz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzP:Lcom/google/android/gms/internal/ads/zzacz;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz p1, :cond_a

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzaec;->zzl(Lcom/google/android/gms/internal/ads/zzacz;)V

    :cond_a
    return-void

    :cond_b
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzacm;->zzbu(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzy(ZZ)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvc;->zzy(ZZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzK()Lcom/google/android/gms/internal/ads/zzmw;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzg:Lcom/google/android/gms/internal/ads/zzadw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zziu;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzadw;->zza(Lcom/google/android/gms/internal/ads/zziu;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzs:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzu:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zze:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzi:Lcom/google/android/gms/internal/ads/zzadc;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzacq;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzacq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzadc;)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzacq;->zza(Z)Lcom/google/android/gms/internal/ads/zzacq;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzl:J

    neg-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzacq;->zzc(J)Lcom/google/android/gms/internal/ads/zzacq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzM()Lcom/google/android/gms/internal/ads/zzdo;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzacq;->zzb(Lcom/google/android/gms/internal/ads/zzdo;)Lcom/google/android/gms/internal/ads/zzacq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzacq;->zzd()Lcom/google/android/gms/internal/ads/zzacy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzacy;->zza(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzacy;->zzb(I)Lcom/google/android/gms/internal/ads/zzaec;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzs:Z

    :cond_1
    xor-int/lit8 p1, p2, 0x1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    if-eqz p2, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzach;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzach;-><init>(Lcom/google/android/gms/internal/ads/zzacm;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzc(Lcom/google/android/gms/internal/ads/zzadz;Ljava/util/concurrent/Executor;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzP:Lcom/google/android/gms/internal/ads/zzacz;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzaec;->zzl(Lcom/google/android/gms/internal/ads/zzacz;)V

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzv:Landroid/view/Surface;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzx:Lcom/google/android/gms/internal/ads/zzet;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzet;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzet;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzv:Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzx:Lcom/google/android/gms/internal/ads/zzet;

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaec;->zzp(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzet;)V

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzA:I

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzaec;->zzr(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzbb()F

    move-result v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzaec;->zzm(F)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzu:Ljava/util/List;

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzr:Lcom/google/android/gms/internal/ads/zzaec;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzaec;->zzn(Ljava/util/List;)V

    :cond_4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzt:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzvc;->zzaD()V

    return-void

    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzi:Lcom/google/android/gms/internal/ads/zzadc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziq;->zzM()Lcom/google/android/gms/internal/ads/zzdo;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzadc;->zzg(Lcom/google/android/gms/internal/ads/zzdo;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzadc;->zza(I)V

    return-void
.end method

.method public final zzz([Lcom/google/android/gms/internal/ads/zzv;JJLcom/google/android/gms/internal/ads/zzwt;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/zzvc;->zzz([Lcom/google/android/gms/internal/ads/zzv;JJLcom/google/android/gms/internal/ads/zzwt;)V

    invoke-direct {p0, p6}, Lcom/google/android/gms/internal/ads/zzacm;->zzbt(Lcom/google/android/gms/internal/ads/zzwt;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacm;->zzm:Lcom/google/android/gms/internal/ads/zzadd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzd()V

    :cond_0
    return-void
.end method
