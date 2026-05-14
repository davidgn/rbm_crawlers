.class public final Lcom/google/android/gms/internal/ads/zziiy;
.super Lcom/google/android/gms/internal/ads/zzidd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziep;


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/ads/zziiy;

.field private static volatile zzm:Lcom/google/android/gms/internal/ads/zziew;


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/internal/ads/zzihz;

.field private zze:Lcom/google/android/gms/internal/ads/zziid;

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/ads/zzidl;

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/zzidp;

.field private zzk:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zziiy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zziiy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zziiy;->zzl:Lcom/google/android/gms/internal/ads/zziiy;

    const-class v1, Lcom/google/android/gms/internal/ads/zziiy;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzidd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzidd;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zziiy;->zzk:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziiy;->zzc:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidd;->zzbC()Lcom/google/android/gms/internal/ads/zzidl;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zziiy;->zzg:Lcom/google/android/gms/internal/ads/zzidl;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziiy;->zzh:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidd;->zzbM()Lcom/google/android/gms/internal/ads/zzidp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziiy;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zziix;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zziiy;->zzl:Lcom/google/android/gms/internal/ads/zziiy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbn()Lcom/google/android/gms/internal/ads/zzicx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zziix;

    return-object v0
.end method

.method public static synthetic zzk()Lcom/google/android/gms/internal/ads/zziiy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zziiy;->zzl:Lcom/google/android/gms/internal/ads/zziiy;

    return-object v0
.end method


# virtual methods
.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziiy;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziiy;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzdc(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    throw p3

    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zziiy;->zzm:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zziiy;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zziiy;->zzm:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzicy;

    sget-object p3, Lcom/google/android/gms/internal/ads/zziiy;->zzl:Lcom/google/android/gms/internal/ads/zziiy;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzicy;-><init>(Lcom/google/android/gms/internal/ads/zzidd;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zziiy;->zzm:Lcom/google/android/gms/internal/ads/zziew;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-object p1

    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zziiy;->zzl:Lcom/google/android/gms/internal/ads/zziiy;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zziix;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zziix;-><init>([B)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zziiy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zziiy;-><init>()V

    return-object p1

    :pswitch_4
    const-string v0, "zza"

    const-string v1, "zzb"

    const-string v2, "zzc"

    const-string v3, "zzd"

    const-string v4, "zze"

    const-string v5, "zzf"

    const-string v6, "zzg"

    const-string v7, "zzh"

    const-string v8, "zzi"

    sget-object v9, Lcom/google/android/gms/internal/ads/zziiv;->zza:Lcom/google/android/gms/internal/ads/zzidj;

    const-string v10, "zzj"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zziiy;->zzl:Lcom/google/android/gms/internal/ads/zziiy;

    const-string p3, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001\u1504\u0000\u0002\u1008\u0001\u0003\u1409\u0002\u0004\u1409\u0003\u0005\u1004\u0004\u0006\u0016\u0007\u1008\u0005\u0008\u180c\u0006\t\u001a"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbv(Lcom/google/android/gms/internal/ads/zzieo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    if-nez p2, :cond_2

    const/4 p1, 0x0

    goto :goto_3

    :cond_2
    const/4 p1, 0x1

    :goto_3
    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zziiy;->zzk:B

    return-object p3

    :pswitch_6
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zziiy;->zzk:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic zzg(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zziiy;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zziiy;->zza:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziiy;->zzb:I

    return-void
.end method

.method public final synthetic zzh(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zziiy;->zza:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zziiy;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziiy;->zzc:Ljava/lang/String;

    return-void
.end method

.method public final synthetic zzi(Lcom/google/android/gms/internal/ads/zzihz;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziiy;->zzd:Lcom/google/android/gms/internal/ads/zzihz;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zziiy;->zza:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziiy;->zza:I

    return-void
.end method

.method public final synthetic zzj(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziiy;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzidp;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbN(Lcom/google/android/gms/internal/ads/zzidp;)Lcom/google/android/gms/internal/ads/zzidp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziiy;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziiy;->zzj:Lcom/google/android/gms/internal/ads/zzidp;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic zzl(I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziiy;->zzi:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zziiy;->zza:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziiy;->zza:I

    return-void
.end method
