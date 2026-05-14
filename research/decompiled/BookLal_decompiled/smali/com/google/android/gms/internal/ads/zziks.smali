.class public final Lcom/google/android/gms/internal/ads/zziks;
.super Lcom/google/android/gms/internal/ads/zzidd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziep;


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/ads/zziks;

.field private static volatile zzk:Lcom/google/android/gms/internal/ads/zziew;


# instance fields
.field private zza:I

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/internal/ads/zzidp;

.field private zze:Lcom/google/android/gms/internal/ads/zzidp;

.field private zzf:Lcom/google/android/gms/internal/ads/zzidp;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/ads/zzikb;

.field private zzi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zziks;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zziks;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zziks;->zzj:Lcom/google/android/gms/internal/ads/zziks;

    const-class v1, Lcom/google/android/gms/internal/ads/zziks;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzidd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzidd;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziks;->zzb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziks;->zzc:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidd;->zzbM()Lcom/google/android/gms/internal/ads/zzidp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zziks;->zzd:Lcom/google/android/gms/internal/ads/zzidp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidd;->zzbM()Lcom/google/android/gms/internal/ads/zzidp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zziks;->zze:Lcom/google/android/gms/internal/ads/zzidp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidd;->zzbM()Lcom/google/android/gms/internal/ads/zzidp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zziks;->zzf:Lcom/google/android/gms/internal/ads/zzidp;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zziks;->zzg:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziks;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zzc()Lcom/google/android/gms/internal/ads/zziks;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zziks;->zzj:Lcom/google/android/gms/internal/ads/zziks;

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zziks;->zzk:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zziks;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zziks;->zzk:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzicy;

    sget-object p3, Lcom/google/android/gms/internal/ads/zziks;->zzj:Lcom/google/android/gms/internal/ads/zziks;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzicy;-><init>(Lcom/google/android/gms/internal/ads/zzidd;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zziks;->zzk:Lcom/google/android/gms/internal/ads/zziew;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zziks;->zzj:Lcom/google/android/gms/internal/ads/zziks;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzikr;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzikr;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zziks;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zziks;-><init>()V

    return-object p1

    :cond_6
    const-string v0, "zza"

    const-string v1, "zzc"

    const-string v2, "zzd"

    const-class v3, Lcom/google/android/gms/internal/ads/zzikf;

    const-string v4, "zze"

    const-class v5, Lcom/google/android/gms/internal/ads/zzikm;

    const-string v6, "zzg"

    const-string v7, "zzb"

    const-string v8, "zzf"

    const-class v9, Lcom/google/android/gms/internal/ads/zzikz;

    const-string v10, "zzi"

    const-string v11, "zzh"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zziks;->zzj:Lcom/google/android/gms/internal/ads/zziks;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\n\u0008\u0000\u0003\u0000\u0001\u1008\u0001\u0002\u001b\u0003\u001b\u0004\u1004\u0002\u0005\u1008\u0000\u0008\u001b\t\u1008\u0004\n\u1009\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbv(Lcom/google/android/gms/internal/ads/zzieo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
