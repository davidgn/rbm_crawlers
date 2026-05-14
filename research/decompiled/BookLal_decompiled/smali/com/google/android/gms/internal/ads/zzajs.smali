.class public final Lcom/google/android/gms/internal/ads/zzajs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaff;


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[B

.field private static final zzc:[B

.field private static final zzd:[B

.field private static final zze:[B

.field private static final zzf:Ljava/util/UUID;

.field private static final zzg:Ljava/util/Map;


# instance fields
.field private zzA:J

.field private zzB:J

.field private zzC:Z

.field private zzD:Z

.field private zzE:Lcom/google/android/gms/internal/ads/zzajr;

.field private zzF:Z

.field private zzG:I

.field private zzH:J

.field private final zzI:Landroid/util/SparseArray;

.field private zzJ:Z

.field private zzK:J

.field private zzL:I

.field private zzM:J

.field private zzN:J

.field private zzO:I

.field private zzP:Z

.field private zzQ:J

.field private zzR:J

.field private zzS:J

.field private zzT:Z

.field private zzU:I

.field private zzV:J

.field private zzW:J

.field private zzX:I

.field private zzY:I

.field private zzZ:[I

.field private zzaa:I

.field private zzab:I

.field private zzac:I

.field private zzad:I

.field private zzae:Z

.field private zzaf:J

.field private zzag:I

.field private zzah:I

.field private zzai:I

.field private zzaj:Z

.field private zzak:Z

.field private zzal:Z

.field private zzam:I

.field private zzan:B

.field private zzao:Z

.field private zzap:Lcom/google/android/gms/internal/ads/zzafi;

.field private final zzaq:Lcom/google/android/gms/internal/ads/zzajl;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzaju;

.field private final zzi:Landroid/util/SparseArray;

.field private final zzj:Z

.field private final zzk:Z

.field private final zzl:Lcom/google/android/gms/internal/ads/zzamt;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzq:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzr:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzs:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzt:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzu:Lcom/google/android/gms/internal/ads/zzes;

.field private final zzv:Lcom/google/android/gms/internal/ads/zzes;

.field private zzw:Ljava/nio/ByteBuffer;

.field private zzx:J

.field private zzy:J

.field private zzz:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzajs;->zzb:[B

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzajs;->zzc:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajs;->zzd:[B

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajs;->zze:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajs;->zzf:Ljava/util/UUID;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajs;->zzg:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzajl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajl;-><init>()V

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzamt;->zza:Lcom/google/android/gms/internal/ads/zzamt;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzajs;-><init>(Lcom/google/android/gms/internal/ads/zzajl;ILcom/google/android/gms/internal/ads/zzamt;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzajl;ILcom/google/android/gms/internal/ads/zzamt;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzy:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzz:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzA:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzB:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzK:J

    const/4 v4, -0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzL:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzM:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzN:J

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzO:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzQ:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzR:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzS:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzaq:Lcom/google/android/gms/internal/ads/zzajl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzajn;-><init>(Lcom/google/android/gms/internal/ads/zzajs;[B)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzajl;->zza(Lcom/google/android/gms/internal/ads/zzajm;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzl:Lcom/google/android/gms/internal/ads/zzamt;

    new-instance p1, Landroid/util/SparseArray;

    .line 3
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzI:Landroid/util/SparseArray;

    and-int/lit8 p1, p2, 0x1

    const/4 p3, 0x1

    xor-int/2addr p1, p3

    const/4 v0, 0x0

    if-eq p3, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzj:Z

    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_1

    move v0, p3

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzk:Z

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaju;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaju;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzh:Lcom/google/android/gms/internal/ads/zzaju;

    new-instance p1, Landroid/util/SparseArray;

    .line 5
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzi:Landroid/util/SparseArray;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzo:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    .line 7
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzes;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzp:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    .line 8
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzq:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgo;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzes;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzm:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    .line 10
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzn:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    .line 11
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzes;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzr:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    .line 12
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzes;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzs:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    const/16 p2, 0x8

    .line 13
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzt:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    .line 14
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzes;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzu:Lcom/google/android/gms/internal/ads/zzes;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzes;

    .line 15
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzes;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzv:Lcom/google/android/gms/internal/ads/zzes;

    new-array p1, p3, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzZ:[I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzD:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamt;I)V
    .locals 1

    .line 16
    new-instance p2, Lcom/google/android/gms/internal/ads/zzajl;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzajl;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzajs;-><init>(Lcom/google/android/gms/internal/ads/zzajl;ILcom/google/android/gms/internal/ads/zzamt;)V

    return-void
.end method

.method private static zzA([II)[I
    .locals 1

    if-nez p0, :cond_0

    new-array p0, p1, [I

    return-object p0

    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    :cond_1
    add-int/2addr v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method private final zzB()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzD:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzi:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzajr;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzajr;->zzV:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzap:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzafi;->zzv()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzD:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic zzn()[B
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzajs;->zzc:[B

    return-object v0
.end method

.method public static synthetic zzo()Ljava/util/UUID;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzajs;->zzf:Ljava/util/UUID;

    return-object v0
.end method

.method public static synthetic zzp()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzajs;->zzg:Ljava/util/Map;

    return-object v0
.end method

.method private final zzq(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Element "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1
.end method

.method private final zzr(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzJ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1a

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Element "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1
.end method

.method private final zzs(Lcom/google/android/gms/internal/ads/zzajr;JIII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzU:Lcom/google/android/gms/internal/ads/zzagt;

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzY:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzj:Lcom/google/android/gms/internal/ads/zzagr;

    move-object v1, v2

    move-object v2, v3

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzagt;->zzc(Lcom/google/android/gms/internal/ads/zzags;JIIILcom/google/android/gms/internal/ads/zzagr;)V

    goto/16 :goto_8

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzc:Ljava/lang/String;

    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "S_TEXT/WEBVTT"

    const-string v6, "S_TEXT/SSA"

    const-string v7, "S_TEXT/ASS"

    const/4 v8, 0x2

    const/4 v10, 0x0

    if-nez v4, :cond_1

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzY:I

    const-string v11, "MatroskaExtractor"

    if-le v4, v9, :cond_2

    const-string v2, "Skipping subtitle sample in laced block."

    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzW:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v12, v14

    if-nez v4, :cond_4

    const-string v2, "Skipping subtitle sample with no duration."

    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    move/from16 v2, p5

    goto/16 :goto_6

    :cond_4
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzs:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, 0x3

    sparse-switch v14, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v10

    goto :goto_2

    :sswitch_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v15

    goto :goto_2

    :sswitch_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v8

    goto :goto_2

    :sswitch_3
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v9

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, -0x1

    :goto_2
    const-wide/16 v5, 0x3e8

    if-eqz v2, :cond_8

    if-eq v2, v9, :cond_7

    if-eq v2, v8, :cond_7

    if-ne v2, v15, :cond_6

    const-string v2, "%02d:%02d:%02d.%03d"

    invoke-static {v12, v13, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzajs;->zzx(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x19

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_7
    const-string v2, "%01d:%02d:%02d:%02d"

    const-wide/16 v5, 0x2710

    invoke-static {v12, v13, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzajs;->zzx(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x15

    goto :goto_3

    :cond_8
    const-string v2, "%02d:%02d:%02d,%03d"

    invoke-static {v12, v13, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzajs;->zzx(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x13

    :goto_3
    array-length v5, v2

    invoke-static {v2, v10, v11, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzg()I

    move-result v2

    :goto_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v3

    aget-byte v3, v3, v2

    if-nez v3, :cond_9

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzf(I)V

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzY:Lcom/google/android/gms/internal/ads/zzags;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v3

    invoke-interface {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzags;->zzc(Lcom/google/android/gms/internal/ads/zzes;I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v2

    add-int v2, v2, p5

    :goto_6
    const/high16 v3, 0x10000000

    and-int v3, p4, v3

    if-eqz v3, :cond_c

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzY:I

    if-le v3, v9, :cond_b

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzv:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    goto :goto_7

    :cond_b
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzv:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v4

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzY:Lcom/google/android/gms/internal/ads/zzags;

    invoke-interface {v5, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzags;->zzd(Lcom/google/android/gms/internal/ads/zzes;II)V

    add-int/2addr v2, v4

    :cond_c
    :goto_7
    move v15, v2

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzY:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajr;->zzj:Lcom/google/android/gms/internal/ads/zzagr;

    move-wide/from16 v12, p2

    move/from16 v14, p4

    move/from16 v16, p6

    move-object/from16 v17, v1

    invoke-interface/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzags;->zze(JIIILcom/google/android/gms/internal/ads/zzagr;)V

    :goto_8
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzajs;->zzT:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c0618eb -> :sswitch_3
        0x2c065c6b -> :sswitch_2
        0x3e4ca2d8 -> :sswitch_1
        0x54c61e47 -> :sswitch_0
    .end sparse-switch
.end method

.method private final zzt(Lcom/google/android/gms/internal/ads/zzafg;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzo:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v1

    if-lt v1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzj()I

    move-result v1

    if-ge v1, p2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzj()I

    move-result v1

    add-int/2addr v1, v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzc(I)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v3

    sub-int v3, p2, v3

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzes;->zzf(I)V

    return-void
.end method

.method private final zzu(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzajr;IZ)I
    .locals 11

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzc:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzajs;->zzb:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzajs;->zzw(Lcom/google/android/gms/internal/ads/zzafg;[BI)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajs;->zzv()V

    return p1

    :cond_0
    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "S_TEXT/SSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_c

    :cond_1
    const-string v1, "S_TEXT/WEBVTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p2, Lcom/google/android/gms/internal/ads/zzajs;->zze:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzajs;->zzw(Lcom/google/android/gms/internal/ads/zzafg;[BI)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajs;->zzv()V

    return p1

    :cond_2
    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzV:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzes;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v4

    invoke-interface {p1, v4, v3, p3, v2}, Lcom/google/android/gms/internal/ads/zzafg;->zzh([BIIZ)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzl()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzr()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzafe;->zza(I)I

    move-result v4

    if-ne v4, v2, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_4

    new-array v4, v5, [B

    invoke-virtual {v0, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzafe;->zzc([B)I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v5

    add-int/lit8 v6, v4, 0x4

    if-lt v5, v6, :cond_4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzafe;->zza(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v0

    const-string v4, "audio/vnd.dts.hd"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    :cond_4
    :goto_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzY:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    iput-boolean v3, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzV:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajs;->zzB()V

    :cond_5
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzY:Lcom/google/android/gms/internal/ads/zzags;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzaj:Z

    const/4 v5, 0x4

    if-nez v4, :cond_14

    iget-boolean v4, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzh:Z

    if-eqz v4, :cond_10

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzac:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v4, v6

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzac:I

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzak:Z

    const/16 v6, 0x80

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzo:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v7

    invoke-interface {p1, v7, v3, v2}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v7

    aget-byte v7, v7, v3

    and-int/2addr v7, v6

    if-eq v7, v6, :cond_6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v4

    aget-byte v4, v4, v3

    iput-byte v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzan:B

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzak:Z

    goto :goto_1

    :cond_6
    const-string p1, "Extension bit is set in signal byte"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :cond_7
    :goto_1
    iget-byte v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzan:B

    and-int/lit8 v7, v4, 0x1

    if-ne v7, v2, :cond_11

    and-int/2addr v4, v1

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzac:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzac:I

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzao:Z

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzt:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v8

    const/16 v9, 0x8

    invoke-interface {p1, v8, v3, v9}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzao:Z

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzo:Lcom/google/android/gms/internal/ads/zzes;

    if-ne v4, v1, :cond_8

    goto :goto_2

    :cond_8
    move v6, v3

    :goto_2
    or-int/2addr v6, v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v10

    int-to-byte v6, v6

    aput-byte v6, v10, v3

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-interface {v0, v8, v2, v2}, Lcom/google/android/gms/internal/ads/zzags;->zzd(Lcom/google/android/gms/internal/ads/zzes;II)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-interface {v0, v7, v9, v2}, Lcom/google/android/gms/internal/ads/zzags;->zzd(Lcom/google/android/gms/internal/ads/zzes;II)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    add-int/2addr v6, v9

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    :cond_9
    if-ne v4, v1, :cond_11

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzal:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzo:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v6

    invoke-interface {p1, v6, v3, v2}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v4

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzam:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzal:Z

    :cond_a
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzam:I

    mul-int/2addr v4, v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzo:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v7

    invoke-interface {p1, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzam:I

    shr-int/2addr v4, v2

    add-int/2addr v4, v2

    mul-int/lit8 v7, v4, 0x6

    add-int/2addr v7, v1

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzw:Ljava/nio/ByteBuffer;

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/nio/Buffer;->capacity()I

    move-result v8

    if-ge v8, v7, :cond_c

    :cond_b
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzw:Ljava/nio/ByteBuffer;

    :cond_c
    int-to-short v4, v4

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzw:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzw:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v4, v3

    move v8, v4

    :goto_3
    iget v9, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzam:I

    if-ge v4, v9, :cond_e

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v9

    sub-int v8, v9, v8

    rem-int/lit8 v10, v4, 0x2

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzw:Ljava/nio/ByteBuffer;

    int-to-short v8, v8

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_d
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzw:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v8, v9

    goto :goto_3

    :cond_e
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    sub-int v4, p3, v4

    sub-int/2addr v4, v8

    and-int/lit8 v6, v9, 0x1

    if-ne v6, v2, :cond_f

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzw:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_f
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzw:Ljava/nio/ByteBuffer;

    int-to-short v4, v4

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzw:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzu:Lcom/google/android/gms/internal/ads/zzes;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzw:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzb([BI)V

    invoke-interface {v0, v4, v7, v2}, Lcom/google/android/gms/internal/ads/zzags;->zzd(Lcom/google/android/gms/internal/ads/zzes;II)V

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    add-int/2addr v4, v7

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    goto :goto_6

    :cond_10
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzi:[B

    if-eqz v4, :cond_11

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzr:Lcom/google/android/gms/internal/ads/zzes;

    array-length v7, v4

    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzb([BI)V

    :cond_11
    :goto_6
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzc:Ljava/lang/String;

    const-string v6, "A_OPUS"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz p4, :cond_13

    goto :goto_7

    :cond_12
    iget p4, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzg:I

    if-lez p4, :cond_13

    :goto_7
    iget p4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzac:I

    const/high16 v4, 0x10000000

    or-int/2addr p4, v4

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzac:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzv:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {p4, v3}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzr:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result p4

    add-int/2addr p4, p3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    sub-int/2addr p4, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzo:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    shr-int/lit8 v6, p4, 0x18

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v7

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v7, v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v6

    shr-int/lit8 v7, p4, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    shr-int/lit8 v6, p4, 0x8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v7

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v7, v1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v6

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    const/4 v7, 0x3

    aput-byte p4, v6, v7

    invoke-interface {v0, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzags;->zzd(Lcom/google/android/gms/internal/ads/zzes;II)V

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    add-int/2addr p4, v5

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    :cond_13
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzaj:Z

    :cond_14
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzr:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result v4

    add-int/2addr v4, p3

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzc:Ljava/lang/String;

    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_15

    goto :goto_a

    :cond_15
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzU:Lcom/google/android/gms/internal/ads/zzagt;

    if-nez p3, :cond_16

    goto :goto_9

    :cond_16
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzes;->zze()I

    move-result p3

    if-nez p3, :cond_17

    goto :goto_8

    :cond_17
    move v2, v3

    :goto_8
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzU:Lcom/google/android/gms/internal/ads/zzagt;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzagt;->zzb(Lcom/google/android/gms/internal/ads/zzafg;)V

    :goto_9
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    if-ge p3, v4, :cond_1b

    sub-int p3, v4, p3

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzajs;->zzy(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzags;I)I

    move-result p3

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    add-int/2addr p4, p3

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    add-int/2addr p4, p3

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    goto :goto_9

    :cond_18
    :goto_a
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzn:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v6

    aput-byte v3, v6, v3

    aput-byte v3, v6, v2

    aput-byte v3, v6, v1

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzaa:I

    rsub-int/lit8 v2, v1, 0x4

    :goto_b
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    if-ge v7, v4, :cond_1b

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzai:I

    if-nez v7, :cond_1a

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v8, v2, v7

    sub-int v9, v1, v7

    invoke-interface {p1, v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    if-lez v7, :cond_19

    invoke-virtual {p4, v6, v2, v7}, Lcom/google/android/gms/internal/ads/zzes;->zzm([BII)V

    :cond_19
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v7

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzai:I

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzm:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-interface {v0, v7, v5}, Lcom/google/android/gms/internal/ads/zzags;->zzc(Lcom/google/android/gms/internal/ads/zzes;I)V

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    goto :goto_b

    :cond_1a
    invoke-direct {p0, p1, v0, v7}, Lcom/google/android/gms/internal/ads/zzajs;->zzy(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzags;I)I

    move-result v7

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzai:I

    sub-int/2addr v8, v7

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzai:I

    goto :goto_b

    :cond_1b
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzc:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzp:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-interface {v0, p1, v5}, Lcom/google/android/gms/internal/ads/zzags;->zzc(Lcom/google/android/gms/internal/ads/zzes;I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    :cond_1c
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajs;->zzv()V

    return p1

    :cond_1d
    :goto_c
    sget-object p2, Lcom/google/android/gms/internal/ads/zzajs;->zzd:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzajs;->zzw(Lcom/google/android/gms/internal/ads/zzafg;[BI)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajs;->zzv()V

    return p1
.end method

.method private final zzv()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzag:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzah:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzai:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzaj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzak:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzal:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzam:I

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzan:B

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzao:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzr:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    return-void
.end method

.method private final zzw(Lcom/google/android/gms/internal/ads/zzafg;[BI)V
    .locals 5

    array-length v0, p2

    add-int v1, v0, p3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzs:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzj()I

    move-result v3

    const/4 v4, 0x0

    if-ge v3, v1, :cond_0

    add-int v3, v1, p3

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    array-length v3, p2

    invoke-virtual {v2, p2, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzb([BI)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v3

    invoke-static {p2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object p2

    invoke-interface {p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzes;->zzf(I)V

    return-void
.end method

.method private static zzx(JLjava/lang/String;J)[B
    .locals 9

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zza(Z)V

    const-wide v0, 0xd693a400L

    div-long v2, p0, v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v5, v2

    mul-long/2addr v5, v0

    sub-long/2addr p0, v5

    const-wide/32 v0, 0x3938700

    div-long v5, p0, v0

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    int-to-long v6, v2

    mul-long/2addr v6, v0

    sub-long/2addr p0, v6

    const-wide/32 v0, 0xf4240

    div-long v6, p0, v0

    long-to-int v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    int-to-long v7, v2

    mul-long/2addr v7, v0

    sub-long/2addr p0, v7

    div-long/2addr p0, p3

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v3, v5, v6, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private final zzy(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzags;I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzr:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzd()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzags;->zzc(Lcom/google/android/gms/internal/ads/zzes;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzags;->zza(Lcom/google/android/gms/internal/ads/zzj;IZ)I

    move-result p1

    :goto_0
    return p1
.end method

.method private final zzz(J)J
    .locals 7

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzz:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfk;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-string p1, "Can\'t scale timecode prior to timecodeScale being set."

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzafg;)Z
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajt;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzajt;->zza(Lcom/google/android/gms/internal/ads/zzafg;)Z

    move-result p1

    return p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzafi;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzl:Lcom/google/android/gms/internal/ads/zzamt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamw;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzamw;-><init>(Lcom/google/android/gms/internal/ads/zzafi;Lcom/google/android/gms/internal/ads/zzamt;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzap:Lcom/google/android/gms/internal/ads/zzafi;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzagg;)I
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzT:Z

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzT:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzaq:Lcom/google/android/gms/internal/ads/zzajl;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzajl;->zzc(Lcom/google/android/gms/internal/ads/zzafg;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzafg;->zzn()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzP:Z

    if-eqz v4, :cond_1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzR:J

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzQ:J

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzP:Z

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzF:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzR:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/zzagg;->zza:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzR:J

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    if-nez v1, :cond_0

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzi:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzajr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzajr;->zzb()V

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzU:Lcom/google/android/gms/internal/ads/zzagt;

    if-eqz p2, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzY:Lcom/google/android/gms/internal/ads/zzags;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzj:Lcom/google/android/gms/internal/ads/zzagr;

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzagt;->zzd(Lcom/google/android/gms/internal/ads/zzags;Lcom/google/android/gms/internal/ads/zzagr;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    return p1

    :cond_5
    return v0
.end method

.method public final zze(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzS:J

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzU:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzaq:Lcom/google/android/gms/internal/ads/zzajl;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzajl;->zzb()V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzh:Lcom/google/android/gms/internal/ads/zzaju;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzaju;->zza()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajs;->zzv()V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzJ:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzK:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzL:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzM:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzN:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzF:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzI:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzi:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p3, p2, :cond_2

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzajr;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzU:Lcom/google/android/gms/internal/ads/zzagt;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzagt;->zza()V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method

.method public final zzh(IJJ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzap:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xa0

    const-wide/16 v2, 0x0

    if-eq p1, v1, :cond_d

    const/16 v1, 0xae

    if-eq p1, v1, :cond_c

    const/16 v1, 0xb7

    const/4 v4, -0x1

    const-wide/16 v5, -0x1

    if-eq p1, v1, :cond_a

    const/16 v1, 0xbb

    if-eq p1, v1, :cond_9

    const/16 v1, 0x4dbb

    if-eq p1, v1, :cond_8

    const/16 v1, 0x5035

    const/4 v4, 0x1

    if-eq p1, v1, :cond_7

    const/16 v1, 0x55d0

    if-eq p1, v1, :cond_6

    const v1, 0x18538067

    if-eq p1, v1, :cond_3

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_2

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzF:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzj:Z

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzQ:J

    cmp-long p1, p1, v5

    if-eqz p1, :cond_1

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzP:Z

    return-void

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzagi;

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzB:J

    invoke-direct {p1, p2, p3, v2, v3}, Lcom/google/android/gms/internal/ads/zzagi;-><init>(JJ)V

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzafi;->zzw(Lcom/google/android/gms/internal/ads/zzagj;)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzF:Z

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzF:Z

    if-nez p1, :cond_b

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzJ:Z

    return-void

    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzy:J

    cmp-long p1, v0, v5

    if-eqz p1, :cond_5

    cmp-long p1, v0, p2

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Multiple Segment elements not supported"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :cond_5
    :goto_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzy:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzx:J

    return-void

    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzy:Z

    return-void

    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzh:Z

    return-void

    :cond_8
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzG:I

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzH:J

    return-void

    :cond_9
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzF:Z

    if-nez p2, :cond_b

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzr(I)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzK:J

    return-void

    :cond_a
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzF:Z

    if-nez p2, :cond_b

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzr(I)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzL:I

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzM:J

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzN:J

    :cond_b
    :goto_1
    return-void

    :cond_c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzC:Z

    iput-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zza:Z

    return-void

    :cond_d
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzae:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzaf:J

    return-void
.end method

.method public final zzi(I)V
    .locals 35

    move-object/from16 v7, p0

    move/from16 v0, p1

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzap:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xa0

    const/16 v2, 0x8

    const-string v3, "A_OPUS"

    const/4 v6, 0x2

    if-eq v0, v1, :cond_2c

    const/16 v1, 0xae

    const/16 v10, 0x14

    const/4 v11, 0x0

    if-eq v0, v1, :cond_29

    const/16 v1, 0xb7

    const-wide/16 v2, -0x1

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v0, v1, :cond_27

    const/16 v1, 0x4dbb

    const v15, 0x1c53bb6b

    if-eq v0, v1, :cond_25

    const/16 v1, 0x6240

    if-eq v0, v1, :cond_23

    const/16 v1, 0x6d80

    if-eq v0, v1, :cond_21

    const v1, 0x1549a966

    if-eq v0, v1, :cond_1f

    const v1, 0x1654ae6b

    if-eq v0, v1, :cond_10

    if-eq v0, v15, :cond_0

    goto/16 :goto_19

    :cond_0
    iget-boolean v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzF:Z

    if-nez v0, :cond_32

    move v0, v8

    :goto_0
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzI:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzB:J

    cmp-long v0, v2, v13

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    move v0, v8

    :goto_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    add-int/2addr v0, v9

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzajq;

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzB:J

    iget v11, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzO:I

    iget-wide v13, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzy:J

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzx:J

    move-object v15, v0

    move-object/from16 v16, v1

    move-wide/from16 v17, v2

    move/from16 v19, v11

    move-wide/from16 v20, v13

    move-wide/from16 v22, v4

    invoke-direct/range {v15 .. v23}, Lcom/google/android/gms/internal/ads/zzajq;-><init>(Landroid/util/SparseArray;JIJJ)V

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzap:Lcom/google/android/gms/internal/ads/zzafi;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzafi;->zzw(Lcom/google/android/gms/internal/ads/zzagj;)V

    goto :goto_3

    :cond_3
    add-int/2addr v0, v9

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_4
    :goto_2
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzap:Lcom/google/android/gms/internal/ads/zzafi;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzagi;

    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzB:J

    const-wide/16 v13, 0x0

    invoke-direct {v2, v3, v4, v13, v14}, Lcom/google/android/gms/internal/ads/zzagi;-><init>(JJ)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzafi;->zzw(Lcom/google/android/gms/internal/ads/zzagj;)V

    :goto_3
    iput-boolean v9, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzF:Z

    iput-boolean v8, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzJ:Z

    move v0, v8

    :goto_4
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzi:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_f

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzajr;

    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzB:J

    iget-wide v13, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzy:J

    move-wide v15, v13

    iget-wide v12, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzx:J

    iget v11, v2, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    if-eq v11, v6, :cond_5

    goto/16 :goto_d

    :cond_5
    iget v11, v2, Lcom/google/android/gms/internal/ads/zzajr;->zzd:I

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_d

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_d

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_6

    :goto_5
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :goto_6
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_b

    :cond_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v14

    const-wide/16 v17, 0x0

    move v10, v8

    const/4 v5, -0x1

    :goto_7
    if-ge v10, v14, :cond_7

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/gms/internal/ads/zzajp;

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzajp;->zza()J

    move-result-wide v21

    const-wide/32 v26, 0x989680

    cmp-long v21, v21, v26

    if-lez v21, :cond_8

    :cond_7
    const/4 v3, -0x1

    goto :goto_a

    :cond_8
    add-int/lit8 v6, v10, 0x1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v22

    const/16 v23, -0x1

    add-int/lit8 v8, v22, -0x1

    if-ge v10, v8, :cond_9

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzajp;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzajp;->zzb()J

    move-result-wide v27

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzajp;->zzc()J

    move-result-wide v29

    add-long v27, v27, v29

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzajp;->zzb()J

    move-result-wide v29

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzajp;->zzc()J

    move-result-wide v31

    add-long v29, v29, v31

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzajp;->zza()J

    move-result-wide v31

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzajp;->zza()J

    move-result-wide v33

    sub-long v31, v31, v33

    :goto_8
    sub-long v27, v27, v29

    move/from16 v20, v10

    move-wide/from16 v8, v31

    const-wide/16 v24, 0x0

    goto :goto_9

    :cond_9
    add-long v27, v15, v12

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzajp;->zzb()J

    move-result-wide v29

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzajp;->zzc()J

    move-result-wide v31

    add-long v29, v29, v31

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzajp;->zza()J

    move-result-wide v31

    sub-long v31, v3, v31

    goto :goto_8

    :goto_9
    cmp-long v10, v8, v24

    move-wide/from16 v29, v3

    if-lez v10, :cond_a

    move-wide/from16 v3, v27

    long-to-double v3, v3

    long-to-double v8, v8

    div-double/2addr v3, v8

    cmpl-double v8, v3, v17

    if-lez v8, :cond_a

    move-wide/from16 v17, v3

    move/from16 v5, v20

    :cond_a
    move v10, v6

    move-wide/from16 v3, v29

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_7

    :goto_a
    if-ne v5, v3, :cond_b

    goto/16 :goto_5

    :cond_b
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzajp;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzajp;->zza()J

    move-result-wide v5

    goto/16 :goto_6

    :goto_b
    cmp-long v3, v5, v8

    if-eqz v3, :cond_d

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzajr;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzv;->zzl:Lcom/google/android/gms/internal/ads/zzap;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaii;

    invoke-direct {v9, v5, v6}, Lcom/google/android/gms/internal/ads/zzaii;-><init>(J)V

    if-nez v3, :cond_c

    new-instance v3, Lcom/google/android/gms/internal/ads/zzap;

    const/4 v5, 0x1

    new-array v6, v5, [Lcom/google/android/gms/internal/ads/zzao;

    const/4 v10, 0x0

    aput-object v9, v6, v10

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v3, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zzap;-><init>(J[Lcom/google/android/gms/internal/ads/zzao;)V

    goto :goto_c

    :cond_c
    const/4 v5, 0x1

    const/4 v10, 0x0

    new-array v6, v5, [Lcom/google/android/gms/internal/ads/zzao;

    aput-object v9, v6, v10

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzap;->zzg([Lcom/google/android/gms/internal/ads/zzao;)Lcom/google/android/gms/internal/ads/zzap;

    move-result-object v3

    :goto_c
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzajr;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzv;->zza()Lcom/google/android/gms/internal/ads/zzt;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzt;->zzl(Lcom/google/android/gms/internal/ads/zzap;)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzt;->zzN()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzajr;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    :cond_d
    :goto_d
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzajr;->zzV:Z

    if-nez v3, :cond_e

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzajr;->zzb()V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzajr;->zzY:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajr;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    :cond_e
    const/4 v2, 0x1

    add-int/2addr v0, v2

    move v9, v2

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/16 v10, 0x14

    goto/16 :goto_4

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajs;->zzB()V

    return-void

    :cond_10
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzi:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_1e

    iget-boolean v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzj:Z

    if-eqz v1, :cond_11

    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzQ:J

    cmp-long v1, v5, v2

    if-nez v1, :cond_12

    :cond_11
    const/4 v1, 0x1

    goto :goto_e

    :cond_12
    const/4 v1, 0x0

    :goto_e
    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v6, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    :goto_f
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v10, v5, :cond_18

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/google/android/gms/internal/ads/zzajr;

    iget v5, v11, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    const/4 v12, 0x2

    if-ne v5, v12, :cond_14

    iget-boolean v5, v11, Lcom/google/android/gms/internal/ads/zzajr;->zzX:Z

    if-eqz v5, :cond_13

    iget v2, v11, Lcom/google/android/gms/internal/ads/zzajr;->zzd:I

    :cond_13
    const/4 v4, -0x1

    if-ne v3, v4, :cond_16

    iget v3, v11, Lcom/google/android/gms/internal/ads/zzajr;->zzd:I

    goto :goto_10

    :cond_14
    const/4 v4, -0x1

    const/4 v8, 0x1

    if-ne v5, v8, :cond_16

    iget-boolean v5, v11, Lcom/google/android/gms/internal/ads/zzajr;->zzX:Z

    if-eqz v5, :cond_15

    iget v6, v11, Lcom/google/android/gms/internal/ads/zzajr;->zzd:I

    :cond_15
    if-ne v9, v4, :cond_16

    iget v4, v11, Lcom/google/android/gms/internal/ads/zzajr;->zzd:I

    move v9, v4

    :cond_16
    :goto_10
    if-eqz v1, :cond_17

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzajr;->zzb()V

    iget-boolean v4, v11, Lcom/google/android/gms/internal/ads/zzajr;->zzV:Z

    if-nez v4, :cond_17

    iget-object v4, v11, Lcom/google/android/gms/internal/ads/zzajr;->zzY:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzajr;->zzZ:Lcom/google/android/gms/internal/ads/zzv;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4, v11}, Lcom/google/android/gms/internal/ads/zzags;->zzz(Lcom/google/android/gms/internal/ads/zzv;)V

    :cond_17
    const/4 v4, 0x1

    add-int/2addr v10, v4

    goto :goto_f

    :cond_18
    const/4 v4, -0x1

    if-eq v2, v4, :cond_19

    iput v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzO:I

    goto :goto_12

    :cond_19
    if-eq v3, v4, :cond_1a

    iput v3, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzO:I

    goto :goto_12

    :cond_1a
    if-eq v6, v4, :cond_1b

    iput v6, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzO:I

    goto :goto_12

    :cond_1b
    if-eq v9, v4, :cond_1c

    iput v9, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzO:I

    goto :goto_12

    :cond_1c
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1d

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzajr;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzajr;->zzd:I

    goto :goto_11

    :cond_1d
    const/4 v12, -0x1

    :goto_11
    iput v12, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzO:I

    :goto_12
    if-eqz v1, :cond_32

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzajs;->zzB()V

    return-void

    :cond_1e
    const-string v0, "No valid tracks were found"

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_1f
    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzz:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    const-wide/32 v0, 0xf4240

    iput-wide v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzz:J

    :cond_20
    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzA:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_32

    invoke-direct {v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzajs;->zzz(J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzB:J

    return-void

    :cond_21
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzajr;->zzh:Z

    if-eqz v1, :cond_32

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajr;->zzi:[B

    if-nez v0, :cond_22

    goto/16 :goto_19

    :cond_22
    const-string v0, "Combining encryption and compression is not supported"

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_23
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzajr;->zzh:Z

    if-eqz v1, :cond_32

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzajr;->zzj:Lcom/google/android/gms/internal/ads/zzagr;

    if-eqz v1, :cond_24

    new-instance v1, Lcom/google/android/gms/internal/ads/zzq;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzp;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzg;->zza:Ljava/util/UUID;

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzajr;->zzj:Lcom/google/android/gms/internal/ads/zzagr;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzagr;->zzb:[B

    const-string v5, "video/webm"

    invoke-direct {v2, v3, v11, v5, v4}, Lcom/google/android/gms/internal/ads/zzp;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    filled-new-array {v2}, [Lcom/google/android/gms/internal/ads/zzp;

    move-result-object v2

    invoke-direct {v1, v11, v2}, Lcom/google/android/gms/internal/ads/zzq;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzp;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajr;->zzl:Lcom/google/android/gms/internal/ads/zzq;

    return-void

    :cond_24
    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_25
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzG:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzH:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_26

    if-ne v0, v15, :cond_32

    iput-wide v4, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzQ:J

    return-void

    :cond_26
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_27
    iget-boolean v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzF:Z

    if-nez v1, :cond_32

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzr(I)V

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzK:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v8

    if-eqz v0, :cond_32

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzL:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_32

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzM:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_32

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzI:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_28

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzL:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_28
    new-instance v1, Lcom/google/android/gms/internal/ads/zzajp;

    iget-wide v9, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzK:J

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzy:J

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzM:J

    add-long v11, v2, v4

    iget-wide v13, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzN:J

    const/4 v15, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/zzajp;-><init>(JJJ[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_29
    const/4 v1, -0x1

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzajr;->zzc:Ljava/lang/String;

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_13

    :sswitch_0
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0xb

    goto/16 :goto_14

    :sswitch_1
    const-string v2, "A_FLAC"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x16

    goto/16 :goto_14

    :sswitch_2
    const-string v2, "A_EAC3"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x11

    goto/16 :goto_14

    :sswitch_3
    const-string v2, "V_MPEG2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v8, 0x3

    goto/16 :goto_14

    :sswitch_4
    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x1b

    goto/16 :goto_14

    :sswitch_5
    const-string v2, "S_TEXT/WEBVTT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x1e

    goto/16 :goto_14

    :sswitch_6
    const-string v3, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move v8, v2

    goto/16 :goto_14

    :sswitch_7
    const-string v2, "S_TEXT/SSA"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x1d

    goto/16 :goto_14

    :sswitch_8
    const-string v2, "S_TEXT/ASS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x1c

    goto/16 :goto_14

    :sswitch_9
    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x18

    goto/16 :goto_14

    :sswitch_a
    const-string v2, "A_PCM/INT/BIG"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x19

    goto/16 :goto_14

    :sswitch_b
    const-string v2, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x1a

    goto/16 :goto_14

    :sswitch_c
    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x14

    goto/16 :goto_14

    :sswitch_d
    const-string v2, "V_THEORA"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0xa

    goto/16 :goto_14

    :sswitch_e
    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x20

    goto/16 :goto_14

    :sswitch_f
    const-string v2, "V_VP9"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v8, 0x1

    goto/16 :goto_14

    :sswitch_10
    const-string v2, "V_VP8"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v8, 0x0

    goto/16 :goto_14

    :sswitch_11
    const-string v2, "V_AV1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v8, 0x2

    goto/16 :goto_14

    :sswitch_12
    const-string v2, "A_DTS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x13

    goto/16 :goto_14

    :sswitch_13
    const-string v2, "A_AC3"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x10

    goto/16 :goto_14

    :sswitch_14
    const-string v2, "A_AAC"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0xd

    goto/16 :goto_14

    :sswitch_15
    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x15

    goto/16 :goto_14

    :sswitch_16
    const-string v2, "S_VOBSUB"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x1f

    goto/16 :goto_14

    :sswitch_17
    const-string v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v8, 0x7

    goto/16 :goto_14

    :sswitch_18
    const-string v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v8, 0x5

    goto/16 :goto_14

    :sswitch_19
    const-string v2, "S_DVBSUB"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x21

    goto :goto_14

    :sswitch_1a
    const-string v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x9

    goto :goto_14

    :sswitch_1b
    const-string v2, "A_MPEG/L3"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0xf

    goto :goto_14

    :sswitch_1c
    const-string v2, "A_MPEG/L2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0xe

    goto :goto_14

    :sswitch_1d
    const-string v2, "A_VORBIS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0xc

    goto :goto_14

    :sswitch_1e
    const-string v2, "A_TRUEHD"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x12

    goto :goto_14

    :sswitch_1f
    const-string v2, "A_MS/ACM"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v8, 0x17

    goto :goto_14

    :sswitch_20
    const-string v2, "V_MPEG4/ISO/SP"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v8, 0x4

    goto :goto_14

    :sswitch_21
    const-string v2, "V_MPEG4/ISO/AP"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v8, 0x6

    goto :goto_14

    :cond_2a
    :goto_13
    move v8, v1

    :goto_14
    packed-switch v8, :pswitch_data_0

    goto :goto_15

    :pswitch_0
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzajr;->zzd:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzajr;->zza(I)V

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzap:Lcom/google/android/gms/internal/ads/zzafi;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajr;->zzd:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzafi;->zzu(II)Lcom/google/android/gms/internal/ads/zzags;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajr;->zzY:Lcom/google/android/gms/internal/ads/zzags;

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzi:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzajr;->zzd:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_15
    iput-object v11, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    return-void

    :cond_2b
    const-string v0, "CodecId is missing in TrackEntry element"

    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_2c
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzU:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzi:Landroid/util/SparseArray;

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzaa:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/internal/ads/zzajr;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzajr;->zzb()V

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzaf:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2d

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzajr;->zzc:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzv:Lcom/google/android/gms/internal/ads/zzes;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzaf:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzb([BI)V

    :cond_2d
    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_16
    iget v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzY:I

    if-ge v10, v1, :cond_2e

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzZ:[I

    aget v1, v1, v10

    add-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v10, v1

    goto :goto_16

    :cond_2e
    const/4 v10, 0x0

    :goto_17
    iget v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzY:I

    if-ge v10, v1, :cond_31

    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzV:J

    iget v3, v9, Lcom/google/android/gms/internal/ads/zzajr;->zzf:I

    mul-int/2addr v3, v10

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long v2, v1, v3

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzac:I

    if-nez v10, :cond_30

    iget-boolean v4, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzae:Z

    if-nez v4, :cond_2f

    const/4 v4, 0x1

    or-int/2addr v1, v4

    :cond_2f
    move v4, v1

    const/4 v10, 0x0

    goto :goto_18

    :cond_30
    move v4, v1

    :goto_18
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzZ:[I

    aget v5, v1, v10

    sub-int v11, v0, v5

    move-object/from16 v0, p0

    move-object v1, v9

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzajs;->zzs(Lcom/google/android/gms/internal/ads/zzajr;JIII)V

    const/4 v0, 0x1

    add-int/2addr v10, v0

    move v0, v11

    goto :goto_17

    :cond_31
    const/4 v1, 0x0

    iput v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzU:I

    :cond_32
    :goto_19
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_21
        -0x7ce7f3b0 -> :sswitch_20
        -0x76567dc0 -> :sswitch_1f
        -0x6a615338 -> :sswitch_1e
        -0x672350af -> :sswitch_1d
        -0x585f4fce -> :sswitch_1c
        -0x585f4fcd -> :sswitch_1b
        -0x51dc40b2 -> :sswitch_1a
        -0x37a9c464 -> :sswitch_19
        -0x2016c535 -> :sswitch_18
        -0x2016c4e5 -> :sswitch_17
        -0x19552dbd -> :sswitch_16
        -0x1538b2ba -> :sswitch_15
        0x3c02325 -> :sswitch_14
        0x3c02353 -> :sswitch_13
        0x3c030c5 -> :sswitch_12
        0x4e81333 -> :sswitch_11
        0x4e86155 -> :sswitch_10
        0x4e86156 -> :sswitch_f
        0x5e8da3e -> :sswitch_e
        0x1a8350d6 -> :sswitch_d
        0x2056f406 -> :sswitch_c
        0x25e26ee2 -> :sswitch_b
        0x2b45174d -> :sswitch_a
        0x2b453ce4 -> :sswitch_9
        0x2c0618eb -> :sswitch_8
        0x2c065c6b -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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

.method public final zzj(IJ)V
    .locals 10

    const/16 v0, 0xf0

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_1a

    const/16 v0, 0xf1

    if-eq p1, v0, :cond_19

    const/16 v0, 0x5031

    const/4 v1, 0x0

    const-string v2, " not supported"

    if-eq p1, v0, :cond_17

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_15

    const/16 v0, 0x21

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzD:I

    return-void

    :pswitch_1
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzC:I

    return-void

    :pswitch_2
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput-boolean v9, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzy:Z

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)I

    move-result p1

    if-eq p1, v5, :cond_1b

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p1, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzz:I

    return-void

    :pswitch_3
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)I

    move-result p1

    if-eq p1, v5, :cond_1b

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p1, p2, Lcom/google/android/gms/internal/ads/zzajr;->zzA:I

    return-void

    :pswitch_4
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    if-eq p2, v9, :cond_1

    if-eq p2, v8, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput v9, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzB:I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput v8, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzB:I

    return-void

    :sswitch_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzz:J

    return-void

    :sswitch_1
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzf:I

    return-void

    :sswitch_2
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    if-eqz p2, :cond_5

    if-eq p2, v9, :cond_4

    if-eq p2, v8, :cond_3

    if-eq p2, v7, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput v7, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzs:I

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput v8, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzs:I

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput v9, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzs:I

    return-void

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput v6, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzs:I

    return-void

    :sswitch_3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzaf:J

    return-void

    :sswitch_4
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzQ:I

    return-void

    :sswitch_5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzT:J

    return-void

    :sswitch_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzS:J

    return-void

    :sswitch_7
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzg:I

    return-void

    :sswitch_8
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput-boolean v9, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzy:Z

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzo:I

    return-void

    :sswitch_9
    cmp-long p2, p2, v3

    if-nez p2, :cond_6

    move v6, v9

    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput-boolean v6, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzW:Z

    return-void

    :sswitch_a
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzq:I

    return-void

    :sswitch_b
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzr:I

    return-void

    :sswitch_c
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzp:I

    return-void

    :sswitch_d
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    if-eqz p2, :cond_a

    if-eq p2, v9, :cond_9

    if-eq p2, v7, :cond_8

    const/16 p1, 0xf

    if-eq p2, p1, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput v7, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzx:I

    return-void

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput v9, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzx:I

    return-void

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput v8, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzx:I

    return-void

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput v6, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzx:I

    return-void

    :sswitch_e
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzy:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzH:J

    return-void

    :sswitch_f
    cmp-long p1, p2, v3

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x24

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "AESSettingsCipherMode "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :sswitch_10
    const-wide/16 v3, 0x5

    cmp-long p1, p2, v3

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1d

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "ContentEncAlgo "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :sswitch_11
    cmp-long p1, p2, v3

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "EBMLReadVersion "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :sswitch_12
    cmp-long p1, p2, v3

    if-ltz p1, :cond_e

    const-wide/16 v3, 0x2

    cmp-long p1, p2, v3

    if-gtz p1, :cond_e

    goto/16 :goto_0

    :cond_e
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr p1, v0

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "DocTypeReadVersion "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :sswitch_13
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "ContentCompAlgo "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :sswitch_14
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzajr;->zzd(I)V

    return-void

    :sswitch_15
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzae:Z

    return-void

    :sswitch_16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzF:Z

    if-nez v0, :cond_1b

    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzr(I)V

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzL:I

    return-void

    :sswitch_17
    long-to-int p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzad:I

    return-void

    :sswitch_18
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzajs;->zzz(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzS:J

    return-void

    :sswitch_19
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzd:I

    return-void

    :sswitch_1a
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzn:I

    return-void

    :sswitch_1b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzF:Z

    if-nez v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzr(I)V

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzajs;->zzz(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzK:J

    return-void

    :sswitch_1c
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzm:I

    return-void

    :sswitch_1d
    long-to-int p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzP:I

    return-void

    :sswitch_1e
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzajs;->zzz(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzW:J

    return-void

    :sswitch_1f
    cmp-long p2, p2, v3

    if-nez p2, :cond_10

    move v6, v9

    :cond_10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput-boolean v6, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzX:Z

    return-void

    :sswitch_20
    long-to-int p2, p2

    if-eq p2, v9, :cond_14

    if-eq p2, v8, :cond_13

    const/16 p3, 0x11

    if-eq p2, p3, :cond_12

    if-eq p2, v0, :cond_11

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput v5, p1, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    return-void

    :cond_11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    const/4 p2, 0x5

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    return-void

    :cond_12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput v7, p1, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    return-void

    :cond_13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput v9, p1, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    return-void

    :cond_14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput v8, p1, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    return-void

    :cond_15
    cmp-long p1, p2, v3

    if-nez p1, :cond_16

    goto :goto_0

    :cond_16
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "ContentEncodingScope "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :cond_17
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_18

    goto :goto_0

    :cond_18
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "ContentEncodingOrder "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :cond_19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzF:Z

    if-nez v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzr(I)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzM:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_1b

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzM:J

    return-void

    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzF:Z

    if-nez v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzr(I)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzN:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_1b

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzN:J

    :cond_1b
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_20
        0x88 -> :sswitch_1f
        0x9b -> :sswitch_1e
        0x9f -> :sswitch_1d
        0xb0 -> :sswitch_1c
        0xb3 -> :sswitch_1b
        0xba -> :sswitch_1a
        0xd7 -> :sswitch_19
        0xe7 -> :sswitch_18
        0xee -> :sswitch_17
        0xf7 -> :sswitch_16
        0xfb -> :sswitch_15
        0x41e7 -> :sswitch_14
        0x4254 -> :sswitch_13
        0x4285 -> :sswitch_12
        0x42f7 -> :sswitch_11
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_f
        0x53ac -> :sswitch_e
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_c
        0x54b2 -> :sswitch_b
        0x54ba -> :sswitch_a
        0x55aa -> :sswitch_9
        0x55b2 -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzk(ID)V
    .locals 1

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_0
    double-to-float p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzv:F

    return-void

    :pswitch_1
    double-to-float p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzu:F

    return-void

    :pswitch_2
    double-to-float p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzt:F

    return-void

    :pswitch_3
    double-to-float p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzN:F

    return-void

    :pswitch_4
    double-to-float p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzM:F

    return-void

    :pswitch_5
    double-to-float p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzL:F

    return-void

    :pswitch_6
    double-to-float p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzK:F

    return-void

    :pswitch_7
    double-to-float p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzJ:F

    return-void

    :pswitch_8
    double-to-float p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzI:F

    return-void

    :pswitch_9
    double-to-float p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzH:F

    return-void

    :pswitch_a
    double-to-float p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzG:F

    return-void

    :pswitch_b
    double-to-float p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzF:F

    return-void

    :pswitch_c
    double-to-float p2, p2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzE:F

    return-void

    :cond_0
    double-to-long p1, p2

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzA:J

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    double-to-int p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzR:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzl(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x86

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_2

    const/16 v0, 0x536e

    if-eq p1, v0, :cond_1

    const v0, 0x22b59c

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzajr;->zze(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzb:Ljava/lang/String;

    return-void

    :cond_2
    const-string p1, "webm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x16

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "DocType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :cond_4
    :goto_0
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzC:Z

    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzajr;->zzc:Ljava/lang/String;

    return-void
.end method

.method public final zzm(IILcom/google/android/gms/internal/ads/zzafg;)V
    .locals 22

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v8, p3

    const/16 v2, 0xa1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/16 v6, 0xa3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v0, v2, :cond_b

    if-eq v0, v6, :cond_b

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_8

    const/16 v2, 0x41ed

    if-eq v0, v2, :cond_5

    const/16 v2, 0x4255

    if-eq v0, v2, :cond_4

    const/16 v2, 0x47e2

    if-eq v0, v2, :cond_3

    const/16 v2, 0x53ab

    if-eq v0, v2, :cond_2

    const/16 v2, 0x63a2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x7672

    if-ne v0, v2, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzajr;->zzw:[B

    invoke-interface {v8, v2, v10, v1}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    return-void

    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0xf

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected id: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzajr;->zzk:[B

    invoke-interface {v8, v2, v10, v1}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    return-void

    :cond_2
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzq:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v2

    invoke-static {v2, v10}, Ljava/util/Arrays;->fill([BB)V

    rsub-int/lit8 v2, v1, 0x4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v3

    invoke-interface {v8, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzes;->zzh(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzz()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzG:I

    return-void

    :cond_3
    new-array v2, v1, [B

    invoke-interface {v8, v2, v10, v1}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzagr;

    invoke-direct {v1, v9, v2, v10, v10}, Lcom/google/android/gms/internal/ads/zzagr;-><init>(I[BII)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajr;->zzj:Lcom/google/android/gms/internal/ads/zzagr;

    return-void

    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzajr;->zzi:[B

    invoke-interface {v8, v2, v10, v1}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    return-void

    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzajs;->zzq(I)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzE:Lcom/google/android/gms/internal/ads/zzajr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajr;->zzc()I

    move-result v2

    const v3, 0x64767643

    if-eq v2, v3, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajr;->zzc()I

    move-result v2

    const v3, 0x64766343

    if-ne v2, v3, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {v8, v1}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    return-void

    :cond_7
    :goto_0
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzajr;->zzO:[B

    invoke-interface {v8, v2, v10, v1}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    return-void

    :cond_8
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzU:I

    if-eq v0, v4, :cond_9

    goto/16 :goto_10

    :cond_9
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzi:Landroid/util/SparseArray;

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzaa:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzajr;

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzad:I

    if-ne v2, v5, :cond_a

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzajr;->zzc:Ljava/lang/String;

    const-string v2, "V_VP9"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzv:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v0

    invoke-interface {v8, v0, v10, v1}, Lcom/google/android/gms/internal/ads/zzafg;->zzc([BII)V

    return-void

    :cond_a
    invoke-interface {v8, v1}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    return-void

    :cond_b
    iget v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzU:I

    const/16 v11, 0x8

    if-nez v2, :cond_c

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzh:Lcom/google/android/gms/internal/ads/zzaju;

    invoke-virtual {v2, v8, v10, v9, v11}, Lcom/google/android/gms/internal/ads/zzaju;->zzb(Lcom/google/android/gms/internal/ads/zzafg;ZZI)J

    move-result-wide v12

    long-to-int v12, v12

    iput v12, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzaa:I

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaju;->zzc()I

    move-result v2

    iput v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzab:I

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v12, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzW:J

    iput v9, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzU:I

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzo:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)V

    :cond_c
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzi:Landroid/util/SparseArray;

    iget v12, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzaa:I

    invoke-virtual {v2, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/gms/internal/ads/zzajr;

    if-nez v12, :cond_d

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzab:I

    sub-int v0, v1, v0

    invoke-interface {v8, v0}, Lcom/google/android/gms/internal/ads/zzafg;->zzf(I)V

    iput v10, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzU:I

    return-void

    :cond_d
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzajr;->zzb()V

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzU:I

    if-ne v2, v9, :cond_1f

    const/4 v2, 0x3

    invoke-direct {v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzajs;->zzt(Lcom/google/android/gms/internal/ads/zzafg;I)V

    iget-object v13, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzo:Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v14

    aget-byte v14, v14, v4

    and-int/lit8 v14, v14, 0x6

    shr-int/2addr v14, v9

    const/16 v15, 0xff

    if-nez v14, :cond_e

    iput v9, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzY:I

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzZ:[I

    invoke-static {v2, v9}, Lcom/google/android/gms/internal/ads/zzajs;->zzA([II)[I

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzZ:[I

    iget v3, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzab:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x3

    aput v1, v2, v10

    :goto_1
    move-object/from16 v21, v12

    goto/16 :goto_9

    :cond_e
    invoke-direct {v7, v8, v5}, Lcom/google/android/gms/internal/ads/zzajs;->zzt(Lcom/google/android/gms/internal/ads/zzafg;I)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v16

    aget-byte v5, v16, v2

    and-int/2addr v5, v15

    add-int/2addr v5, v9

    iput v5, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzY:I

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzZ:[I

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzajs;->zzA([II)[I

    move-result-object v5

    iput-object v5, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzZ:[I

    if-ne v14, v4, :cond_f

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzab:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x4

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzY:I

    div-int/2addr v1, v2

    invoke-static {v5, v10, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    :cond_f
    if-ne v14, v9, :cond_12

    move v2, v10

    move v3, v2

    const/4 v5, 0x4

    :goto_2
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzY:I

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_11

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzZ:[I

    aput v10, v6, v2

    :goto_3
    add-int/lit8 v6, v5, 0x1

    invoke-direct {v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzajs;->zzt(Lcom/google/android/gms/internal/ads/zzafg;I)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v14

    aget-byte v5, v14, v5

    and-int/2addr v5, v15

    iget-object v14, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzZ:[I

    aget v17, v14, v2

    add-int v17, v17, v5

    aput v17, v14, v2

    if-eq v5, v15, :cond_10

    add-int v3, v3, v17

    add-int/lit8 v2, v2, 0x1

    move v5, v6

    goto :goto_2

    :cond_10
    move v5, v6

    goto :goto_3

    :cond_11
    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzZ:[I

    iget v14, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzab:I

    sub-int/2addr v1, v14

    sub-int/2addr v1, v5

    sub-int/2addr v1, v3

    aput v1, v2, v6

    goto :goto_1

    :cond_12
    if-ne v14, v2, :cond_1e

    move v2, v10

    move v6, v2

    const/4 v5, 0x4

    :goto_4
    iget v14, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzY:I

    add-int/lit8 v14, v14, -0x1

    if-ge v2, v14, :cond_1a

    iget-object v14, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzZ:[I

    aput v10, v14, v2

    add-int/lit8 v14, v5, 0x1

    invoke-direct {v7, v8, v14}, Lcom/google/android/gms/internal/ads/zzajs;->zzt(Lcom/google/android/gms/internal/ads/zzafg;I)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v17

    aget-byte v17, v17, v5

    if-eqz v17, :cond_19

    move v4, v10

    :goto_5
    if-ge v4, v11, :cond_16

    rsub-int/lit8 v18, v4, 0x7

    shl-int v10, v9, v18

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v18

    aget-byte v18, v18, v5

    and-int v18, v18, v10

    if-eqz v18, :cond_15

    add-int/2addr v14, v4

    invoke-direct {v7, v8, v14}, Lcom/google/android/gms/internal/ads/zzajs;->zzt(Lcom/google/android/gms/internal/ads/zzafg;I)V

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v18

    add-int/lit8 v19, v5, 0x1

    aget-byte v5, v18, v5

    and-int/2addr v5, v15

    not-int v10, v10

    and-int/2addr v5, v10

    int-to-long v9, v5

    move/from16 v5, v19

    :goto_6
    if-ge v5, v14, :cond_13

    shl-long/2addr v9, v11

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v19

    add-int/lit8 v20, v5, 0x1

    aget-byte v5, v19, v5

    and-int/2addr v5, v15

    move-object/from16 v21, v12

    int-to-long v11, v5

    or-long/2addr v9, v11

    move/from16 v5, v20

    move-object/from16 v12, v21

    const/16 v11, 0x8

    goto :goto_6

    :cond_13
    move-object/from16 v21, v12

    if-lez v2, :cond_14

    mul-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x6

    const-wide/16 v11, 0x1

    shl-long v4, v11, v4

    const-wide/16 v11, -0x1

    add-long/2addr v4, v11

    sub-long/2addr v9, v4

    :cond_14
    :goto_7
    move v5, v14

    goto :goto_8

    :cond_15
    move-object/from16 v21, v12

    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    goto :goto_5

    :cond_16
    move-object/from16 v21, v12

    const-wide/16 v9, 0x0

    goto :goto_7

    :goto_8
    const-wide/32 v11, -0x80000000

    cmp-long v4, v9, v11

    if-ltz v4, :cond_18

    const-wide/32 v11, 0x7fffffff

    cmp-long v4, v9, v11

    if-gtz v4, :cond_18

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzZ:[I

    long-to-int v9, v9

    if-eqz v2, :cond_17

    add-int/lit8 v10, v2, -0x1

    aget v10, v4, v10

    add-int/2addr v9, v10

    :cond_17
    aput v9, v4, v2

    add-int/2addr v6, v9

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, v21

    const/4 v4, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    goto/16 :goto_4

    :cond_18
    const-string v0, "EBML lacing sample size out of range."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_19
    const-string v0, "No valid varint length mask found"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_1a
    move-object/from16 v21, v12

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzZ:[I

    iget v3, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzab:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v5

    sub-int/2addr v1, v6

    aput v1, v2, v14

    :goto_9
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/16 v2, 0x8

    shl-int/2addr v1, v2

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/2addr v2, v15

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzS:J

    or-int/2addr v1, v2

    int-to-long v1, v1

    invoke-direct {v7, v1, v2}, Lcom/google/android/gms/internal/ads/zzajs;->zzz(J)J

    move-result-wide v1

    add-long/2addr v4, v1

    iput-wide v4, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzV:J

    move-object/from16 v9, v21

    iget v1, v9, Lcom/google/android/gms/internal/ads/zzajr;->zze:I

    if-eq v1, v3, :cond_1d

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_1c

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzes;->zzi()[B

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1b

    const/16 v0, 0xa3

    :goto_a
    const/4 v2, 0x1

    goto :goto_c

    :cond_1b
    const/16 v0, 0xa3

    :goto_b
    const/4 v2, 0x0

    goto :goto_c

    :cond_1c
    const/4 v1, 0x2

    goto :goto_b

    :cond_1d
    const/4 v1, 0x2

    goto :goto_a

    :goto_c
    iput v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzac:I

    iput v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzU:I

    const/4 v1, 0x0

    iput v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzX:I

    const/16 v1, 0xa3

    goto :goto_d

    :cond_1e
    const-string v0, "Unexpected lacing value: 2"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v0

    throw v0

    :cond_1f
    move-object v9, v12

    move v1, v6

    :goto_d
    if-ne v0, v1, :cond_21

    :goto_e
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzX:I

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzY:I

    if-ge v0, v1, :cond_20

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzZ:[I

    aget v0, v1, v0

    const/4 v1, 0x0

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/google/android/gms/internal/ads/zzajs;->zzu(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzajr;IZ)I

    move-result v5

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzV:J

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzX:I

    iget v3, v9, Lcom/google/android/gms/internal/ads/zzajr;->zzf:I

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v2, v0

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzac:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzajs;->zzs(Lcom/google/android/gms/internal/ads/zzajr;JIII)V

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzX:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzX:I

    goto :goto_e

    :cond_20
    const/4 v0, 0x0

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzU:I

    return-void

    :cond_21
    const/4 v1, 0x1

    :goto_f
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzX:I

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzY:I

    if-ge v0, v2, :cond_22

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzZ:[I

    aget v3, v2, v0

    invoke-direct {v7, v8, v9, v3, v1}, Lcom/google/android/gms/internal/ads/zzajs;->zzu(Lcom/google/android/gms/internal/ads/zzafg;Lcom/google/android/gms/internal/ads/zzajr;IZ)I

    move-result v3

    aput v3, v2, v0

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzX:I

    add-int/2addr v0, v1

    iput v0, v7, Lcom/google/android/gms/internal/ads/zzajs;->zzX:I

    goto :goto_f

    :cond_22
    :goto_10
    return-void
.end method
