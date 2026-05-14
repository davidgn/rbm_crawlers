.class public final Lcom/google/android/gms/internal/ads/zzikq;
.super Lcom/google/android/gms/internal/ads/zzidd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziep;


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/ads/zzikq;

.field private static volatile zzm:Lcom/google/android/gms/internal/ads/zziew;


# instance fields
.field private zza:I

.field private zzb:Lcom/google/android/gms/internal/ads/zzibz;

.field private zzc:Lcom/google/android/gms/internal/ads/zzidl;

.field private zzd:J

.field private zze:Lcom/google/android/gms/internal/ads/zzidl;

.field private zzf:Lcom/google/android/gms/internal/ads/zzidp;

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/ads/zzidp;

.field private zzi:Lcom/google/android/gms/internal/ads/zziks;

.field private zzj:Lcom/google/android/gms/internal/ads/zziku;

.field private zzk:Lcom/google/android/gms/internal/ads/zziac;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzikq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzikq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzikq;->zzl:Lcom/google/android/gms/internal/ads/zzikq;

    const-class v1, Lcom/google/android/gms/internal/ads/zzikq;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzidd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzidd;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzibz;->zza:Lcom/google/android/gms/internal/ads/zzibz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzikq;->zzb:Lcom/google/android/gms/internal/ads/zzibz;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidd;->zzbC()Lcom/google/android/gms/internal/ads/zzidl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzikq;->zzc:Lcom/google/android/gms/internal/ads/zzidl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidd;->zzbC()Lcom/google/android/gms/internal/ads/zzidl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzikq;->zze:Lcom/google/android/gms/internal/ads/zzidl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidd;->zzbM()Lcom/google/android/gms/internal/ads/zzidp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzikq;->zzf:Lcom/google/android/gms/internal/ads/zzidp;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzikq;->zzg:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidd;->zzbM()Lcom/google/android/gms/internal/ads/zzidp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzikq;->zzh:Lcom/google/android/gms/internal/ads/zzidp;

    return-void
.end method

.method public static zzc([BLcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzikq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzikq;->zzl:Lcom/google/android/gms/internal/ads/zzikq;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbV(Lcom/google/android/gms/internal/ads/zzidd;[BLcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzikq;

    return-object p0
.end method

.method public static synthetic zzd()Lcom/google/android/gms/internal/ads/zzikq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzikq;->zzl:Lcom/google/android/gms/internal/ads/zzikq;

    return-object v0
.end method


# virtual methods
.method public final zzdc(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 p2, 0x2

    if-eq p1, p2, :cond_6

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-ne p1, p2, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzikq;->zzm:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzikq;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzikq;->zzm:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzicy;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzikq;->zzl:Lcom/google/android/gms/internal/ads/zzikq;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzicy;-><init>(Lcom/google/android/gms/internal/ads/zzidd;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzikq;->zzm:Lcom/google/android/gms/internal/ads/zziew;

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

    :cond_2
    throw p3

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzikq;->zzl:Lcom/google/android/gms/internal/ads/zzikq;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzikp;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzikp;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzikq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzikq;-><init>()V

    return-object p1

    :cond_6
    const-string v0, "zza"

    const-string v1, "zzc"

    const-string v2, "zzd"

    const-string v3, "zze"

    const-string v4, "zzh"

    const-class v5, Lcom/google/android/gms/internal/ads/zzikf;

    const-string v6, "zzi"

    const-string v7, "zzg"

    const-string v8, "zzj"

    const-string v9, "zzf"

    const-string v10, "zzb"

    const-string v11, "zzk"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzikq;->zzl:Lcom/google/android/gms/internal/ads/zzikq;

    const-string p3, "\u0001\n\u0000\u0001\u0001\u000f\n\u0000\u0004\u0000\u0001\'\u0002\u1002\u0001\u0003\'\u0004\u001b\u0005\u1009\u0003\u0007\u1008\u0002\t\u1009\u0004\n\u001a\r\u100a\u0000\u000f\u1009\u0005"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbv(Lcom/google/android/gms/internal/ads/zzieo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
