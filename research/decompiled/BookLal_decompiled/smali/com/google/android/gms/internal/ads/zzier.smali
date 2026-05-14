.class final Lcom/google/android/gms/internal/ads/zzier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzifg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzifg<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/ads/zzieo;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:[I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Lcom/google/android/gms/internal/ads/zzift;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzico;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzier;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zziga;->zzs()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzier;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzieo;Z[IIILcom/google/android/gms/internal/ads/zzieu;Lcom/google/android/gms/internal/ads/zziea;Lcom/google/android/gms/internal/ads/zzift;Lcom/google/android/gms/internal/ads/zzico;Lcom/google/android/gms/internal/ads/zziej;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzier;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzier;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzier;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzier;->zzf:I

    instance-of p1, p5, Lcom/google/android/gms/internal/ads/zzidd;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzier;->zzi:Z

    const/4 p1, 0x0

    if-eqz p13, :cond_0

    instance-of p2, p5, Lcom/google/android/gms/internal/ads/zzicz;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzier;->zzh:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzier;->zzj:[I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzier;->zzk:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzier;->zzl:I

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzier;->zzm:Lcom/google/android/gms/internal/ads/zzift;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzier;->zzn:Lcom/google/android/gms/internal/ads/zzico;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzier;->zzg:Lcom/google/android/gms/internal/ads/zzieo;

    return-void
.end method

.method private final zzA(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private final zzB(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static zzC(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static zzD(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzE(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzidd;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/ads/zzidd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzidd;->zzaX()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static zzF(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzier;->zzE(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzG(Ljava/lang/Object;J)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzH(Ljava/lang/Object;J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzI(Ljava/lang/Object;J)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zzJ(Ljava/lang/Object;J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzK(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzM(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final zzN(Ljava/lang/Object;I)Z
    .locals 7

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzier;->zzB(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzier;->zzA(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzier;->zzC(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v6

    :cond_0
    return v5

    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    return v6

    :cond_1
    return v5

    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v6

    :cond_2
    return v5

    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    return v6

    :cond_3
    return v5

    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v6

    :cond_4
    return v5

    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v6

    :cond_5
    return v5

    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzibz;->zza:Lcom/google/android/gms/internal/ads/zzibz;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzibz;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v6

    :cond_7
    return v5

    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v6

    :cond_8
    return v5

    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzibz;

    if-eqz p2, :cond_c

    sget-object p2, Lcom/google/android/gms/internal/ads/zzibz;->zza:Lcom/google/android/gms/internal/ads/zzibz;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzibz;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v6

    :cond_b
    return v5

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzh(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v6

    :cond_d
    return v5

    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e

    return v6

    :cond_e
    return v5

    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v6

    :cond_f
    return v5

    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    return v6

    :cond_10
    return v5

    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_11

    return v6

    :cond_11
    return v5

    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzj(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v6

    :cond_12
    return v5

    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzl(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzO(Ljava/lang/Object;I)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzier;->zzB(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zziga;->zze(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzP(Ljava/lang/Object;II)Z
    .locals 2

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzB(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzQ(Ljava/lang/Object;II)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzB(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zziga;->zze(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzR(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzf:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzS(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zzS(II)I
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzc:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_0
    if-gt p2, v1, :cond_2

    add-int v3, v1, p2

    ushr-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v3, 0x3

    aget v5, v0, v4

    if-ne p1, v5, :cond_0

    return v4

    :cond_0
    if-ge p1, v5, :cond_1

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static final zzT([BIILcom/google/android/gms/internal/ads/zzigg;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibn;)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzigg;->zza:Lcom/google/android/gms/internal/ads/zzigg;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzicd;->zzN(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzicd;->zzM(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_3
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzibo;->zzg([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result p0

    goto/16 :goto_2

    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zziey;->zza()Lcom/google/android/gms/internal/ads/zziey;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zziey;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object p3

    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzibo;->zzh(Lcom/google/android/gms/internal/ads/zzifg;[BIILcom/google/android/gms/internal/ads/zzibn;)I

    move-result p0

    goto/16 :goto_2

    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzibo;->zzf([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result p0

    goto/16 :goto_2

    :pswitch_6
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    goto :goto_2

    :pswitch_7
    add-int/lit8 p2, p1, 0x4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzibo;->zzd([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    :goto_1
    move p0, p2

    goto :goto_2

    :pswitch_8
    add-int/lit8 p2, p1, 0x8

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzibo;->zze([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    goto :goto_1

    :pswitch_9
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    goto :goto_2

    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    goto :goto_2

    :pswitch_b
    add-int/lit8 p2, p1, 0x4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzibo;->zzd([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    goto :goto_1

    :pswitch_c
    add-int/lit8 p2, p1, 0x8

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzibo;->zze([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    goto :goto_1

    :goto_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static final zzU(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzigi;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzigi;->zzm(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzibz;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzigi;->zzn(ILcom/google/android/gms/internal/ads/zzibz;)V

    return-void
.end method

.method public static zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzifu;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/ads/zzidd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzidd;->zzt:Lcom/google/android/gms/internal/ads/zzifu;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzifu;->zza()Lcom/google/android/gms/internal/ads/zzifu;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzifu;->zzb()Lcom/google/android/gms/internal/ads/zzifu;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzidd;->zzt:Lcom/google/android/gms/internal/ads/zzifu;

    :cond_0
    return-object v0
.end method

.method public static zzm(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zziel;Lcom/google/android/gms/internal/ads/zzieu;Lcom/google/android/gms/internal/ads/zziea;Lcom/google/android/gms/internal/ads/zzift;Lcom/google/android/gms/internal/ads/zzico;Lcom/google/android/gms/internal/ads/zziej;)Lcom/google/android/gms/internal/ads/zzier;
    .locals 32

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzifa;

    if-eqz v1, :cond_37

    check-cast v0, Lcom/google/android/gms/internal/ads/zzifa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzifa;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/gms/internal/ads/zzier;->zza:[I

    move v9, v3

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v13

    move/from16 v17, v14

    move-object/from16 v16, v7

    move/from16 v7, v17

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    new-array v7, v13, [I

    move v13, v9

    move/from16 v17, v14

    move/from16 v9, v16

    move-object/from16 v16, v7

    move v14, v10

    move v7, v4

    move v4, v15

    :goto_a
    sget-object v10, Lcom/google/android/gms/internal/ads/zzier;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzifa;->zze()[Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzifa;->zzb()Lcom/google/android/gms/internal/ads/zzieo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    add-int v18, v17, v12

    add-int v12, v11, v11

    mul-int/lit8 v11, v11, 0x3

    new-array v11, v11, [I

    new-array v12, v12, [Ljava/lang/Object;

    move/from16 v20, v17

    move/from16 v21, v18

    const/4 v8, 0x0

    const/16 v19, 0x0

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v22, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v6, v22

    const/16 v22, 0xd

    :goto_c
    add-int/lit8 v24, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_15

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v22

    or-int/2addr v4, v6

    add-int/lit8 v22, v22, 0xd

    move/from16 v6, v24

    goto :goto_c

    :cond_15
    shl-int v6, v6, v22

    or-int/2addr v4, v6

    move/from16 v6, v24

    goto :goto_d

    :cond_16
    move/from16 v6, v22

    :goto_d
    add-int/lit8 v22, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_18

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v5, v22

    const/16 v22, 0xd

    :goto_e
    add-int/lit8 v25, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v5, v2, :cond_17

    and-int/lit16 v2, v5, 0x1fff

    shl-int v2, v2, v22

    or-int/2addr v6, v2

    add-int/lit8 v22, v22, 0xd

    move/from16 v5, v25

    move/from16 v2, v26

    goto :goto_e

    :cond_17
    shl-int v2, v5, v22

    or-int/2addr v6, v2

    move/from16 v2, v25

    goto :goto_f

    :cond_18
    move/from16 v26, v2

    move/from16 v2, v22

    :goto_f
    and-int/lit16 v5, v6, 0x400

    if-eqz v5, :cond_19

    add-int/lit8 v5, v19, 0x1

    aput v8, v16, v19

    move/from16 v19, v5

    :cond_19
    and-int/lit16 v5, v6, 0xff

    move/from16 v22, v14

    and-int/lit16 v14, v6, 0x800

    move/from16 v25, v13

    const/16 v13, 0x33

    if-lt v5, v13, :cond_23

    add-int/lit8 v13, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v27, v13

    const v13, 0xd800

    if-lt v2, v13, :cond_1b

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v13, v27

    const/16 v27, 0xd

    :goto_10
    add-int/lit8 v30, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move/from16 v31, v4

    const v4, 0xd800

    if-lt v13, v4, :cond_1a

    and-int/lit16 v4, v13, 0x1fff

    shl-int v4, v4, v27

    or-int/2addr v2, v4

    add-int/lit8 v27, v27, 0xd

    move/from16 v13, v30

    move/from16 v4, v31

    goto :goto_10

    :cond_1a
    shl-int v4, v13, v27

    or-int/2addr v2, v4

    move/from16 v13, v30

    goto :goto_11

    :cond_1b
    move/from16 v31, v4

    move/from16 v13, v27

    :goto_11
    add-int/lit8 v4, v5, -0x33

    move/from16 v27, v13

    const/16 v13, 0x9

    if-eq v4, v13, :cond_1c

    const/16 v13, 0x11

    if-ne v4, v13, :cond_1d

    :cond_1c
    const/4 v13, 0x1

    goto :goto_13

    :cond_1d
    const/16 v13, 0xc

    if-ne v4, v13, :cond_20

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzifa;->zzc()I

    move-result v4

    const/4 v13, 0x1

    if-eq v4, v13, :cond_1f

    if-eqz v14, :cond_1e

    goto :goto_12

    :cond_1e
    const/4 v14, 0x0

    goto :goto_14

    :cond_1f
    :goto_12
    add-int/lit8 v4, v9, 0x1

    move/from16 v23, v4

    const/4 v4, 0x3

    invoke-static {v8, v4, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->q(III)I

    move-result v4

    aget-object v9, v15, v9

    aput-object v9, v12, v4

    move/from16 v9, v23

    goto :goto_14

    :goto_13
    add-int/lit8 v4, v9, 0x1

    move/from16 v28, v4

    const/4 v4, 0x3

    invoke-static {v8, v4, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->q(III)I

    move-result v4

    aget-object v9, v15, v9

    aput-object v9, v12, v4

    move/from16 v9, v28

    :cond_20
    :goto_14
    add-int/2addr v2, v2

    aget-object v4, v15, v2

    instance-of v13, v4, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_21

    check-cast v4, Ljava/lang/reflect/Field;

    :goto_15
    move/from16 v28, v14

    goto :goto_16

    :cond_21
    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzier;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v15, v2

    goto :goto_15

    :goto_16
    invoke-virtual {v10, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v4, v13

    add-int/lit8 v2, v2, 0x1

    aget-object v13, v15, v2

    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_22

    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_17

    :cond_22
    check-cast v13, Ljava/lang/String;

    invoke-static {v3, v13}, Lcom/google/android/gms/internal/ads/zzier;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    aput-object v13, v15, v2

    :goto_17
    invoke-virtual {v10, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v2, v13

    move-object v13, v3

    move/from16 v24, v9

    move/from16 v14, v28

    move-object/from16 v28, v0

    move-object v9, v1

    move/from16 v1, v27

    move-object/from16 v27, v11

    move v11, v2

    const/4 v2, 0x0

    goto/16 :goto_24

    :cond_23
    move/from16 v31, v4

    add-int/lit8 v4, v9, 0x1

    aget-object v13, v15, v9

    check-cast v13, Ljava/lang/String;

    invoke-static {v3, v13}, Lcom/google/android/gms/internal/ads/zzier;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    move-object/from16 v27, v11

    const/16 v11, 0x9

    if-eq v5, v11, :cond_24

    const/16 v11, 0x11

    if-ne v5, v11, :cond_25

    :cond_24
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto/16 :goto_1e

    :cond_25
    const/16 v11, 0x1b

    if-eq v5, v11, :cond_2d

    const/16 v11, 0x31

    if-ne v5, v11, :cond_26

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto/16 :goto_1d

    :cond_26
    const/16 v11, 0xc

    if-eq v5, v11, :cond_2a

    const/16 v11, 0x1e

    if-eq v5, v11, :cond_2a

    const/16 v11, 0x2c

    if-ne v5, v11, :cond_27

    goto :goto_19

    :cond_27
    const/16 v11, 0x32

    if-ne v5, v11, :cond_29

    add-int/lit8 v11, v9, 0x2

    add-int/lit8 v28, v20, 0x1

    aput v8, v16, v20

    div-int/lit8 v20, v8, 0x3

    aget-object v4, v15, v4

    add-int v20, v20, v20

    aput-object v4, v12, v20

    if-eqz v14, :cond_28

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v4, v9, 0x3

    aget-object v9, v15, v11

    aput-object v9, v12, v20

    move-object v9, v1

    move/from16 v20, v28

    :goto_18
    move-object/from16 v28, v0

    goto :goto_1f

    :cond_28
    move-object v9, v1

    move v4, v11

    move/from16 v20, v28

    const/4 v14, 0x0

    goto :goto_18

    :cond_29
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_1c

    :cond_2a
    :goto_19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzifa;->zzc()I

    move-result v11

    move-object/from16 v28, v0

    const/4 v0, 0x1

    if-eq v11, v0, :cond_2c

    if-eqz v14, :cond_2b

    goto :goto_1a

    :cond_2b
    move-object v9, v1

    const/4 v14, 0x0

    goto :goto_1f

    :cond_2c
    :goto_1a
    add-int/lit8 v9, v9, 0x2

    const/4 v11, 0x3

    invoke-static {v8, v11, v0}, Lcom/google/android/gms/ads/internal/util/client/a;->q(III)I

    move-result v11

    aget-object v4, v15, v4

    aput-object v4, v12, v11

    :goto_1b
    move v4, v9

    :goto_1c
    move-object v9, v1

    goto :goto_1f

    :cond_2d
    move-object/from16 v28, v0

    const/4 v0, 0x1

    add-int/lit8 v9, v9, 0x2

    :goto_1d
    const/4 v11, 0x3

    invoke-static {v8, v11, v0}, Lcom/google/android/gms/ads/internal/util/client/a;->q(III)I

    move-result v11

    aget-object v4, v15, v4

    aput-object v4, v12, v11

    goto :goto_1b

    :goto_1e
    const/4 v9, 0x3

    invoke-static {v8, v9, v0}, Lcom/google/android/gms/ads/internal/util/client/a;->q(III)I

    move-result v9

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v12, v9

    goto :goto_1c

    :goto_1f
    invoke-virtual {v10, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    and-int/lit16 v1, v6, 0x1000

    const v11, 0xfffff

    if-eqz v1, :cond_31

    const/16 v1, 0x11

    if-gt v5, v1, :cond_31

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v13, 0xd800

    if-lt v2, v13, :cond_2f

    and-int/lit16 v2, v2, 0x1fff

    const/16 v11, 0xd

    :goto_20
    add-int/lit8 v24, v1, 0x1

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v13, :cond_2e

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v11

    or-int/2addr v2, v1

    add-int/lit8 v11, v11, 0xd

    move/from16 v1, v24

    goto :goto_20

    :cond_2e
    shl-int/2addr v1, v11

    or-int/2addr v2, v1

    move/from16 v1, v24

    :cond_2f
    add-int v11, v7, v7

    div-int/lit8 v24, v2, 0x20

    add-int v24, v24, v11

    aget-object v11, v15, v24

    instance-of v13, v11, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_30

    check-cast v11, Ljava/lang/reflect/Field;

    :goto_21
    move-object v13, v3

    move/from16 v24, v4

    goto :goto_22

    :cond_30
    check-cast v11, Ljava/lang/String;

    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzier;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    aput-object v11, v15, v24

    goto :goto_21

    :goto_22
    invoke-virtual {v10, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    long-to-int v3, v3

    rem-int/lit8 v2, v2, 0x20

    move v11, v3

    goto :goto_23

    :cond_31
    move-object v13, v3

    move/from16 v24, v4

    move v1, v2

    const/4 v2, 0x0

    :goto_23
    const/16 v3, 0x12

    if-lt v5, v3, :cond_32

    const/16 v3, 0x31

    if-gt v5, v3, :cond_32

    add-int/lit8 v3, v21, 0x1

    aput v0, v16, v21

    move v4, v0

    move/from16 v21, v3

    goto :goto_24

    :cond_32
    move v4, v0

    :goto_24
    add-int/lit8 v0, v8, 0x1

    aput v31, v27, v8

    add-int/lit8 v3, v8, 0x2

    move/from16 v29, v1

    and-int/lit16 v1, v6, 0x200

    if-eqz v1, :cond_33

    const/high16 v1, 0x20000000

    goto :goto_25

    :cond_33
    const/4 v1, 0x0

    :goto_25
    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_34

    const/high16 v6, 0x10000000

    goto :goto_26

    :cond_34
    const/4 v6, 0x0

    :goto_26
    if-eqz v14, :cond_35

    const/high16 v14, -0x80000000

    goto :goto_27

    :cond_35
    const/4 v14, 0x0

    :goto_27
    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v1, v6

    or-int/2addr v1, v14

    or-int/2addr v1, v5

    or-int/2addr v1, v4

    aput v1, v27, v0

    add-int/lit8 v8, v8, 0x3

    shl-int/lit8 v0, v2, 0x14

    or-int/2addr v0, v11

    aput v0, v27, v3

    move-object v1, v9

    move-object v3, v13

    move/from16 v14, v22

    move/from16 v9, v24

    move/from16 v13, v25

    move/from16 v2, v26

    move-object/from16 v11, v27

    move-object/from16 v0, v28

    move/from16 v4, v29

    const v5, 0xd800

    goto/16 :goto_b

    :cond_36
    move-object/from16 v28, v0

    move-object/from16 v27, v11

    move/from16 v25, v13

    move/from16 v22, v14

    new-instance v0, Lcom/google/android/gms/internal/ads/zzier;

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/zzifa;->zzb()Lcom/google/android/gms/internal/ads/zzieo;

    move-result-object v14

    const/4 v15, 0x0

    move-object v9, v0

    move-object/from16 v10, v27

    move-object v11, v12

    move/from16 v12, v25

    move/from16 v13, v22

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    invoke-direct/range {v9 .. v23}, Lcom/google/android/gms/internal/ads/zzier;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzieo;Z[IIILcom/google/android/gms/internal/ads/zzieu;Lcom/google/android/gms/internal/ads/zziea;Lcom/google/android/gms/internal/ads/zzift;Lcom/google/android/gms/internal/ads/zzico;Lcom/google/android/gms/internal/ads/zziej;)V

    return-object v0

    :cond_37
    check-cast v0, Lcom/google/android/gms/internal/ads/zzifo;

    const/4 v0, 0x0

    throw v0
.end method

.method private static zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    invoke-static {v3, p1}, Lcom/google/android/gms/ads/internal/util/client/a;->d(ILjava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Field "

    const-string v4, " for "

    invoke-static {v5, v3, p1, v4, p0}, Le1/i;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, " not found. Known fields are "

    invoke-static {v5, p0, v1}, LC/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final zzo(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzA(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzier;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object p2

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzier;->zzE(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifg;->zza()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/ads/zzifg;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    return-void

    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzier;->zzE(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifg;->zza()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/ads/zzifg;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzifg;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzier;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    aget p1, p1, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x26

    invoke-static {p1, p3}, LC/a;->e(II)I

    move-result p3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr p3, v1

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Source subfield "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzp(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzc:[I

    aget v1, v0, p3

    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzA(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    sget-object v3, Lcom/google/android/gms/internal/ads/zzier;->zzb:Lsun/misc/Unsafe;

    int-to-long v4, v2

    invoke-virtual {v3, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object p2

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzier;->zzE(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3, p1, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifg;->zza()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzifg;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    return-void

    :cond_2
    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzier;->zzE(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifg;->zza()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzifg;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    :cond_3
    invoke-interface {p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzifg;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    aget p3, v0, p3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x26

    invoke-static {p3, v0}, LC/a;->e(II)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Source subfield "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzq(I)Lcom/google/android/gms/internal/ads/zzifg;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzifg;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zziey;->zza()Lcom/google/android/gms/internal/ads/zziey;

    move-result-object v2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zziey;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v1

    aput-object v1, v0, p1

    return-object v1
.end method

.method private final zzr(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzs(I)Lcom/google/android/gms/internal/ads/zzidj;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzidj;

    return-object p1
.end method

.method private final zzt(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzier;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifg;->zza()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzier;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzier;->zzE(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifg;->zza()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzifg;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final zzu(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzier;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzier;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zzv(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifg;->zza()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/ads/zzier;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzA(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzier;->zzE(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzifg;->zza()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzifg;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final zzw(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzier;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzift;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzc:[I

    aget v0, v0, p2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzier;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzier;->zzs(I)Lcom/google/android/gms/internal/ads/zzidj;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p3

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zziei;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzier;->zzr(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzieh;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzieh;->zze()Lcom/google/android/gms/internal/ads/zzieg;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzidj;->zza(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p3, :cond_3

    invoke-virtual {p4, p5}, Lcom/google/android/gms/internal/ads/zzift;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzieh;->zzc(Lcom/google/android/gms/internal/ads/zzieg;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzibz;->zza:Lcom/google/android/gms/internal/ads/zzibz;

    new-array v4, v3, [B

    sget v5, Lcom/google/android/gms/internal/ads/zzici;->zzb:I

    new-instance v5, Lcom/google/android/gms/internal/ads/zzicf;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v3}, Lcom/google/android/gms/internal/ads/zzicf;-><init>([BII)V

    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, p2, v3, v2}, Lcom/google/android/gms/internal/ads/zzieh;->zzb(Lcom/google/android/gms/internal/ads/zzici;Lcom/google/android/gms/internal/ads/zzieg;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzibv;->zza(Lcom/google/android/gms/internal/ads/zzici;[B)Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v2

    invoke-virtual {p4, p3, v0, v2}, Lcom/google/android/gms/internal/ads/zzift;->zzd(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzibz;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    return-object p3
.end method

.method private static zzy(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzifg;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzifg;->zzl(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final zzz(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzifb;)V
    .locals 3

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzier;->zzD(I)Z

    move-result v0

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzifb;->zzn()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzier;->zzi:Z

    if-eqz p2, :cond_1

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzifb;->zzm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzifb;->zzq()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzg:Lcom/google/android/gms/internal/ads/zzieo;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzidd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbg()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzier;->zzc:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzA(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzier;->zzC(I)I

    move-result v2

    int-to-long v4, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzB(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v2

    if-ne v6, v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzifi;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzifi;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzifi;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_0

    goto/16 :goto_3

    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzifi;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    :pswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto/16 :goto_2

    :pswitch_7
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzifi;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzifi;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzifi;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzh(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzh(Ljava/lang/Object;J)Z

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto/16 :goto_2

    :pswitch_f
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    :pswitch_10
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    :pswitch_11
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    :pswitch_12
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_2

    :pswitch_13
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzj(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzj(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzl(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzl(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_1
    :goto_3
    return v0

    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzidd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzidd;->zzt:Lcom/google/android/gms/internal/ads/zzifu;

    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzidd;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzidd;->zzt:Lcom/google/android/gms/internal/ads/zzifu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzifu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzh:Z

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzicz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzicz;->zza:Lcom/google/android/gms/internal/ads/zzics;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzicz;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzicz;->zza:Lcom/google/android/gms/internal/ads/zzics;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzics;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
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

.method public final zzc(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzier;->zzc:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzA(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzier;->zzC(I)I

    move-result v3

    aget v2, v2, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v2, v1

    move v1, v2

    goto/16 :goto_5

    :pswitch_1
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzier;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzidq;->zzb:[B

    :goto_2
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    :goto_3
    add-int/2addr v1, v2

    goto/16 :goto_5

    :pswitch_2
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzier;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_3

    :pswitch_3
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzier;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzidq;->zzb:[B

    goto :goto_2

    :pswitch_4
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzier;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_3

    :pswitch_5
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzier;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_3

    :pswitch_6
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzier;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_3

    :pswitch_7
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_8
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :pswitch_9
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_a
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzier;->zzK(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzidq;->zzb(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_b
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzier;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_c
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzier;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzidq;->zzb:[B

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzier;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_e
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzier;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzidq;->zzb:[B

    goto/16 :goto_2

    :pswitch_f
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzier;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzidq;->zzb:[B

    goto/16 :goto_2

    :pswitch_10
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzier;->zzH(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_11
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzier;->zzG(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzidq;->zzb:[B

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    :goto_4
    add-int/2addr v1, v6

    goto/16 :goto_5

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzidq;->zzb:[B

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzidq;->zzb:[B

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzh(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzidq;->zzb(Z)I

    move-result v2

    goto/16 :goto_1

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzidq;->zzb:[B

    goto/16 :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzidq;->zzb:[B

    goto/16 :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzidq;->zzb:[B

    goto/16 :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzj(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zziga;->zzl(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzidq;->zzb:[B

    goto/16 :goto_2

    :cond_1
    :goto_5
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzidd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzidd;->zzt:Lcom/google/android/gms/internal/ads/zzifu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzifu;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzier;->zzh:Z

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x35

    check-cast p1, Lcom/google/android/gms/internal/ads/zzicz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzicz;->zza:Lcom/google/android/gms/internal/ads/zzics;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzics;->zza:Lcom/google/android/gms/internal/ads/zzifn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzifn;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzier;->zzF(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzier;->zzc:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzA(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzier;->zzC(I)I

    move-result v2

    aget v1, v1, v0

    int-to-long v3, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzp(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_1
    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzp(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_2

    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/ads/zzifi;->zza:I

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zziej;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_5
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzidp;

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzidp;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v5, :cond_1

    if-lez v6, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzidp;->zza()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/2addr v6, v5

    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/ads/zzidp;->zzh(I)Lcom/google/android/gms/internal/ads/zzidp;

    move-result-object v1

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzo(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zziga;->zzg(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziga;->zze(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zziga;->zzg(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziga;->zze(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziga;->zze(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziga;->zze(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzo(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzh(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzi(Ljava/lang/Object;JZ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziga;->zze(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zziga;->zzg(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziga;->zze(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zziga;->zzg(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zziga;->zzg(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzj(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzk(Ljava/lang/Object;JF)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzl(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zziga;->zzm(Ljava/lang/Object;JD)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzm:Lcom/google/android/gms/internal/ads/zzift;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzifi;->zzI(Lcom/google/android/gms/internal/ads/zzift;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzh:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzn:Lcom/google/android/gms/internal/ads/zzico;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzifi;->zzH(Lcom/google/android/gms/internal/ads/zzico;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zze(Ljava/lang/Object;)I
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x1

    sget-object v9, Lcom/google/android/gms/internal/ads/zzier;->zzb:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const v11, 0xfffff

    move v1, v10

    move v12, v1

    move v13, v12

    move v0, v11

    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzier;->zzc:[I

    array-length v3, v2

    if-ge v12, v3, :cond_1b

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzA(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzier;->zzC(I)I

    move-result v4

    aget v14, v2, v12

    add-int/lit8 v5, v12, 0x2

    aget v2, v2, v5

    and-int v5, v2, v11

    const/16 v15, 0x11

    if-gt v4, v15, :cond_2

    if-eq v5, v0, :cond_1

    if-ne v5, v11, :cond_0

    move v1, v10

    goto :goto_1

    :cond_0
    int-to-long v0, v5

    invoke-virtual {v9, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v1, v0

    :goto_1
    move v0, v5

    :cond_1
    ushr-int/lit8 v2, v2, 0x14

    shl-int v2, v8, v2

    move v15, v0

    move/from16 v16, v1

    move v5, v2

    goto :goto_2

    :cond_2
    move v15, v0

    move/from16 v16, v1

    move v5, v10

    :goto_2
    and-int v0, v3, v11

    sget-object v1, Lcom/google/android/gms/internal/ads/zzict;->zzJ:Lcom/google/android/gms/internal/ads/zzict;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzict;->zza()I

    move-result v1

    if-lt v4, v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzict;->zzW:Lcom/google/android/gms/internal/ads/zzict;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzict;->zza()I

    :cond_3
    int-to-long v2, v0

    const/16 v17, 0x3f

    const/4 v1, 0x4

    const/16 v0, 0x8

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzieo;

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/ads/zzifi;->zzE(ILcom/google/android/gms/internal/ads/zzieo;Lcom/google/android/gms/internal/ads/zzifg;)I

    move-result v0

    :goto_3
    add-int/2addr v13, v0

    goto/16 :goto_15

    :pswitch_1
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzici;->zzG(J)I

    move-result v1

    :goto_4
    add-int/2addr v1, v0

    add-int/2addr v13, v1

    goto/16 :goto_15

    :pswitch_2
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzI(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    goto/16 :goto_15

    :pswitch_3
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    goto/16 :goto_15

    :pswitch_4
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0, v1, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    goto/16 :goto_15

    :pswitch_5
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzI(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzici;->zzG(J)I

    move-result v1

    goto :goto_4

    :pswitch_6
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzI(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    invoke-static {v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    goto/16 :goto_15

    :pswitch_7
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzibz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibz;->zzb()I

    move-result v1

    invoke-static {v1, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_8
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/ads/zzifi;->zzD(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzifg;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_9
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzibz;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/google/android/gms/internal/ads/zzibz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibz;->zzb()I

    move-result v1

    invoke-static {v1, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :cond_4
    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzigf;->zzc(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_a
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0, v8, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    goto/16 :goto_15

    :pswitch_b
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0, v1, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    goto/16 :goto_15

    :pswitch_c
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    goto/16 :goto_15

    :pswitch_d
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzI(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzici;->zzG(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_e
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzici;->zzG(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_f
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzici;->zzG(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_10
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0, v1, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    goto/16 :goto_15

    :pswitch_11
    invoke-direct {v6, v7, v14, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    goto/16 :goto_15

    :pswitch_12
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzr(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/ads/zziei;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzieh;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_5
    move v2, v10

    goto :goto_7

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziei;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v10

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v14, v4, v3}, Lcom/google/android/gms/internal/ads/zzieh;->zzd(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_6

    :cond_6
    :goto_7
    add-int/2addr v13, v2

    goto/16 :goto_15

    :pswitch_13
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/zzifi;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    move v4, v10

    goto :goto_9

    :cond_7
    move v3, v10

    move v4, v3

    :goto_8
    if-ge v3, v2, :cond_8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzieo;

    invoke-static {v14, v5, v1}, Lcom/google/android/gms/internal/ads/zzifi;->zzE(ILcom/google/android/gms/internal/ads/zzieo;Lcom/google/android/gms/internal/ads/zzifg;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v8

    goto :goto_8

    :cond_8
    :goto_9
    add-int/2addr v13, v4

    goto/16 :goto_15

    :pswitch_14
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzu(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v1

    invoke-static {v0, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_15
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzy(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v1

    invoke-static {v0, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_16
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzB(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v1

    invoke-static {v0, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_17
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzz(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v1

    invoke-static {v0, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_18
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzv(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v1

    invoke-static {v0, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_19
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzx(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v1

    invoke-static {v0, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_1a
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzifi;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v1

    invoke-static {v0, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_1b
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzz(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v1

    invoke-static {v0, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_1c
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzB(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v1

    invoke-static {v0, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_1d
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzw(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v1

    invoke-static {v0, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_1e
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzt(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v1

    invoke-static {v0, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_1f
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzs(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v1

    invoke-static {v0, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_20
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzz(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v1

    invoke-static {v0, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_21
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzB(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1a

    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v1

    invoke-static {v0, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_22
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzifi;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_5

    :cond_9
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzu(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v2

    :goto_a
    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    goto/16 :goto_7

    :pswitch_23
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzifi;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_5

    :cond_a
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzy(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v2

    goto :goto_a

    :pswitch_24
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/ads/zzifi;->zzC(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_25
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/ads/zzifi;->zzA(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_26
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzifi;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_5

    :cond_b
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzv(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v2

    goto :goto_a

    :pswitch_27
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzifi;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_5

    :cond_c
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzx(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v2

    goto :goto_a

    :pswitch_28
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzifi;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_5

    :cond_d
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v2

    mul-int/2addr v2, v1

    move v1, v10

    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzibz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzibz;->zzb()I

    move-result v3

    invoke-static {v3, v3, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v2

    add-int/2addr v1, v8

    goto :goto_b

    :pswitch_29
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/zzifi;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    move v3, v10

    goto :goto_e

    :cond_e
    shl-int/lit8 v3, v14, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v10

    :goto_c
    if-ge v4, v2, :cond_10

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v14, v5, Lcom/google/android/gms/internal/ads/zzidy;

    if-eqz v14, :cond_f

    check-cast v5, Lcom/google/android/gms/internal/ads/zzidy;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzidy;->zzb()I

    move-result v5

    invoke-static {v5, v5, v3}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v3

    goto :goto_d

    :cond_f
    check-cast v5, Lcom/google/android/gms/internal/ads/zzibi;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzibi;->zzaT(Lcom/google/android/gms/internal/ads/zzifg;)I

    move-result v5

    invoke-static {v5, v5, v3}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v3

    :goto_d
    add-int/2addr v4, v8

    goto :goto_c

    :cond_10
    :goto_e
    add-int/2addr v13, v3

    goto/16 :goto_15

    :pswitch_2a
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzifi;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_5

    :cond_11
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v2

    mul-int/2addr v2, v1

    instance-of v3, v0, Lcom/google/android/gms/internal/ads/zzidz;

    if-eqz v3, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/ads/zzidz;

    move v3, v10

    :goto_f
    if-ge v3, v1, :cond_6

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzidz;->zzc()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzibz;

    if-eqz v5, :cond_12

    check-cast v4, Lcom/google/android/gms/internal/ads/zzibz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzibz;->zzb()I

    move-result v4

    invoke-static {v4, v4, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v2

    goto :goto_10

    :cond_12
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzigf;->zzc(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v4, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v2

    :goto_10
    add-int/2addr v3, v8

    goto :goto_f

    :cond_13
    move v3, v10

    :goto_11
    if-ge v3, v1, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzibz;

    if-eqz v5, :cond_14

    check-cast v4, Lcom/google/android/gms/internal/ads/zzibz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzibz;->zzb()I

    move-result v4

    invoke-static {v4, v4, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v2

    goto :goto_12

    :cond_14
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzigf;->zzc(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v4, v2}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v2

    :goto_12
    add-int/2addr v3, v8

    goto :goto_11

    :pswitch_2b
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzifi;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    :goto_13
    move v1, v10

    goto :goto_14

    :cond_15
    shl-int/lit8 v1, v14, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v1

    add-int/2addr v1, v8

    mul-int/2addr v1, v0

    :goto_14
    add-int/2addr v13, v1

    goto/16 :goto_15

    :pswitch_2c
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/ads/zzifi;->zzA(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2d
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/ads/zzifi;->zzC(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2e
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzifi;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_5

    :cond_16
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzw(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v2

    goto/16 :goto_a

    :pswitch_2f
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzifi;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_5

    :cond_17
    shl-int/lit8 v2, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzt(Ljava/util/List;)I

    move-result v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v2

    goto/16 :goto_a

    :pswitch_30
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzifi;->zza:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    goto :goto_13

    :cond_18
    shl-int/lit8 v1, v14, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzifi;->zzs(Ljava/util/List;)I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v1

    mul-int/2addr v1, v0

    add-int/2addr v1, v2

    goto :goto_14

    :pswitch_31
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/ads/zzifi;->zzA(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_32
    invoke-virtual {v9, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v14, v0, v10}, Lcom/google/android/gms/internal/ads/zzifi;->zzC(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_3

    :pswitch_33
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v2

    move v2, v12

    move-wide v10, v3

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzieo;

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/ads/zzifi;->zzE(ILcom/google/android/gms/internal/ads/zzieo;Lcom/google/android/gms/internal/ads/zzifg;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_34
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzici;->zzG(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_35
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    xor-int/2addr v1, v2

    invoke-static {v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    goto/16 :goto_15

    :pswitch_36
    move v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0, v10, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    goto/16 :goto_15

    :pswitch_37
    move-object/from16 v0, p0

    move v10, v1

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0, v10, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    goto/16 :goto_15

    :pswitch_38
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzici;->zzG(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_39
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    invoke-static {v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    goto/16 :goto_15

    :pswitch_3a
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzibz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibz;->zzb()I

    move-result v1

    invoke-static {v1, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_3b
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v1

    invoke-static {v14, v0, v1}, Lcom/google/android/gms/internal/ads/zzifi;->zzD(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzifg;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3c
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzibz;

    if-eqz v2, :cond_19

    check-cast v1, Lcom/google/android/gms/internal/ads/zzibz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzibz;->zzb()I

    move-result v1

    invoke-static {v1, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :cond_19
    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzigf;->zzc(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v1, v0, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->u(IIII)I

    move-result v13

    goto/16 :goto_15

    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0, v8, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    goto/16 :goto_15

    :pswitch_3e
    move v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0, v10, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    goto/16 :goto_15

    :pswitch_3f
    move v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0, v10, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    goto/16 :goto_15

    :pswitch_40
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzici;->zzG(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_41
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzici;->zzG(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_42
    move-wide v10, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-virtual {v9, v7, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzici;->zzF(I)I

    move-result v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzici;->zzG(J)I

    move-result v1

    goto/16 :goto_4

    :pswitch_43
    move v10, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0, v10, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    goto :goto_15

    :pswitch_44
    move v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    shl-int/lit8 v0, v14, 0x3

    invoke-static {v0, v10, v13}, Lcom/google/android/gms/ads/internal/util/client/a;->a(III)I

    move-result v13

    :cond_1a
    :goto_15
    add-int/lit8 v12, v12, 0x3

    move v0, v15

    move/from16 v1, v16

    const/4 v10, 0x0

    const v11, 0xfffff

    goto/16 :goto_0

    :cond_1b
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/zzidd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzidd;->zzt:Lcom/google/android/gms/internal/ads/zzifu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzifu;->zzi()I

    move-result v0

    add-int/2addr v0, v13

    iget-boolean v1, v6, Lcom/google/android/gms/internal/ads/zzier;->zzh:Z

    if-eqz v1, :cond_1e

    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/ads/zzicz;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzicz;->zza:Lcom/google/android/gms/internal/ads/zzics;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzics;->zza:Lcom/google/android/gms/internal/ads/zzifn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzifn;->zzc()I

    move-result v2

    const/4 v10, 0x0

    const/16 v18, 0x0

    :goto_16
    if-ge v10, v2, :cond_1c

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzifn;->zzd(I)Ljava/util/Map$Entry;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzifk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzifk;->zza()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzicr;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzics;->zzj(Lcom/google/android/gms/internal/ads/zzicr;Ljava/lang/Object;)I

    move-result v3

    add-int v18, v18, v3

    add-int/2addr v10, v8

    goto :goto_16

    :cond_1c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzifn;->zze()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzicr;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzics;->zzj(Lcom/google/android/gms/internal/ads/zzicr;Ljava/lang/Object;)I

    move-result v2

    add-int v18, v18, v2

    goto :goto_17

    :cond_1d
    add-int v0, v0, v18

    :cond_1e
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzigi;)V
    .locals 21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzier;->zzh:Z

    if-eqz v0, :cond_0

    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/zzicz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzicz;->zza:Lcom/google/android/gms/internal/ads/zzics;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzics;->zza:Lcom/google/android/gms/internal/ads/zzifn;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzics;->zzc()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v10, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    iget-object v11, v6, Lcom/google/android/gms/internal/ads/zzier;->zzc:[I

    sget-object v12, Lcom/google/android/gms/internal/ads/zzier;->zzb:Lsun/misc/Unsafe;

    const v13, 0xfffff

    move v0, v13

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_1
    array-length v3, v11

    if-ge v15, v3, :cond_8

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzA(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzier;->zzC(I)I

    move-result v4

    aget v5, v11, v15

    const/16 v9, 0x11

    if-gt v4, v9, :cond_3

    add-int/lit8 v9, v15, 0x2

    aget v9, v11, v9

    and-int v14, v9, v13

    if-eq v14, v0, :cond_2

    if-ne v14, v13, :cond_1

    move-object/from16 v17, v1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    move-object/from16 v17, v1

    int-to-long v0, v14

    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v2, v0

    :goto_2
    move v0, v14

    goto :goto_3

    :cond_2
    move-object/from16 v17, v1

    :goto_3
    ushr-int/lit8 v1, v9, 0x14

    const/4 v9, 0x1

    shl-int v1, v9, v1

    move v9, v0

    move/from16 v18, v1

    move-object/from16 v14, v17

    :goto_4
    move/from16 v17, v2

    goto :goto_5

    :cond_3
    move-object/from16 v17, v1

    move v9, v0

    move-object/from16 v14, v17

    const/16 v18, 0x0

    goto :goto_4

    :goto_5
    if-eqz v14, :cond_5

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzier;->zzn:Lcom/google/android/gms/internal/ads/zzico;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzida;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzida;->zza:I

    if-gt v1, v5, :cond_5

    invoke-virtual {v0, v8, v14}, Lcom/google/android/gms/internal/ads/zzico;->zzb(Lcom/google/android/gms/internal/ads/zzigi;Ljava/util/Map$Entry;)V

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_4
    const/4 v14, 0x0

    goto :goto_5

    :cond_5
    and-int v0, v3, v13

    int-to-long v2, v0

    packed-switch v4, :pswitch_data_0

    :cond_6
    :goto_6
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    goto/16 :goto_8

    :pswitch_0
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v1

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzifg;)V

    goto :goto_6

    :pswitch_1
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzq(IJ)V

    goto :goto_6

    :pswitch_2
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzI(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zzp(II)V

    goto :goto_6

    :pswitch_3
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzd(IJ)V

    goto :goto_6

    :pswitch_4
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzI(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zzb(II)V

    goto :goto_6

    :pswitch_5
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzI(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zzg(II)V

    goto :goto_6

    :pswitch_6
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzI(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zzo(II)V

    goto :goto_6

    :pswitch_7
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibz;

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zzn(ILcom/google/android/gms/internal/ads/zzibz;)V

    goto :goto_6

    :pswitch_8
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v1

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzifg;)V

    goto/16 :goto_6

    :pswitch_9
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0, v8}, Lcom/google/android/gms/internal/ads/zzier;->zzU(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzigi;)V

    goto/16 :goto_6

    :pswitch_a
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzK(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zzl(IZ)V

    goto/16 :goto_6

    :pswitch_b
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzI(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zzk(II)V

    goto/16 :goto_6

    :pswitch_c
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzj(IJ)V

    goto/16 :goto_6

    :pswitch_d
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzI(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zzi(II)V

    goto/16 :goto_6

    :pswitch_e
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzh(IJ)V

    goto/16 :goto_6

    :pswitch_f
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzc(IJ)V

    goto/16 :goto_6

    :pswitch_10
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzH(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zze(IF)V

    goto/16 :goto_6

    :pswitch_11
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzG(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzf(ID)V

    goto/16 :goto_6

    :pswitch_12
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzr(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzieh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzieh;->zze()Lcom/google/android/gms/internal/ads/zzieg;

    move-result-object v1

    check-cast v0, Lcom/google/android/gms/internal/ads/zziei;

    invoke-interface {v8, v5, v1, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zzM(ILcom/google/android/gms/internal/ads/zzieg;Ljava/util/Map;)V

    goto/16 :goto_6

    :pswitch_13
    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v2

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/ads/zzifi;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Lcom/google/android/gms/internal/ads/zzifg;)V

    goto/16 :goto_6

    :pswitch_14
    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_6

    :pswitch_15
    const/4 v4, 0x1

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_6

    :pswitch_16
    const/4 v4, 0x1

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_6

    :pswitch_17
    const/4 v4, 0x1

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_6

    :pswitch_18
    const/4 v4, 0x1

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_6

    :pswitch_19
    const/4 v4, 0x1

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_6

    :pswitch_1a
    const/4 v4, 0x1

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_6

    :pswitch_1b
    const/4 v4, 0x1

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_6

    :pswitch_1c
    const/4 v4, 0x1

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_6

    :pswitch_1d
    const/4 v4, 0x1

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_6

    :pswitch_1e
    const/4 v4, 0x1

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_6

    :pswitch_1f
    const/4 v4, 0x1

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_6

    :pswitch_20
    const/4 v4, 0x1

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_6

    :pswitch_21
    const/4 v4, 0x1

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_6

    :pswitch_22
    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    :goto_7
    move/from16 v19, v4

    move-object/from16 v20, v11

    move-object/from16 v16, v14

    goto/16 :goto_8

    :pswitch_23
    const/4 v4, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto :goto_7

    :pswitch_24
    const/4 v4, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto :goto_7

    :pswitch_25
    const/4 v4, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto :goto_7

    :pswitch_26
    const/4 v4, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto :goto_7

    :pswitch_27
    const/4 v4, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto :goto_7

    :pswitch_28
    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8}, Lcom/google/android/gms/internal/ads/zzifi;->zzp(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;)V

    goto/16 :goto_6

    :pswitch_29
    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v2

    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/ads/zzifi;->zzq(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Lcom/google/android/gms/internal/ads/zzifg;)V

    goto/16 :goto_6

    :pswitch_2a
    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8}, Lcom/google/android/gms/internal/ads/zzifi;->zzo(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;)V

    goto/16 :goto_6

    :pswitch_2b
    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_7

    :pswitch_2c
    const/4 v4, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_7

    :pswitch_2d
    const/4 v4, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_7

    :pswitch_2e
    const/4 v4, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_7

    :pswitch_2f
    const/4 v4, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_7

    :pswitch_30
    const/4 v4, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_7

    :pswitch_31
    const/4 v4, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_7

    :pswitch_32
    const/4 v4, 0x0

    aget v0, v11, v15

    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzifi;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzigi;Z)V

    goto/16 :goto_7

    :pswitch_33
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v16, v14

    move-wide v13, v2

    move v2, v15

    move v3, v9

    move/from16 v19, v4

    move/from16 v4, v17

    move-object/from16 v20, v11

    move v11, v5

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v1

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzifg;)V

    goto/16 :goto_8

    :pswitch_34
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzq(IJ)V

    goto/16 :goto_8

    :pswitch_35
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zzp(II)V

    goto/16 :goto_8

    :pswitch_36
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzd(IJ)V

    goto/16 :goto_8

    :pswitch_37
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zzb(II)V

    goto/16 :goto_8

    :pswitch_38
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zzg(II)V

    goto/16 :goto_8

    :pswitch_39
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zzo(II)V

    goto/16 :goto_8

    :pswitch_3a
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzibz;

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zzn(ILcom/google/android/gms/internal/ads/zzibz;)V

    goto/16 :goto_8

    :pswitch_3b
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v1

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzifg;)V

    goto/16 :goto_8

    :pswitch_3c
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v11, v0, v8}, Lcom/google/android/gms/internal/ads/zzier;->zzU(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzigi;)V

    goto/16 :goto_8

    :pswitch_3d
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v7, v13, v14}, Lcom/google/android/gms/internal/ads/zziga;->zzh(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zzl(IZ)V

    goto/16 :goto_8

    :pswitch_3e
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zzk(II)V

    goto/16 :goto_8

    :pswitch_3f
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzj(IJ)V

    goto/16 :goto_8

    :pswitch_40
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zzi(II)V

    goto/16 :goto_8

    :pswitch_41
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzh(IJ)V

    goto/16 :goto_8

    :pswitch_42
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzc(IJ)V

    goto :goto_8

    :pswitch_43
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v7, v13, v14}, Lcom/google/android/gms/internal/ads/zziga;->zzj(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzigi;->zze(IF)V

    goto :goto_8

    :pswitch_44
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v7, v13, v14}, Lcom/google/android/gms/internal/ads/zziga;->zzl(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzigi;->zzf(ID)V

    :cond_7
    :goto_8
    add-int/lit8 v15, v15, 0x3

    move v0, v9

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v11, v20

    const v13, 0xfffff

    goto/16 :goto_1

    :cond_8
    move-object/from16 v17, v1

    :goto_9
    if-eqz v1, :cond_a

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzier;->zzn:Lcom/google/android/gms/internal/ads/zzico;

    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/ads/zzico;->zzb(Lcom/google/android/gms/internal/ads/zzigi;Ljava/util/Map$Entry;)V

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    goto :goto_9

    :cond_a
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/zzidd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzidd;->zzt:Lcom/google/android/gms/internal/ads/zzifu;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzifu;->zzg(Lcom/google/android/gms/internal/ads/zzigi;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzifb;Lcom/google/android/gms/internal/ads/zzicn;)V
    .locals 10

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzier;->zzF(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzier;->zzm:Lcom/google/android/gms/internal/ads/zzift;

    const/4 v7, 0x0

    move-object v8, v7

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzb()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzR(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    if-gez v0, :cond_5

    const v0, 0x7fffffff

    if-ne v1, v0, :cond_1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzier;->zzk:I

    move-object v3, v8

    :goto_1
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzier;->zzl:I

    if-ge p2, p3, :cond_f

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzier;->zzj:[I

    aget v2, p3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzift;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzh:Z

    if-nez v0, :cond_2

    move-object v0, v7

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzg:Lcom/google/android/gms/internal/ads/zzieo;

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzicn;->zzc(Lcom/google/android/gms/internal/ads/zzieo;I)Lcom/google/android/gms/internal/ads/zzidb;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_4

    if-nez v8, :cond_3

    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/zzift;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    :cond_3
    invoke-virtual {v6, v8, p2, v9}, Lcom/google/android/gms/internal/ads/zzift;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzifb;I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzier;->zzk:I

    move-object v3, v8

    :goto_3
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzier;->zzl:I

    if-ge p2, p3, :cond_f

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzier;->zzj:[I

    aget v2, p3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzift;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :catchall_0
    move-exception p2

    goto/16 :goto_9

    :cond_4
    :try_start_2
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzicz;

    throw v7

    :cond_5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzA(I)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzier;->zzC(I)I

    move-result v3

    const v4, 0xfffff

    packed-switch v3, :pswitch_data_0

    if-nez v8, :cond_6

    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/zzift;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    :cond_6
    invoke-virtual {v6, v8, p2, v9}, Lcom/google/android/gms/internal/ads/zzift;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzifb;I)Z

    move-result v0
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzidr; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzier;->zzk:I

    move-object v3, v8

    :goto_4
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzier;->zzl:I

    if-ge p2, p3, :cond_f

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzier;->zzj:[I

    aget v2, p3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzift;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :pswitch_0
    :try_start_4
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzv(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzieo;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v3

    invoke-interface {p2, v2, v3, p3}, Lcom/google/android/gms/internal/ads/zzifb;->zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzifg;Lcom/google/android/gms/internal/ads/zzicn;)V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzier;->zzw(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_1
    and-int/2addr v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzw()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_2
    and-int/2addr v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzv()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_3
    and-int/2addr v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzu()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_4
    and-int/2addr v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzs()I

    move-result v3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzs(I)Lcom/google/android/gms/internal/ads/zzidj;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzidj;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {p1, v1, v3, v8, v6}, Lcom/google/android/gms/internal/ads/zzifi;->zzK(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzift;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    :cond_8
    :goto_5
    and-int/2addr v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_6
    and-int/2addr v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzr()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_7
    and-int/2addr v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzq()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzv(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzieo;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v3

    invoke-interface {p2, v2, v3, p3}, Lcom/google/android/gms/internal/ads/zzifb;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzifg;Lcom/google/android/gms/internal/ads/zzicn;)V

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzier;->zzw(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0, p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzier;->zzz(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzifb;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_a
    and-int/2addr v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzl()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_b
    and-int/2addr v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzk()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_c
    and-int/2addr v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzj()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_d
    and-int/2addr v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzi()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_e
    and-int/2addr v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzg()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_f
    and-int/2addr v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzh()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_10
    and-int/2addr v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzf()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_11
    and-int/2addr v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zze()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_12
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzr(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzA(I)I

    move-result v0

    and-int/2addr v0, v4

    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/ads/zziei;->zza()Lcom/google/android/gms/internal/ads/zziei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziei;->zzc()Lcom/google/android/gms/internal/ads/zziei;

    move-result-object v0

    invoke-static {p1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziej;->zza(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/google/android/gms/internal/ads/zziei;->zza()Lcom/google/android/gms/internal/ads/zziei;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zziei;->zzc()Lcom/google/android/gms/internal/ads/zziei;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zziej;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v4

    :cond_a
    :goto_6
    check-cast v0, Lcom/google/android/gms/internal/ads/zziei;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzieh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzieh;->zze()Lcom/google/android/gms/internal/ads/zzieg;

    move-result-object v1

    invoke-interface {p2, v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzifb;->zzP(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzieg;Lcom/google/android/gms/internal/ads/zzicn;)V

    goto/16 :goto_0

    :pswitch_13
    and-int v1, v2, v4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v0

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1, v0, p3}, Lcom/google/android/gms/internal/ads/zzifb;->zzH(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzifg;Lcom/google/android/gms/internal/ads/zzicn;)V

    goto/16 :goto_0

    :pswitch_14
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzO(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_15
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzN(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_16
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzM(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_17
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzL(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_18
    and-int/2addr v2, v4

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzifb;->zzK(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzs(I)Lcom/google/android/gms/internal/ads/zzidj;

    move-result-object v3

    move-object v0, p1

    move-object v4, v8

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzifi;->zzJ(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/ads/zzidj;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzift;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_19
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzJ(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1a
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzE(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1b
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzD(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1c
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzC(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1d
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzB(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1e
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzz(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1f
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzA(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_20
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzy(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_21
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzx(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_22
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzO(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_23
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzN(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_24
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzM(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_25
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzL(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_26
    and-int/2addr v2, v4

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzifb;->zzK(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzs(I)Lcom/google/android/gms/internal/ads/zzidj;

    move-result-object v3

    move-object v0, p1

    move-object v4, v8

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzifi;->zzJ(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/ads/zzidj;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzift;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_27
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzJ(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_28
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzI(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_29
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v0

    and-int v1, v2, v4

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1, v0, p3}, Lcom/google/android/gms/internal/ads/zzifb;->zzG(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzifg;Lcom/google/android/gms/internal/ads/zzicn;)V

    goto/16 :goto_0

    :pswitch_2a
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzier;->zzD(I)Z

    move-result v0

    if-eqz v0, :cond_b

    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzice;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzice;->zzF(Ljava/util/List;Z)V

    goto/16 :goto_0

    :cond_b
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzice;

    invoke-virtual {v1, v0, v9}, Lcom/google/android/gms/internal/ads/zzice;->zzF(Ljava/util/List;Z)V

    goto/16 :goto_0

    :pswitch_2b
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzE(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2c
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzD(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2d
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzC(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2e
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzB(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2f
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzz(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_30
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzA(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_31
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzy(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_32
    and-int v0, v2, v4

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zziea;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzifb;->zzx(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_33
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzieo;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v2

    invoke-interface {p2, v1, v2, p3}, Lcom/google/android/gms/internal/ads/zzifb;->zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzifg;Lcom/google/android/gms/internal/ads/zzicn;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzu(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_34
    and-int v1, v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzw()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzg(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_35
    and-int v1, v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzv()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zziga;->zze(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_36
    and-int v1, v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzu()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzg(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_37
    and-int v1, v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzt()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zziga;->zze(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_38
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzs()I

    move-result v3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzs(I)Lcom/google/android/gms/internal/ads/zzidj;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzidj;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_7

    :cond_c
    invoke-static {p1, v1, v3, v8, v6}, Lcom/google/android/gms/internal/ads/zzifi;->zzK(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzift;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    :cond_d
    :goto_7
    and-int v1, v2, v4

    int-to-long v1, v1

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zziga;->zze(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_39
    and-int v1, v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzr()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zziga;->zze(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3a
    and-int v1, v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzq()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zziga;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3b
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzieo;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v2

    invoke-interface {p2, v1, v2, p3}, Lcom/google/android/gms/internal/ads/zzifb;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzifg;Lcom/google/android/gms/internal/ads/zzicn;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzu(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3c
    invoke-direct {p0, p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzier;->zzz(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzifb;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3d
    and-int v1, v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzl()Z

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zziga;->zzi(Ljava/lang/Object;JZ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3e
    and-int v1, v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzk()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zziga;->zze(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3f
    and-int v1, v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzj()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzg(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_40
    and-int v1, v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzi()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zziga;->zze(Ljava/lang/Object;JI)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_41
    and-int v1, v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzg()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzg(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_42
    and-int v1, v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzh()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzg(Ljava/lang/Object;JJ)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_43
    and-int v1, v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zzf()F

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zziga;->zzk(Ljava/lang/Object;JF)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_44
    and-int v1, v2, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzifb;->zze()D

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzm(Ljava/lang/Object;JD)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzO(Ljava/lang/Object;I)V
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzidr; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_0
    if-nez v8, :cond_e

    :try_start_5
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/zzift;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    :cond_e
    invoke-virtual {v6, v8, p2, v9}, Lcom/google/android/gms/internal/ads/zzift;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzifb;I)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzier;->zzk:I

    move-object v3, v8

    :goto_8
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzier;->zzl:I

    if-ge p2, p3, :cond_f

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzier;->zzj:[I

    aget v2, p3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzift;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {v6, p1, v3}, Lcom/google/android/gms/internal/ads/zzift;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    return-void

    :goto_9
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzier;->zzk:I

    move-object v3, v8

    :goto_a
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzl:I

    if-ge p3, v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzj:[I

    aget v2, v0, p3

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzift;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    :cond_11
    if-eqz v3, :cond_12

    invoke-virtual {v6, p1, v3}, Lcom/google/android/gms/internal/ads/zzift;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzi(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/zzibn;)I
    .locals 34

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v2, p6

    const/4 v1, 0x3

    const/4 v0, 0x1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzier;->zzF(Ljava/lang/Object;)V

    sget-object v14, Lcom/google/android/gms/internal/ads/zzier;->zzb:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    const/4 v13, -0x1

    move/from16 v8, p3

    move v9, v13

    move/from16 v10, v16

    move/from16 v17, v10

    move/from16 v18, v17

    const v11, 0xfffff

    :goto_0
    const/16 v19, 0x0

    const-string v3, "Failed to parse the message."

    if-ge v8, v4, :cond_7b

    add-int/lit8 v12, v8, 0x1

    aget-byte v8, v15, v8

    if-gez v8, :cond_0

    invoke-static {v8, v15, v12, v2}, Lcom/google/android/gms/internal/ads/zzibo;->zzb(I[BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v8

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    move/from16 v32, v12

    move v12, v8

    move/from16 v8, v32

    :cond_0
    ushr-int/lit8 v0, v8, 0x3

    if-le v0, v9, :cond_2

    div-int/2addr v10, v1

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzier;->zze:I

    if-lt v0, v9, :cond_1

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzier;->zzf:I

    if-gt v0, v9, :cond_1

    invoke-direct {v6, v0, v10}, Lcom/google/android/gms/internal/ads/zzier;->zzS(II)I

    move-result v9

    goto :goto_1

    :cond_1
    move v9, v13

    :goto_1
    move v10, v9

    goto :goto_2

    :cond_2
    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzR(I)I

    move-result v9

    goto :goto_1

    :goto_2
    if-ne v10, v13, :cond_3

    move/from16 v22, v1

    move-object/from16 v31, v3

    move-object v10, v6

    move/from16 v20, v11

    move/from16 v21, v13

    move-object v9, v14

    move/from16 v23, v16

    move v11, v0

    move-object v6, v2

    move-object v14, v7

    move v2, v12

    move v7, v5

    move v12, v8

    goto/16 :goto_4f

    :cond_3
    and-int/lit8 v9, v8, 0x7

    iget-object v13, v6, Lcom/google/android/gms/internal/ads/zzier;->zzc:[I

    const/16 v18, 0x1

    add-int/lit8 v24, v10, 0x1

    aget v1, v13, v24

    move-object/from16 p3, v3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzier;->zzC(I)I

    move-result v3

    const v18, 0xfffff

    and-int v4, v1, v18

    int-to-long v4, v4

    move/from16 v18, v8

    const-wide/16 v26, 0x0

    const-string v8, ""

    move-object/from16 v28, v8

    const-string v8, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move-object/from16 v29, v8

    const/16 v8, 0x11

    if-gt v3, v8, :cond_15

    const/16 v20, 0x2

    add-int/lit8 v8, v10, 0x2

    aget v8, v13, v8

    ushr-int/lit8 v13, v8, 0x14

    const/16 v22, 0x1

    shl-int v13, v22, v13

    move/from16 v24, v1

    const v1, 0xfffff

    and-int/2addr v8, v1

    if-eq v8, v11, :cond_6

    if-eq v11, v1, :cond_4

    int-to-long v1, v11

    move/from16 v11, v17

    invoke-virtual {v14, v7, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v1, 0xfffff

    :cond_4
    if-ne v8, v1, :cond_5

    move/from16 v1, v16

    goto :goto_3

    :cond_5
    int-to-long v1, v8

    invoke-virtual {v14, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :goto_3
    move/from16 v17, v8

    goto :goto_4

    :cond_6
    move/from16 v1, v17

    move/from16 v17, v11

    :goto_4
    packed-switch v3, :pswitch_data_0

    const/4 v2, 0x3

    if-ne v9, v2, :cond_7

    or-int/2addr v1, v13

    invoke-direct {v6, v7, v10}, Lcom/google/android/gms/internal/ads/zzier;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    shl-int/lit8 v4, v0, 0x3

    or-int/lit8 v13, v4, 0x4

    invoke-direct {v6, v10}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v9

    move/from16 v4, v18

    move-object v8, v3

    move v5, v10

    move-object/from16 v10, p2

    move v11, v12

    move/from16 v12, p4

    const/16 v21, -0x1

    move-object/from16 v23, v14

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzibo;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzifg;[BIIILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v8

    invoke-direct {v6, v7, v5, v3}, Lcom/google/android/gms/internal/ads/zzier;->zzu(Ljava/lang/Object;ILjava/lang/Object;)V

    move v9, v0

    move v10, v5

    move/from16 v11, v17

    move/from16 v13, v21

    move/from16 v0, v22

    move-object/from16 v14, v23

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v17, v1

    move v1, v2

    move-object/from16 v2, p6

    goto/16 :goto_0

    :cond_7
    const/16 v21, -0x1

    move-object/from16 v8, p6

    move-object v2, v14

    move/from16 v14, v18

    move/from16 v11, v22

    move/from16 v18, v0

    goto/16 :goto_10

    :pswitch_0
    move-object/from16 v23, v14

    move/from16 v14, v18

    const/4 v2, 0x3

    const/16 v21, -0x1

    if-nez v9, :cond_8

    or-int v8, v1, v13

    move-object/from16 v3, p6

    invoke-static {v15, v12, v3}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v9

    iget-wide v11, v3, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzicd;->zzN(J)J

    move-result-wide v11

    move v13, v0

    move/from16 v1, v22

    move-object/from16 v0, v23

    move v2, v1

    move-object/from16 v1, p1

    move/from16 p3, v8

    move-object v8, v3

    move-wide v2, v4

    move-wide v4, v11

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v2, v8

    move v8, v9

    move v9, v13

    move/from16 v18, v14

    move/from16 v11, v17

    move/from16 v13, v21

    move-object/from16 v14, v23

    const/4 v0, 0x1

    const/4 v1, 0x3

    move/from16 v17, p3

    goto/16 :goto_0

    :cond_8
    move-object/from16 v8, p6

    move/from16 v18, v0

    move/from16 v11, v22

    move-object/from16 v2, v23

    goto/16 :goto_10

    :pswitch_1
    move-object/from16 v8, p6

    move v11, v0

    move-object/from16 v23, v14

    move/from16 v14, v18

    const/16 v21, -0x1

    if-nez v9, :cond_9

    or-int v0, v1, v13

    invoke-static {v15, v12, v8}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget v2, v8, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzicd;->zzM(I)I

    move-result v2

    move-object/from16 v3, v23

    invoke-virtual {v3, v7, v4, v5, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_5
    move/from16 v4, p4

    move/from16 v5, p5

    move-object v2, v8

    move v9, v11

    move/from16 v18, v14

    move/from16 v11, v17

    move/from16 v13, v21

    move/from16 v17, v0

    move v8, v1

    :goto_6
    move-object v14, v3

    const/4 v0, 0x1

    :goto_7
    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_9
    move/from16 v18, v11

    move-object/from16 v2, v23

    :cond_a
    :goto_8
    const/4 v11, 0x1

    goto/16 :goto_10

    :pswitch_2
    move-object/from16 v8, p6

    move v11, v0

    move-object v3, v14

    move/from16 v14, v18

    const/16 v21, -0x1

    if-nez v9, :cond_d

    invoke-static {v15, v12, v8}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget v2, v8, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    invoke-direct {v6, v10}, Lcom/google/android/gms/internal/ads/zzier;->zzs(I)Lcom/google/android/gms/internal/ads/zzidj;

    move-result-object v9

    const/high16 v12, -0x80000000

    and-int v12, v24, v12

    if-eqz v12, :cond_c

    if-eqz v9, :cond_c

    invoke-interface {v9, v2}, Lcom/google/android/gms/internal/ads/zzidj;->zza(I)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_a

    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzier;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzifu;

    move-result-object v4

    int-to-long v12, v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v14, v2}, Lcom/google/android/gms/internal/ads/zzifu;->zzk(ILjava/lang/Object;)V

    :goto_9
    move/from16 v4, p4

    move/from16 v5, p5

    move-object v2, v8

    move v9, v11

    move/from16 v18, v14

    move/from16 v11, v17

    move/from16 v13, v21

    move v8, v0

    move/from16 v17, v1

    goto :goto_6

    :cond_c
    :goto_a
    or-int/2addr v1, v13

    invoke-virtual {v3, v7, v4, v5, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_9

    :cond_d
    move-object v2, v3

    move/from16 v18, v11

    goto :goto_8

    :pswitch_3
    move-object/from16 v8, p6

    move v11, v0

    move-object v3, v14

    move/from16 v14, v18

    move/from16 v2, v20

    const/16 v21, -0x1

    if-ne v9, v2, :cond_d

    or-int v0, v1, v13

    invoke-static {v15, v12, v8}, Lcom/google/android/gms/internal/ads/zzibo;->zzg([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    invoke-virtual {v3, v7, v4, v5, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_4
    move-object/from16 v8, p6

    move v11, v0

    move-object v3, v14

    move/from16 v14, v18

    move/from16 v2, v20

    const/16 v21, -0x1

    if-ne v9, v2, :cond_e

    or-int v9, v1, v13

    invoke-direct {v6, v7, v10}, Lcom/google/android/gms/internal/ads/zzier;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v6, v10}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v1

    move-object v0, v13

    move v5, v2

    move-object/from16 v2, p2

    move-object v4, v3

    move v3, v12

    move-object v12, v4

    move/from16 v4, p4

    move/from16 v18, v11

    move v11, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzibo;->zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzifg;[BIILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    invoke-direct {v6, v7, v10, v13}, Lcom/google/android/gms/internal/ads/zzier;->zzu(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v5, p5

    move-object v2, v8

    move/from16 v11, v17

    move/from16 v13, v21

    const/4 v1, 0x3

    move v8, v0

    move/from16 v17, v9

    move/from16 v9, v18

    const/4 v0, 0x1

    move/from16 v18, v14

    :goto_b
    move-object v14, v12

    goto/16 :goto_0

    :cond_e
    move/from16 v18, v11

    move-object v2, v3

    goto/16 :goto_8

    :pswitch_5
    move-object/from16 v8, p6

    move-object v2, v14

    move/from16 v14, v18

    move/from16 v11, v20

    const/16 v21, -0x1

    move/from16 v18, v0

    if-ne v9, v11, :cond_a

    or-int v0, v1, v13

    invoke-static/range {v24 .. v24}, Lcom/google/android/gms/internal/ads/zzier;->zzD(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v15, v12, v8}, Lcom/google/android/gms/internal/ads/zzibo;->zzf([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    goto :goto_c

    :cond_f
    invoke-static {v15, v12, v8}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget v3, v8, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ltz v3, :cond_11

    if-nez v3, :cond_10

    move-object/from16 v9, v28

    iput-object v9, v8, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    goto :goto_c

    :cond_10
    new-instance v9, Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/internal/ads/zzidq;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v9, v15, v1, v3, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v9, v8, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    add-int/2addr v1, v3

    :goto_c
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    invoke-virtual {v2, v7, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_d
    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v11, v17

    move/from16 v9, v18

    move/from16 v13, v21

    move/from16 v17, v0

    move/from16 v18, v14

    const/4 v0, 0x1

    move-object v14, v2

    move-object v2, v8

    move v8, v1

    goto/16 :goto_7

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    move-object/from16 v8, p6

    move-object v2, v14

    move/from16 v14, v18

    move/from16 v11, v20

    const/16 v21, -0x1

    move/from16 v18, v0

    if-nez v9, :cond_a

    or-int v0, v1, v13

    invoke-static {v15, v12, v8}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget-wide v12, v8, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    cmp-long v3, v12, v26

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_e

    :cond_12
    move/from16 v3, v16

    :goto_e
    invoke-static {v7, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzi(Ljava/lang/Object;JZ)V

    goto :goto_d

    :pswitch_7
    move-object/from16 v8, p6

    move-object v2, v14

    move/from16 v14, v18

    move/from16 v11, v20

    const/16 v21, -0x1

    move/from16 v18, v0

    const/4 v0, 0x5

    if-ne v9, v0, :cond_a

    add-int/lit8 v0, v12, 0x4

    or-int/2addr v1, v13

    invoke-static {v15, v12}, Lcom/google/android/gms/internal/ads/zzibo;->zzd([BI)I

    move-result v3

    invoke-virtual {v2, v7, v4, v5, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v11, v17

    move/from16 v9, v18

    move/from16 v13, v21

    move/from16 v17, v1

    move/from16 v18, v14

    const/4 v1, 0x3

    move-object v14, v2

    move-object v2, v8

    move v8, v0

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v8, p6

    move-object v2, v14

    move/from16 v14, v18

    move/from16 v11, v20

    move/from16 v3, v22

    const/16 v21, -0x1

    move/from16 v18, v0

    if-ne v9, v3, :cond_13

    add-int/lit8 v9, v12, 0x8

    or-int/2addr v13, v1

    invoke-static {v15, v12}, Lcom/google/android/gms/internal/ads/zzibo;->zze([BI)J

    move-result-wide v19

    move-object v0, v2

    move-object/from16 v1, p1

    move-object v12, v2

    move v11, v3

    move-wide v2, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v2, v8

    move v8, v9

    move v0, v11

    move/from16 v11, v17

    move/from16 v9, v18

    const/4 v1, 0x3

    move/from16 v17, v13

    move/from16 v18, v14

    move/from16 v13, v21

    goto/16 :goto_b

    :cond_13
    move v11, v3

    goto/16 :goto_10

    :pswitch_9
    move-object/from16 v8, p6

    move-object v2, v14

    move/from16 v14, v18

    move/from16 v11, v22

    const/16 v21, -0x1

    move/from16 v18, v0

    if-nez v9, :cond_14

    or-int v0, v1, v13

    invoke-static {v15, v12, v8}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget v3, v8, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    invoke-virtual {v2, v7, v4, v5, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v9, v18

    move/from16 v13, v21

    move/from16 v18, v14

    move-object v14, v2

    move-object v2, v8

    move v8, v1

    const/4 v1, 0x3

    move/from16 v32, v17

    move/from16 v17, v0

    move v0, v11

    move/from16 v11, v32

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v8, p6

    move-object v2, v14

    move/from16 v14, v18

    move/from16 v11, v22

    const/16 v21, -0x1

    move/from16 v18, v0

    if-nez v9, :cond_14

    or-int v9, v1, v13

    invoke-static {v15, v12, v8}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v12

    iget-wide v0, v8, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    move-wide/from16 v19, v0

    move-object v0, v2

    move-object/from16 v1, p1

    move-object v13, v2

    move-wide v2, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v2, v8

    move v0, v11

    move v8, v12

    move/from16 v11, v17

    const/4 v1, 0x3

    move/from16 v17, v9

    move/from16 v9, v18

    move/from16 v18, v14

    move-object v14, v13

    move/from16 v13, v21

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v8, p6

    move-object v2, v14

    move/from16 v14, v18

    move/from16 v11, v22

    const/16 v21, -0x1

    move/from16 v18, v0

    const/4 v0, 0x5

    if-ne v9, v0, :cond_14

    add-int/lit8 v0, v12, 0x4

    or-int/2addr v1, v13

    invoke-static {v15, v12}, Lcom/google/android/gms/internal/ads/zzibo;->zzd([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v7, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zziga;->zzk(Ljava/lang/Object;JF)V

    :goto_f
    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v9, v18

    move/from16 v13, v21

    move/from16 v18, v14

    move-object v14, v2

    move-object v2, v8

    move v8, v0

    move v0, v11

    move/from16 v11, v17

    move/from16 v17, v1

    goto/16 :goto_7

    :pswitch_c
    move-object/from16 v8, p6

    move-object v2, v14

    move/from16 v14, v18

    move/from16 v11, v22

    const/16 v21, -0x1

    move/from16 v18, v0

    if-ne v9, v11, :cond_14

    add-int/lit8 v0, v12, 0x8

    or-int/2addr v1, v13

    invoke-static {v15, v12}, Lcom/google/android/gms/internal/ads/zzibo;->zze([BI)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v12

    invoke-static {v7, v4, v5, v12, v13}, Lcom/google/android/gms/internal/ads/zziga;->zzm(Ljava/lang/Object;JD)V

    goto :goto_f

    :cond_14
    :goto_10
    move-object/from16 v31, p3

    move-object v9, v2

    move/from16 v23, v10

    move v2, v12

    move v12, v14

    move/from16 v20, v17

    move/from16 v11, v18

    const/16 v22, 0x3

    move/from16 v17, v1

    move-object v10, v6

    move-object v14, v7

    move-object v6, v8

    move/from16 v7, p5

    goto/16 :goto_4f

    :cond_15
    move/from16 v24, v1

    move-object v8, v2

    move/from16 v20, v11

    move-object v2, v14

    move/from16 v14, v18

    move-object/from16 v11, v28

    move-object/from16 v1, v29

    const/16 v21, -0x1

    move/from16 v18, v0

    const/16 v0, 0x1b

    if-ne v3, v0, :cond_19

    const/4 v0, 0x2

    if-ne v9, v0, :cond_18

    invoke-virtual {v2, v7, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzidp;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzidp;->zza()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_16

    const/16 v3, 0xa

    goto :goto_11

    :cond_16
    add-int/2addr v3, v3

    :goto_11
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzidp;->zzh(I)Lcom/google/android/gms/internal/ads/zzidp;

    move-result-object v1

    invoke-virtual {v2, v7, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_17
    move-object v13, v1

    invoke-direct {v6, v10}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v1

    move-object v3, v8

    move-object v8, v1

    move v9, v14

    move v1, v10

    move-object/from16 v10, p2

    move v4, v0

    const/4 v0, 0x1

    move v11, v12

    move/from16 v12, p4

    move v5, v14

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzibo;->zzn(Lcom/google/android/gms/internal/ads/zzifg;I[BIILcom/google/android/gms/internal/ads/zzidp;Lcom/google/android/gms/internal/ads/zzibn;)I

    move-result v8

    move/from16 v4, p4

    move v10, v1

    move-object v14, v2

    move-object v2, v3

    move/from16 v9, v18

    move/from16 v11, v20

    move/from16 v13, v21

    const/4 v1, 0x3

    move/from16 v18, v5

    move/from16 v5, p5

    goto/16 :goto_0

    :cond_18
    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v30, v2

    move v11, v12

    move/from16 p3, v14

    move-object v14, v8

    :goto_12
    const/4 v8, 0x3

    goto/16 :goto_41

    :cond_19
    move-object/from16 v22, v13

    const/4 v13, 0x2

    move/from16 v32, v14

    move-object v14, v8

    move v8, v10

    move/from16 v10, v32

    const/16 v0, 0x31

    const-string v13, "Protocol message had invalid UTF-8."

    move-object/from16 v23, v13

    const-string v13, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    if-gt v3, v0, :cond_5d

    move-object/from16 v29, v1

    move/from16 v0, v24

    int-to-long v0, v0

    invoke-virtual {v2, v7, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v28, v11

    move-object/from16 v11, v22

    check-cast v11, Lcom/google/android/gms/internal/ads/zzidp;

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzidp;->zza()Z

    move-result v22

    if-nez v22, :cond_1a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v22

    move-wide/from16 v24, v0

    add-int v0, v22, v22

    invoke-interface {v11, v0}, Lcom/google/android/gms/internal/ads/zzidp;->zzh(I)Lcom/google/android/gms/internal/ads/zzidp;

    move-result-object v0

    invoke-virtual {v2, v7, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v11, v0

    goto :goto_13

    :cond_1a
    move-wide/from16 v24, v0

    :goto_13
    packed-switch v3, :pswitch_data_1

    const/4 v5, 0x3

    if-ne v9, v5, :cond_1e

    and-int/lit8 v0, v10, -0x8

    or-int/lit8 v9, v0, 0x4

    invoke-direct {v6, v8}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v13

    const/4 v4, 0x1

    move-object v0, v13

    move-object/from16 v1, p2

    move-object v3, v2

    move v2, v12

    move-object/from16 v31, p3

    move-object/from16 v30, v3

    move/from16 v3, p4

    move v7, v4

    move v4, v9

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzibo;->zzi(Lcom/google/android/gms/internal/ads/zzifg;[BIIILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v5, p4

    :goto_14
    if-ge v0, v5, :cond_1b

    invoke-static {v15, v0, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v2

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ne v10, v1, :cond_1b

    move-object v0, v13

    move-object/from16 v1, p2

    move/from16 v3, p4

    move v4, v9

    move v7, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzibo;->zzi(Lcom/google/android/gms/internal/ads/zzifg;[BIIILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    const/4 v7, 0x1

    goto :goto_14

    :cond_1b
    move v7, v5

    :cond_1c
    :goto_15
    move v2, v8

    move v11, v12

    const/4 v12, 0x2

    :cond_1d
    :goto_16
    move v8, v0

    :goto_17
    const/4 v0, 0x1

    goto/16 :goto_39

    :cond_1e
    move-object/from16 v31, p3

    move/from16 v7, p4

    move-object/from16 v30, v2

    :cond_1f
    move v2, v8

    move v11, v12

    const/4 v0, 0x1

    const/4 v12, 0x2

    goto/16 :goto_38

    :pswitch_d
    move-object/from16 v31, p3

    move/from16 v7, p4

    move-object/from16 v30, v2

    const/4 v0, 0x2

    if-ne v9, v0, :cond_22

    check-cast v11, Lcom/google/android/gms/internal/ads/zziec;

    invoke-static {v15, v12, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    add-int/2addr v1, v0

    :goto_18
    if-ge v0, v1, :cond_20

    invoke-static {v15, v0, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget-wide v2, v14, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzicd;->zzN(J)J

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Lcom/google/android/gms/internal/ads/zziec;->zzd(J)V

    goto :goto_18

    :cond_20
    if-ne v0, v1, :cond_21

    goto :goto_15

    :cond_21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    if-nez v9, :cond_1f

    check-cast v11, Lcom/google/android/gms/internal/ads/zziec;

    invoke-static {v15, v12, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget-wide v1, v14, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzicd;->zzN(J)J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zziec;->zzd(J)V

    :goto_19
    if-ge v0, v7, :cond_1c

    invoke-static {v15, v0, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget v2, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ne v10, v2, :cond_1c

    invoke-static {v15, v1, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget-wide v1, v14, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzicd;->zzN(J)J

    move-result-wide v1

    invoke-virtual {v11, v1, v2}, Lcom/google/android/gms/internal/ads/zziec;->zzd(J)V

    goto :goto_19

    :pswitch_e
    move-object/from16 v31, p3

    move/from16 v7, p4

    move-object/from16 v30, v2

    const/4 v0, 0x2

    if-ne v9, v0, :cond_25

    check-cast v11, Lcom/google/android/gms/internal/ads/zzide;

    invoke-static {v15, v12, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    add-int/2addr v1, v0

    :goto_1a
    if-ge v0, v1, :cond_23

    invoke-static {v15, v0, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget v2, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzicd;->zzM(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/gms/internal/ads/zzide;->zzi(I)V

    goto :goto_1a

    :cond_23
    if-ne v0, v1, :cond_24

    goto/16 :goto_15

    :cond_24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    if-nez v9, :cond_1f

    check-cast v11, Lcom/google/android/gms/internal/ads/zzide;

    invoke-static {v15, v12, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzicd;->zzM(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzide;->zzi(I)V

    :goto_1b
    if-ge v0, v7, :cond_1c

    invoke-static {v15, v0, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget v2, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ne v10, v2, :cond_1c

    invoke-static {v15, v1, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzicd;->zzM(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzide;->zzi(I)V

    goto :goto_1b

    :pswitch_f
    move-object/from16 v31, p3

    move/from16 v7, p4

    move-object/from16 v30, v2

    const/4 v0, 0x2

    if-ne v9, v0, :cond_26

    invoke-static {v15, v12, v11, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zzm([BILcom/google/android/gms/internal/ads/zzidp;Lcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    :goto_1c
    move v9, v0

    goto :goto_1d

    :cond_26
    if-nez v9, :cond_1f

    move v0, v10

    move-object/from16 v1, p2

    move v2, v12

    move/from16 v3, p4

    move-object v4, v11

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzibo;->zzl(I[BIILcom/google/android/gms/internal/ads/zzidp;Lcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    goto :goto_1c

    :goto_1d
    invoke-direct {v6, v8}, Lcom/google/android/gms/internal/ads/zzier;->zzs(I)Lcom/google/android/gms/internal/ads/zzidj;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzier;->zzm:Lcom/google/android/gms/internal/ads/zzift;

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object v2, v11

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzifi;->zzJ(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/ads/zzidj;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzift;)Ljava/lang/Object;

    move v2, v8

    move v8, v9

    move v11, v12

    const/4 v0, 0x1

    const/4 v12, 0x2

    goto/16 :goto_39

    :pswitch_10
    move-object/from16 v31, p3

    move/from16 v7, p4

    move-object/from16 v30, v2

    const/4 v0, 0x2

    if-ne v9, v0, :cond_2d

    invoke-static {v15, v12, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ltz v1, :cond_2c

    array-length v2, v15

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_2b

    if-nez v1, :cond_27

    sget-object v1, Lcom/google/android/gms/internal/ads/zzibz;->zza:Lcom/google/android/gms/internal/ads/zzibz;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_27
    invoke-static {v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzibz;->zzs([BII)Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1e
    add-int/2addr v0, v1

    :goto_1f
    if-ge v0, v7, :cond_1c

    invoke-static {v15, v0, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget v2, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ne v10, v2, :cond_1c

    invoke-static {v15, v1, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ltz v1, :cond_2a

    array-length v2, v15

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_29

    if-nez v1, :cond_28

    sget-object v1, Lcom/google/android/gms/internal/ads/zzibz;->zza:Lcom/google/android/gms/internal/ads/zzibz;

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_28
    invoke-static {v15, v0, v1}, Lcom/google/android/gms/internal/ads/zzibz;->zzs([BII)Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    move-object/from16 v1, v29

    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    move v2, v8

    move v11, v12

    move v12, v0

    :cond_2e
    :goto_20
    const/4 v0, 0x1

    goto/16 :goto_38

    :pswitch_11
    move-object/from16 v31, p3

    move/from16 v7, p4

    move-object/from16 v30, v2

    const/4 v0, 0x2

    if-ne v9, v0, :cond_2d

    invoke-direct {v6, v8}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v1

    move v5, v8

    move-object v8, v1

    move v9, v10

    move v4, v10

    move-object/from16 v10, p2

    move-object v3, v11

    move v11, v12

    move v2, v12

    move/from16 v12, p4

    move-object v13, v3

    move-object v1, v14

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzibo;->zzn(Lcom/google/android/gms/internal/ads/zzifg;I[BIILcom/google/android/gms/internal/ads/zzidp;Lcom/google/android/gms/internal/ads/zzibn;)I

    move-result v3

    move v12, v0

    move-object v14, v1

    move v11, v2

    move v8, v3

    :goto_21
    move v10, v4

    move v2, v5

    goto/16 :goto_17

    :pswitch_12
    move-object/from16 v31, p3

    move/from16 v7, p4

    move-object/from16 v30, v2

    move v5, v8

    move v4, v10

    move-object v3, v11

    move v2, v12

    move-object/from16 v1, v29

    const/4 v0, 0x2

    if-ne v9, v0, :cond_3b

    const-wide/32 v8, 0x20000000

    and-long v8, v24, v8

    cmp-long v8, v8, v26

    if-nez v8, :cond_34

    invoke-static {v15, v2, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v8

    iget v9, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ltz v9, :cond_33

    if-nez v9, :cond_2f

    move-object/from16 v10, v28

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_2f
    move-object/from16 v10, v28

    new-instance v11, Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/internal/ads/zzidq;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v8, v9, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_22
    add-int/2addr v8, v9

    :goto_23
    if-ge v8, v7, :cond_32

    invoke-static {v15, v8, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v9

    iget v11, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ne v4, v11, :cond_32

    invoke-static {v15, v9, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v8

    iget v9, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ltz v9, :cond_31

    if-nez v9, :cond_30

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_30
    new-instance v11, Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/internal/ads/zzidq;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v8, v9, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    move v12, v0

    :goto_24
    move v11, v2

    goto :goto_21

    :cond_33
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    move-object/from16 v10, v28

    invoke-static {v15, v2, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v8

    iget v9, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ltz v9, :cond_3a

    if-nez v9, :cond_35

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_35
    add-int v11, v8, v9

    invoke-static {v15, v8, v11}, Lcom/google/android/gms/internal/ads/zzigf;->zzb([BII)Z

    move-result v12

    if-eqz v12, :cond_39

    new-instance v12, Ljava/lang/String;

    sget-object v13, Lcom/google/android/gms/internal/ads/zzidq;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v12, v15, v8, v9, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_25
    move v8, v11

    :goto_26
    if-ge v8, v7, :cond_32

    invoke-static {v15, v8, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v9

    iget v11, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ne v4, v11, :cond_32

    invoke-static {v15, v9, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v8

    iget v9, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ltz v9, :cond_38

    if-nez v9, :cond_36

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_36
    add-int v11, v8, v9

    invoke-static {v15, v8, v11}, Lcom/google/android/gms/internal/ads/zzigf;->zzb([BII)Z

    move-result v12

    if-eqz v12, :cond_37

    new-instance v12, Ljava/lang/String;

    sget-object v13, Lcom/google/android/gms/internal/ads/zzidq;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v12, v15, v8, v9, v13}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    move-object/from16 v1, v23

    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    move v12, v0

    move v11, v2

    move v10, v4

    move v2, v5

    goto/16 :goto_20

    :pswitch_13
    move-object/from16 v31, p3

    move/from16 v7, p4

    move-object/from16 v30, v2

    move v5, v8

    move v4, v10

    move-object v3, v11

    move v2, v12

    const/4 v0, 0x2

    if-ne v9, v0, :cond_40

    move-object v11, v3

    check-cast v11, Lcom/google/android/gms/internal/ads/zzibp;

    invoke-static {v15, v2, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget v3, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    add-int/2addr v3, v1

    :goto_27
    if-ge v1, v3, :cond_3d

    invoke-static {v15, v1, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget-wide v8, v14, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    cmp-long v8, v8, v26

    if-eqz v8, :cond_3c

    const/4 v8, 0x1

    goto :goto_28

    :cond_3c
    move/from16 v8, v16

    :goto_28
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/zzibp;->zzg(Z)V

    goto :goto_27

    :cond_3d
    if-ne v1, v3, :cond_3f

    :cond_3e
    :goto_29
    move v12, v0

    move v8, v1

    goto/16 :goto_24

    :cond_3f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    if-nez v9, :cond_3b

    move-object v11, v3

    check-cast v11, Lcom/google/android/gms/internal/ads/zzibp;

    invoke-static {v15, v2, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget-wide v8, v14, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    cmp-long v3, v8, v26

    if-eqz v3, :cond_41

    const/4 v3, 0x1

    goto :goto_2a

    :cond_41
    move/from16 v3, v16

    :goto_2a
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zzibp;->zzg(Z)V

    :goto_2b
    if-ge v1, v7, :cond_3e

    invoke-static {v15, v1, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v3

    iget v8, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ne v4, v8, :cond_3e

    invoke-static {v15, v3, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget-wide v8, v14, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    cmp-long v3, v8, v26

    if-eqz v3, :cond_42

    const/4 v3, 0x1

    goto :goto_2c

    :cond_42
    move/from16 v3, v16

    :goto_2c
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zzibp;->zzg(Z)V

    goto :goto_2b

    :pswitch_14
    move-object/from16 v31, p3

    move/from16 v7, p4

    move-object/from16 v30, v2

    move v5, v8

    move v4, v10

    move-object v3, v11

    move v2, v12

    const/4 v0, 0x2

    if-ne v9, v0, :cond_46

    move-object v11, v3

    check-cast v11, Lcom/google/android/gms/internal/ads/zzide;

    invoke-static {v15, v2, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget v3, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    add-int v8, v1, v3

    array-length v9, v15

    if-gt v8, v9, :cond_45

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzide;->size()I

    move-result v9

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v9

    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zzide;->zzj(I)V

    :goto_2d
    if-ge v1, v8, :cond_43

    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/zzibo;->zzd([BI)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zzide;->zzi(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_2d

    :cond_43
    if-ne v1, v8, :cond_44

    goto :goto_29

    :cond_44
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    const/4 v1, 0x5

    if-ne v9, v1, :cond_3b

    add-int/lit8 v12, v2, 0x4

    move-object v11, v3

    check-cast v11, Lcom/google/android/gms/internal/ads/zzide;

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/ads/zzibo;->zzd([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzide;->zzi(I)V

    :goto_2e
    if-ge v12, v7, :cond_47

    invoke-static {v15, v12, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget v3, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ne v4, v3, :cond_47

    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/zzibo;->zzd([BI)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zzide;->zzi(I)V

    add-int/lit8 v12, v1, 0x4

    goto :goto_2e

    :cond_47
    move v11, v2

    move v10, v4

    move v2, v5

    move v8, v12

    move v12, v0

    goto/16 :goto_17

    :pswitch_15
    move-object/from16 v31, p3

    move/from16 v7, p4

    move-object/from16 v30, v2

    move v5, v8

    move v4, v10

    move-object v3, v11

    move v2, v12

    const/4 v0, 0x2

    if-ne v9, v0, :cond_4b

    move-object v11, v3

    check-cast v11, Lcom/google/android/gms/internal/ads/zziec;

    invoke-static {v15, v2, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget v3, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    add-int v8, v1, v3

    array-length v9, v15

    if-gt v8, v9, :cond_4a

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zziec;->size()I

    move-result v9

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v9

    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zziec;->zzi(I)V

    :goto_2f
    if-ge v1, v8, :cond_48

    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/zzibo;->zze([BI)J

    move-result-wide v9

    invoke-virtual {v11, v9, v10}, Lcom/google/android/gms/internal/ads/zziec;->zzd(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_2f

    :cond_48
    if-ne v1, v8, :cond_49

    goto/16 :goto_29

    :cond_49
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    const/4 v1, 0x1

    if-ne v9, v1, :cond_4c

    add-int/lit8 v12, v2, 0x8

    move-object v11, v3

    check-cast v11, Lcom/google/android/gms/internal/ads/zziec;

    invoke-static {v15, v2}, Lcom/google/android/gms/internal/ads/zzibo;->zze([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zziec;->zzd(J)V

    :goto_30
    if-ge v12, v7, :cond_47

    invoke-static {v15, v12, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget v3, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ne v4, v3, :cond_47

    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/zzibo;->zze([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zziec;->zzd(J)V

    add-int/lit8 v12, v1, 0x8

    goto :goto_30

    :cond_4c
    move v12, v0

    move v0, v1

    move v11, v2

    move v10, v4

    move v2, v5

    goto/16 :goto_38

    :pswitch_16
    move-object/from16 v31, p3

    move/from16 v7, p4

    move-object/from16 v30, v2

    move v5, v8

    move v4, v10

    move-object v3, v11

    move v2, v12

    const/4 v0, 0x2

    if-ne v9, v0, :cond_4d

    invoke-static {v15, v2, v3, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zzm([BILcom/google/android/gms/internal/ads/zzidp;Lcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    goto/16 :goto_29

    :cond_4d
    if-nez v9, :cond_3b

    move v12, v0

    move v0, v4

    move-object/from16 v1, p2

    move v11, v2

    move-object v8, v3

    move/from16 v3, p4

    move v10, v4

    move-object v4, v8

    move v8, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzibo;->zzl(I[BIILcom/google/android/gms/internal/ads/zzidp;Lcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    move v2, v8

    goto/16 :goto_16

    :pswitch_17
    move-object/from16 v31, p3

    move/from16 v7, p4

    move-object/from16 v30, v2

    move v2, v8

    move-object v8, v11

    move v11, v12

    const/4 v12, 0x2

    if-ne v9, v12, :cond_51

    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/zziec;

    invoke-static {v15, v11, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget v3, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    add-int/2addr v3, v1

    :goto_31
    if-ge v1, v3, :cond_4e

    invoke-static {v15, v1, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget-wide v4, v14, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zziec;->zzd(J)V

    goto :goto_31

    :cond_4e
    if-ne v1, v3, :cond_50

    :cond_4f
    :goto_32
    move v8, v1

    goto/16 :goto_17

    :cond_50
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    if-nez v9, :cond_2e

    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/zziec;

    invoke-static {v15, v11, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget-wide v3, v14, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zziec;->zzd(J)V

    :goto_33
    if-ge v1, v7, :cond_4f

    invoke-static {v15, v1, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v3

    iget v4, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ne v10, v4, :cond_4f

    invoke-static {v15, v3, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget-wide v3, v14, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zziec;->zzd(J)V

    goto :goto_33

    :pswitch_18
    move-object/from16 v31, p3

    move/from16 v7, p4

    move-object/from16 v30, v2

    move v2, v8

    move-object v8, v11

    move v11, v12

    const/4 v12, 0x2

    if-ne v9, v12, :cond_55

    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/zzicu;

    invoke-static {v15, v11, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget v3, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    add-int v4, v1, v3

    array-length v5, v15

    if-gt v4, v5, :cond_54

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzicu;->size()I

    move-result v5

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzicu;->zzi(I)V

    :goto_34
    if-ge v1, v4, :cond_52

    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/zzibo;->zzd([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzicu;->zzg(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_34

    :cond_52
    if-ne v1, v4, :cond_53

    goto :goto_32

    :cond_53
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    const/4 v0, 0x5

    if-ne v9, v0, :cond_2e

    add-int/lit8 v0, v11, 0x4

    move-object v1, v8

    check-cast v1, Lcom/google/android/gms/internal/ads/zzicu;

    invoke-static {v15, v11}, Lcom/google/android/gms/internal/ads/zzibo;->zzd([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzicu;->zzg(F)V

    :goto_35
    if-ge v0, v7, :cond_1d

    invoke-static {v15, v0, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v3

    iget v4, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ne v10, v4, :cond_1d

    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzibo;->zzd([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzicu;->zzg(F)V

    add-int/lit8 v0, v3, 0x4

    goto :goto_35

    :pswitch_19
    move-object/from16 v31, p3

    move/from16 v7, p4

    move-object/from16 v30, v2

    move v2, v8

    move-object v8, v11

    move v11, v12

    const/4 v12, 0x2

    if-ne v9, v12, :cond_59

    move-object v0, v8

    check-cast v0, Lcom/google/android/gms/internal/ads/zzick;

    invoke-static {v15, v11, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v1

    iget v3, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    add-int v4, v1, v3

    array-length v5, v15

    if-gt v4, v5, :cond_58

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzick;->size()I

    move-result v5

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzick;->zzi(I)V

    :goto_36
    if-ge v1, v4, :cond_56

    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/zzibo;->zze([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzick;->zzg(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_36

    :cond_56
    if-ne v1, v4, :cond_57

    goto/16 :goto_32

    :cond_57
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    const/4 v0, 0x1

    if-ne v9, v0, :cond_5b

    add-int/lit8 v1, v11, 0x8

    move-object v3, v8

    check-cast v3, Lcom/google/android/gms/internal/ads/zzick;

    invoke-static {v15, v11}, Lcom/google/android/gms/internal/ads/zzibo;->zze([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzick;->zzg(D)V

    :goto_37
    if-ge v1, v7, :cond_5a

    invoke-static {v15, v1, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v4

    iget v5, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ne v10, v5, :cond_5a

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzibo;->zze([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzick;->zzg(D)V

    add-int/lit8 v1, v4, 0x8

    goto :goto_37

    :cond_5a
    move v8, v1

    goto :goto_39

    :cond_5b
    :goto_38
    move v8, v11

    :goto_39
    if-eq v8, v11, :cond_5c

    move/from16 v5, p5

    move v4, v7

    move/from16 v9, v18

    move/from16 v11, v20

    move/from16 v13, v21

    const/4 v1, 0x3

    move-object/from16 v7, p1

    move/from16 v18, v10

    move v10, v2

    move-object v2, v14

    move-object/from16 v14, v30

    goto/16 :goto_0

    :cond_5c
    move/from16 v7, p5

    move/from16 v23, v2

    move v2, v8

    move v12, v10

    move/from16 v11, v18

    move-object/from16 v9, v30

    const/16 v22, 0x3

    move-object v10, v6

    move-object v6, v14

    :goto_3a
    move-object/from16 v14, p1

    goto/16 :goto_4f

    :cond_5d
    move-object/from16 v31, p3

    move/from16 v7, p4

    move-object/from16 v30, v2

    move v2, v8

    move v8, v10

    move-object v10, v11

    move v11, v12

    move/from16 v0, v24

    const/4 v12, 0x2

    move-object/from16 v24, v23

    const/16 v23, 0x1

    const/16 v1, 0x32

    if-ne v3, v1, :cond_69

    if-ne v9, v12, :cond_68

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzier;->zzr(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v9, p1

    move/from16 v3, v23

    move-object/from16 v10, v30

    invoke-virtual {v10, v9, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zziej;->zza(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5e

    invoke-static {}, Lcom/google/android/gms/internal/ads/zziei;->zza()Lcom/google/android/gms/internal/ads/zziei;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zziei;->zzc()Lcom/google/android/gms/internal/ads/zziei;

    move-result-object v12

    invoke-static {v12, v1}, Lcom/google/android/gms/internal/ads/zziej;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v10, v9, v4, v5, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v12

    :cond_5e
    check-cast v0, Lcom/google/android/gms/internal/ads/zzieh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzieh;->zze()Lcom/google/android/gms/internal/ads/zzieg;

    move-result-object v12

    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/ads/zziei;

    invoke-static {v15, v11, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-ltz v1, :cond_67

    sub-int v4, v7, v0

    if-gt v1, v4, :cond_67

    add-int v13, v0, v1

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzieg;->zzb:Ljava/lang/Object;

    iget-object v4, v12, Lcom/google/android/gms/internal/ads/zzieg;->zzd:Ljava/lang/Object;

    move-object v9, v4

    :goto_3b
    if-ge v0, v13, :cond_64

    move-object/from16 p3, v1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v15, v0

    if-gez v0, :cond_5f

    invoke-static {v0, v15, v1, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zzb(I[BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget v1, v14, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    move/from16 v23, v2

    const/4 v3, 0x3

    move/from16 v32, v1

    move v1, v0

    move/from16 v0, v32

    goto :goto_3c

    :cond_5f
    move/from16 v23, v2

    const/4 v3, 0x3

    :goto_3c
    ushr-int/lit8 v2, v0, 0x3

    and-int/lit8 v3, v0, 0x7

    move-object/from16 v24, v5

    const/4 v5, 0x1

    if-eq v2, v5, :cond_62

    const/4 v5, 0x2

    if-eq v2, v5, :cond_60

    move-object/from16 v6, p3

    move-object/from16 v22, v4

    move/from16 p3, v8

    move-object/from16 v30, v10

    move/from16 v10, v23

    move-object/from16 v2, v24

    const/4 v8, 0x3

    goto/16 :goto_3f

    :cond_60
    iget-object v5, v12, Lcom/google/android/gms/internal/ads/zzieg;->zzc:Lcom/google/android/gms/internal/ads/zzigg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzigg;->zzb()I

    move-result v2

    if-ne v3, v2, :cond_61

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    move-object/from16 v0, p2

    move-object/from16 v3, p3

    move-object/from16 v30, v10

    move/from16 v10, v23

    move/from16 v2, p4

    move-object v6, v3

    move/from16 p3, v8

    const/4 v8, 0x3

    move-object v3, v5

    move-object/from16 v22, v4

    move-object v4, v9

    move-object/from16 v9, v24

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzT([BIILcom/google/android/gms/internal/ads/zzigg;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    move/from16 v8, p3

    move-object v5, v9

    move v2, v10

    move-object/from16 v4, v22

    move-object/from16 v10, v30

    const/4 v3, 0x1

    move-object v9, v1

    move-object v1, v6

    :goto_3d
    move-object/from16 v6, p0

    goto :goto_3b

    :cond_61
    move-object/from16 v6, p3

    move-object/from16 v22, v4

    move/from16 p3, v8

    move-object/from16 v30, v10

    move/from16 v10, v23

    const/4 v8, 0x3

    move-object/from16 v2, v24

    goto :goto_3f

    :cond_62
    move-object/from16 v6, p3

    move-object/from16 v22, v4

    move/from16 p3, v8

    move-object/from16 v30, v10

    move/from16 v10, v23

    move-object/from16 v5, v24

    const/4 v8, 0x3

    iget-object v4, v12, Lcom/google/android/gms/internal/ads/zzieg;->zza:Lcom/google/android/gms/internal/ads/zzigg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzigg;->zzb()I

    move-result v2

    if-ne v3, v2, :cond_63

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move/from16 v2, p4

    move-object v3, v4

    move-object v4, v6

    move-object v6, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzT([BIILcom/google/android/gms/internal/ads/zzigg;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    move/from16 v8, p3

    move-object v5, v6

    :goto_3e
    move v2, v10

    move-object/from16 v4, v22

    move-object/from16 v10, v30

    const/4 v3, 0x1

    goto :goto_3d

    :cond_63
    move-object v2, v5

    :goto_3f
    invoke-static {v0, v15, v1, v7, v14}, Lcom/google/android/gms/internal/ads/zzibo;->zzp(I[BIILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    move/from16 v8, p3

    move-object v5, v2

    move-object v1, v6

    goto :goto_3e

    :cond_64
    move-object v6, v1

    move/from16 p3, v8

    move-object/from16 v30, v10

    const/4 v8, 0x3

    move v10, v2

    move-object v2, v5

    if-ne v0, v13, :cond_66

    invoke-interface {v2, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v13, v11, :cond_65

    move-object/from16 v6, p0

    move/from16 v5, p5

    move v4, v7

    move v1, v8

    move v8, v13

    move-object v2, v14

    move/from16 v9, v18

    move/from16 v11, v20

    move/from16 v13, v21

    move-object/from16 v14, v30

    const/4 v0, 0x1

    move-object/from16 v7, p1

    move/from16 v18, p3

    goto/16 :goto_0

    :cond_65
    move/from16 v12, p3

    move/from16 v7, p5

    move/from16 v22, v8

    move/from16 v23, v10

    move v2, v13

    :goto_40
    move-object v6, v14

    move/from16 v11, v18

    move-object/from16 v9, v30

    move-object/from16 v10, p0

    goto/16 :goto_3a

    :cond_66
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    move-object/from16 v6, v31

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_68
    move v10, v2

    move/from16 p3, v8

    move-object/from16 v6, v31

    goto/16 :goto_12

    :goto_41
    move/from16 v12, p3

    move/from16 v7, p5

    move-object/from16 v31, v6

    move/from16 v22, v8

    move/from16 v23, v10

    move v2, v11

    goto :goto_40

    :cond_69
    move/from16 p3, v8

    move v13, v12

    move-object/from16 v1, v30

    move-object/from16 v6, v31

    const/4 v8, 0x3

    move-object v12, v10

    move v10, v2

    move-object/from16 v2, p1

    add-int/lit8 v23, v10, 0x2

    aget v22, v22, v23

    const v8, 0xfffff

    and-int v13, v22, v8

    move/from16 v22, v9

    int-to-long v8, v13

    packed-switch v3, :pswitch_data_2

    move-object v9, v1

    move-object/from16 v31, v6

    move/from16 v23, v10

    move v13, v11

    move-object v6, v14

    move/from16 v11, v18

    const/16 v22, 0x3

    move-object/from16 v10, p0

    move/from16 v18, p3

    :goto_42
    move-object v14, v2

    goto/16 :goto_4c

    :pswitch_1a
    move/from16 v3, v22

    const/4 v0, 0x3

    if-ne v3, v0, :cond_6a

    and-int/lit8 v3, p3, -0x8

    or-int/lit8 v13, v3, 0x4

    move-object/from16 v3, p0

    move/from16 v4, v18

    invoke-direct {v3, v2, v4, v10}, Lcom/google/android/gms/internal/ads/zzier;->zzv(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v10}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v9

    move/from16 v12, p3

    move/from16 v22, v0

    const v0, 0xfffff

    move-object v8, v5

    move-object/from16 v31, v6

    move v6, v10

    move-object/from16 v10, p2

    move/from16 p3, v11

    move v7, v12

    const/4 v0, 0x2

    move/from16 v12, p4

    move-object v0, v14

    move-object/from16 v14, p6

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzibo;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzifg;[BIIILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v8

    invoke-direct {v3, v2, v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzier;->zzw(Ljava/lang/Object;IILjava/lang/Object;)V

    move/from16 v13, p3

    move-object v9, v1

    move-object v14, v2

    move-object v10, v3

    move v11, v4

    move/from16 v23, v6

    move/from16 v18, v7

    move-object v6, v0

    goto/16 :goto_4d

    :cond_6a
    move/from16 v7, p3

    move/from16 v22, v0

    move-object/from16 v31, v6

    move-object v9, v1

    move/from16 v23, v10

    move v13, v11

    move-object v6, v14

    move/from16 v11, v18

    move-object/from16 v10, p0

    move-object v14, v2

    move/from16 v18, v7

    goto/16 :goto_4c

    :pswitch_1b
    move/from16 v7, p3

    move-object/from16 v31, v6

    move v6, v10

    move/from16 p3, v11

    move-object v0, v14

    move/from16 v11, v18

    move/from16 v3, v22

    const/16 v22, 0x3

    move-object/from16 v10, p0

    if-nez v3, :cond_6b

    move/from16 v13, p3

    invoke-static {v15, v13, v0}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v3

    move/from16 v23, v6

    move/from16 v18, v7

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzicd;->zzN(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v2, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v2, v8, v9, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_43
    move-object v6, v0

    move-object v9, v1

    move-object v14, v2

    :goto_44
    move v8, v3

    goto/16 :goto_4d

    :cond_6b
    move/from16 v13, p3

    move-object v9, v1

    move-object v14, v2

    move/from16 v23, v6

    move/from16 v18, v7

    move-object v6, v0

    goto/16 :goto_4c

    :pswitch_1c
    move-object/from16 v31, v6

    move/from16 v23, v10

    move v13, v11

    move-object v0, v14

    move/from16 v11, v18

    move/from16 v3, v22

    const/16 v22, 0x3

    move-object/from16 v10, p0

    move/from16 v18, p3

    if-nez v3, :cond_6c

    invoke-static {v15, v13, v0}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v3

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzicd;->zzM(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v2, v8, v9, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_43

    :cond_6c
    move-object v6, v0

    move-object v9, v1

    goto/16 :goto_42

    :pswitch_1d
    move-object/from16 v31, v6

    move/from16 v23, v10

    move v13, v11

    move-object v0, v14

    move/from16 v11, v18

    move/from16 v3, v22

    const/16 v22, 0x3

    move-object/from16 v10, p0

    move/from16 v18, p3

    if-nez v3, :cond_6c

    invoke-static {v15, v13, v0}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v3

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    move/from16 v7, v23

    invoke-direct {v10, v7}, Lcom/google/android/gms/internal/ads/zzier;->zzs(I)Lcom/google/android/gms/internal/ads/zzidj;

    move-result-object v12

    if-eqz v12, :cond_6d

    invoke-interface {v12, v6}, Lcom/google/android/gms/internal/ads/zzidj;->zza(I)Z

    move-result v12

    if-eqz v12, :cond_6e

    :cond_6d
    move/from16 v14, v18

    goto :goto_45

    :cond_6e
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzier;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzifu;

    move-result-object v4

    int-to-long v5, v6

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move/from16 v14, v18

    invoke-virtual {v4, v14, v5}, Lcom/google/android/gms/internal/ads/zzifu;->zzk(ILjava/lang/Object;)V

    goto :goto_46

    :goto_45
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v2, v8, v9, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_46
    move-object v6, v0

    move-object v9, v1

    move v8, v3

    move/from16 v23, v7

    move/from16 v18, v14

    move-object v14, v2

    goto/16 :goto_4d

    :pswitch_1e
    move-object/from16 v31, v6

    move v7, v10

    move v13, v11

    move-object v0, v14

    move/from16 v11, v18

    move/from16 v3, v22

    const/4 v6, 0x2

    const/16 v22, 0x3

    move-object/from16 v10, p0

    move/from16 v14, p3

    if-ne v3, v6, :cond_6f

    invoke-static {v15, v13, v0}, Lcom/google/android/gms/internal/ads/zzibo;->zzg([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v3

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzibn;->zzc:Ljava/lang/Object;

    invoke-virtual {v1, v2, v4, v5, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v1, v2, v8, v9, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_46

    :cond_6f
    move-object v6, v0

    move-object v9, v1

    move/from16 v23, v7

    move/from16 v18, v14

    goto/16 :goto_42

    :pswitch_1f
    move-object/from16 v31, v6

    move v7, v10

    move v13, v11

    move-object v0, v14

    move/from16 v11, v18

    move/from16 v3, v22

    const/4 v6, 0x2

    const/16 v22, 0x3

    move-object/from16 v10, p0

    move/from16 v14, p3

    if-ne v3, v6, :cond_70

    invoke-direct {v10, v2, v11, v7}, Lcom/google/android/gms/internal/ads/zzier;->zzv(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v10, v7}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v3

    move v12, v6

    const v9, 0xfffff

    move-object v6, v0

    move-object v0, v8

    move-object v5, v1

    move-object v1, v3

    move-object v4, v2

    move-object/from16 v2, p2

    move v3, v13

    move/from16 v18, v14

    move-object v14, v4

    move/from16 v4, p4

    move-object v9, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzibo;->zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzifg;[BIILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    invoke-direct {v10, v14, v11, v7, v8}, Lcom/google/android/gms/internal/ads/zzier;->zzw(Ljava/lang/Object;IILjava/lang/Object;)V

    move v8, v0

    move/from16 v23, v7

    goto/16 :goto_4d

    :cond_70
    move-object v9, v1

    move v12, v6

    move/from16 v18, v14

    move-object v6, v0

    move-object v14, v2

    :cond_71
    move/from16 v23, v7

    goto/16 :goto_4c

    :pswitch_20
    move-object/from16 v31, v6

    move v7, v10

    move v13, v11

    move-object v6, v14

    move/from16 v11, v18

    move/from16 v3, v22

    const/16 v22, 0x3

    move-object/from16 v10, p0

    move/from16 v18, p3

    move-object v14, v2

    move-wide/from16 v32, v8

    move-object v9, v1

    move-wide/from16 v1, v32

    const/4 v8, 0x2

    if-ne v3, v8, :cond_71

    invoke-static {v15, v13, v6}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v3

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    if-nez v8, :cond_72

    invoke-virtual {v9, v14, v4, v5, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move/from16 v23, v7

    goto :goto_48

    :cond_72
    add-int v12, v3, v8

    const/high16 v23, 0x20000000

    and-int v0, v0, v23

    if-eqz v0, :cond_74

    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzigf;->zzb([BII)Z

    move-result v0

    if-eqz v0, :cond_73

    goto :goto_47

    :cond_73
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    :goto_47
    new-instance v0, Ljava/lang/String;

    move/from16 v23, v7

    sget-object v7, Lcom/google/android/gms/internal/ads/zzidq;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v0, v15, v3, v8, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v9, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v3, v12

    :goto_48
    invoke-virtual {v9, v14, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_44

    :pswitch_21
    move-object/from16 v31, v6

    move/from16 v23, v10

    move v13, v11

    move-object v6, v14

    move/from16 v11, v18

    move/from16 v3, v22

    const/16 v22, 0x3

    move-object/from16 v10, p0

    move/from16 v18, p3

    move-object v14, v2

    move-wide/from16 v32, v8

    move-object v9, v1

    move-wide/from16 v1, v32

    if-nez v3, :cond_76

    invoke-static {v15, v13, v6}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget-wide v7, v6, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    cmp-long v3, v7, v26

    if-eqz v3, :cond_75

    const/4 v3, 0x1

    goto :goto_49

    :cond_75
    move/from16 v3, v16

    :goto_49
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v9, v14, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_4a
    move v8, v0

    goto/16 :goto_4d

    :pswitch_22
    move-object/from16 v31, v6

    move/from16 v23, v10

    move v13, v11

    move-object v6, v14

    move/from16 v11, v18

    move/from16 v3, v22

    const/4 v0, 0x5

    const/16 v22, 0x3

    move-object/from16 v10, p0

    move/from16 v18, p3

    move-object v14, v2

    move-wide/from16 v32, v8

    move-object v9, v1

    move-wide/from16 v1, v32

    if-ne v3, v0, :cond_76

    add-int/lit8 v12, v13, 0x4

    invoke-static {v15, v13}, Lcom/google/android/gms/internal/ads/zzibo;->zzd([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_4b
    move v8, v12

    goto/16 :goto_4d

    :pswitch_23
    move-object/from16 v31, v6

    move/from16 v23, v10

    move v13, v11

    move-object v6, v14

    move/from16 v11, v18

    move/from16 v3, v22

    const/4 v7, 0x1

    const/16 v22, 0x3

    move-object/from16 v10, p0

    move/from16 v18, p3

    move-object v14, v2

    move-wide/from16 v32, v8

    move-object v9, v1

    move-wide/from16 v1, v32

    if-ne v3, v7, :cond_76

    add-int/lit8 v12, v13, 0x8

    invoke-static {v15, v13}, Lcom/google/android/gms/internal/ads/zzibo;->zze([BI)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4b

    :pswitch_24
    move-object/from16 v31, v6

    move/from16 v23, v10

    move v13, v11

    move-object v6, v14

    move/from16 v11, v18

    move/from16 v3, v22

    const/4 v7, 0x1

    const/16 v22, 0x3

    move-object/from16 v10, p0

    move/from16 v18, p3

    move-object v14, v2

    move-wide/from16 v32, v8

    move-object v9, v1

    move-wide/from16 v1, v32

    if-nez v3, :cond_76

    invoke-static {v15, v13, v6}, Lcom/google/android/gms/internal/ads/zzibo;->zza([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget v3, v6, Lcom/google/android/gms/internal/ads/zzibn;->zza:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v14, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4a

    :pswitch_25
    move-object/from16 v31, v6

    move/from16 v23, v10

    move v13, v11

    move-object v6, v14

    move/from16 v11, v18

    move/from16 v3, v22

    const/4 v7, 0x1

    const/16 v22, 0x3

    move-object/from16 v10, p0

    move/from16 v18, p3

    move-object v14, v2

    move-wide/from16 v32, v8

    move-object v9, v1

    move-wide/from16 v1, v32

    if-nez v3, :cond_76

    invoke-static {v15, v13, v6}, Lcom/google/android/gms/internal/ads/zzibo;->zzc([BILcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    iget-wide v7, v6, Lcom/google/android/gms/internal/ads/zzibn;->zzb:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v14, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4a

    :pswitch_26
    move-object/from16 v31, v6

    move/from16 v23, v10

    move v13, v11

    move-object v6, v14

    move/from16 v11, v18

    move/from16 v3, v22

    const/4 v0, 0x5

    const/16 v22, 0x3

    move-object/from16 v10, p0

    move/from16 v18, p3

    move-object v14, v2

    move-wide/from16 v32, v8

    move-object v9, v1

    move-wide/from16 v1, v32

    if-ne v3, v0, :cond_76

    add-int/lit8 v12, v13, 0x4

    invoke-static {v15, v13}, Lcom/google/android/gms/internal/ads/zzibo;->zzd([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v9, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4b

    :pswitch_27
    move-object/from16 v31, v6

    move/from16 v23, v10

    move v13, v11

    move-object v6, v14

    move/from16 v11, v18

    move/from16 v3, v22

    const/4 v0, 0x1

    const/16 v22, 0x3

    move-object/from16 v10, p0

    move/from16 v18, p3

    move-object v14, v2

    move-wide/from16 v32, v8

    move-object v9, v1

    move-wide/from16 v1, v32

    if-ne v3, v0, :cond_76

    add-int/lit8 v12, v13, 0x8

    invoke-static {v15, v13}, Lcom/google/android/gms/internal/ads/zzibo;->zze([BI)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v9, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v9, v14, v1, v2, v11}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4b

    :cond_76
    :goto_4c
    move v8, v13

    :goto_4d
    if-eq v8, v13, :cond_77

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v2, v6

    move-object v6, v10

    :goto_4e
    move-object v7, v14

    move/from16 v13, v21

    move/from16 v1, v22

    move/from16 v10, v23

    const/4 v0, 0x1

    move-object v14, v9

    move v9, v11

    move/from16 v11, v20

    goto/16 :goto_0

    :cond_77
    move/from16 v7, p5

    move v2, v8

    move/from16 v12, v18

    :goto_4f
    if-ne v12, v7, :cond_78

    if-eqz v7, :cond_78

    move v8, v2

    move/from16 v1, v17

    move/from16 v11, v20

    const v0, 0xfffff

    goto/16 :goto_52

    :cond_78
    iget-boolean v0, v10, Lcom/google/android/gms/internal/ads/zzier;->zzh:Z

    if-eqz v0, :cond_7a

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzibn;->zzd:Lcom/google/android/gms/internal/ads/zzicn;

    sget v1, Lcom/google/android/gms/internal/ads/zzicn;->zzb:I

    sget v1, Lcom/google/android/gms/internal/ads/zzibm;->zza:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzicn;->zza:Lcom/google/android/gms/internal/ads/zzicn;

    if-eq v0, v1, :cond_7a

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/zzier;->zzg:Lcom/google/android/gms/internal/ads/zzieo;

    invoke-virtual {v0, v1, v11}, Lcom/google/android/gms/internal/ads/zzicn;->zzc(Lcom/google/android/gms/internal/ads/zzieo;I)Lcom/google/android/gms/internal/ads/zzidb;

    move-result-object v0

    if-nez v0, :cond_79

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzier;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzifu;

    move-result-object v4

    move v0, v12

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzibo;->zzo(I[BIILcom/google/android/gms/internal/ads/zzifu;Lcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    :goto_50
    move v8, v0

    goto :goto_51

    :cond_79
    move-object v0, v14

    check-cast v0, Lcom/google/android/gms/internal/ads/zzicz;

    throw v19

    :cond_7a
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzier;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzifu;

    move-result-object v4

    move v0, v12

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzibo;->zzo(I[BIILcom/google/android/gms/internal/ads/zzifu;Lcom/google/android/gms/internal/ads/zzibn;)I

    move-result v0

    goto :goto_50

    :goto_51
    move/from16 v4, p4

    move-object v2, v6

    move v5, v7

    move-object v6, v10

    move/from16 v18, v12

    goto :goto_4e

    :cond_7b
    move-object/from16 v31, v3

    move-object v10, v6

    move v1, v8

    move/from16 v20, v11

    move-object v9, v14

    const v0, 0xfffff

    move-object v14, v7

    move v7, v5

    move/from16 v1, v17

    move/from16 v12, v18

    :goto_52
    if-eq v11, v0, :cond_7c

    int-to-long v2, v11

    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7c
    iget v0, v10, Lcom/google/android/gms/internal/ads/zzier;->zzk:I

    move v6, v0

    move-object/from16 v3, v19

    :goto_53
    iget v0, v10, Lcom/google/android/gms/internal/ads/zzier;->zzl:I

    if-ge v6, v0, :cond_7d

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzier;->zzj:[I

    iget-object v4, v10, Lcom/google/android/gms/internal/ads/zzier;->zzm:Lcom/google/android/gms/internal/ads/zzift;

    aget v2, v0, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzift;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzifu;

    const/4 v0, 0x1

    add-int/2addr v6, v0

    goto :goto_53

    :cond_7d
    if-eqz v3, :cond_7e

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzier;->zzm:Lcom/google/android/gms/internal/ads/zzift;

    invoke-virtual {v0, v14, v3}, Lcom/google/android/gms/internal/ads/zzift;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7e
    if-nez v7, :cond_80

    move/from16 v0, p4

    if-ne v8, v0, :cond_7f

    goto :goto_54

    :cond_7f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    move/from16 v0, p4

    move-object/from16 v1, v31

    if-gt v8, v0, :cond_81

    if-ne v12, v7, :cond_81

    :goto_54
    return v8

    :cond_81
    new-instance v0, Lcom/google/android/gms/internal/ads/zzids;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzids;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final zzj(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzibn;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzier;->zzi(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/zzibn;)I

    return-void
.end method

.method public final zzk(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzier;->zzE(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzidd;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzidd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbq()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbb()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzaY()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzc:[I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzA(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzier;->zzC(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzier;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/ads/zziei;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zziei;->zzd()V

    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzidp;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzidp;->zzb()V

    goto :goto_1

    :cond_2
    aget v2, v0, v1

    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/ads/zzier;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzifg;->zzk(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzN(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/ads/zzier;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzifg;->zzk(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzm:Lcom/google/android/gms/internal/ads/zzift;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzift;->zzj(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzh:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzier;->zzn:Lcom/google/android/gms/internal/ads/zzico;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzico;->zza(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzl(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    const v9, 0xfffff

    move v1, v8

    move v10, v1

    move v0, v9

    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/ads/zzier;->zzk:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_b

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzier;->zzj:[I

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzier;->zzc:[I

    aget v11, v2, v10

    aget v12, v4, v11

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzier;->zzA(I)I

    move-result v13

    add-int/lit8 v2, v11, 0x2

    aget v2, v4, v2

    and-int v4, v2, v9

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v9, :cond_0

    int-to-long v0, v4

    sget-object v2, Lcom/google/android/gms/internal/ads/zzier;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v0

    move/from16 v16, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-eqz v0, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_2

    return v8

    :cond_2
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzier;->zzC(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x44

    if-eq v0, v1, :cond_6

    const/16 v1, 0x31

    if-eq v0, v1, :cond_7

    const/16 v1, 0x32

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    :cond_3
    and-int v0, v13, v9

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zziei;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzier;->zzr(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzieh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzieh;->zze()Lcom/google/android/gms/internal/ads/zzieg;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzieg;->zzc:Lcom/google/android/gms/internal/ads/zzigg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzigg;->zza()Lcom/google/android/gms/internal/ads/zzigh;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzigh;->zzi:Lcom/google/android/gms/internal/ads/zzigh;

    if-ne v1, v2, :cond_a

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zziey;->zza()Lcom/google/android/gms/internal/ads/zziey;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zziey;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v1

    :cond_5
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzifg;->zzl(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v8

    :cond_6
    invoke-direct {v6, v7, v12, v11}, Lcom/google/android/gms/internal/ads/zzier;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzy(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzifg;)Z

    move-result v0

    if-nez v0, :cond_a

    return v8

    :cond_7
    and-int v0, v13, v9

    int-to-long v0, v0

    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/ads/zziga;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v1

    move v2, v8

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzifg;->zzl(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v8

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzier;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzier;->zzq(I)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/ads/zzier;->zzy(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzifg;)Z

    move-result v0

    if-nez v0, :cond_a

    return v8

    :cond_a
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_b
    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzier;->zzh:Z

    if-eqz v0, :cond_c

    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/zzicz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzicz;->zza:Lcom/google/android/gms/internal/ads/zzics;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzics;->zze()Z

    move-result v0

    if-nez v0, :cond_c

    return v8

    :cond_c
    return v3
.end method
