.class public final Lcom/google/android/gms/internal/ads/zzavy;
.super Lcom/google/android/gms/internal/ads/zzidd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziep;


# static fields
.field private static final zzj:Lcom/google/android/gms/internal/ads/zzavy;

.field private static volatile zzk:Lcom/google/android/gms/internal/ads/zziew;


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:Z

.field private zzd:Ljava/lang/String;

.field private zze:Z

.field private zzf:Z

.field private zzg:Lcom/google/android/gms/internal/ads/zzawp;

.field private zzh:Lcom/google/android/gms/internal/ads/zzawv;

.field private zzi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzavy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzavy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavy;->zzj:Lcom/google/android/gms/internal/ads/zzavy;

    const-class v1, Lcom/google/android/gms/internal/ads/zzavy;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzidd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzidd;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzc:Z

    const-string v1, "unknown_host"

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzd:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzf:Z

    return-void
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzavx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavy;->zzj:Lcom/google/android/gms/internal/ads/zzavy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbn()Lcom/google/android/gms/internal/ads/zzicx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzavx;

    return-object v0
.end method

.method public static synthetic zzi()Lcom/google/android/gms/internal/ads/zzavy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavy;->zzj:Lcom/google/android/gms/internal/ads/zzavy;

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zze:Z

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzawp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzg:Lcom/google/android/gms/internal/ads/zzawp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawp;->zzd()Lcom/google/android/gms/internal/ads/zzawp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzawv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzh:Lcom/google/android/gms/internal/ads/zzawv;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawv;->zza()Lcom/google/android/gms/internal/ads/zzawv;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzdc(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzavy;->zzk:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzavy;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzavy;->zzk:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzicy;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzavy;->zzj:Lcom/google/android/gms/internal/ads/zzavy;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzicy;-><init>(Lcom/google/android/gms/internal/ads/zzidd;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzavy;->zzk:Lcom/google/android/gms/internal/ads/zziew;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzavy;->zzj:Lcom/google/android/gms/internal/ads/zzavy;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavx;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzavx;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzavy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzavy;-><init>()V

    return-object p1

    :cond_6
    const-string v0, "zza"

    const-string v1, "zzb"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzawb;->zza:Lcom/google/android/gms/internal/ads/zzidj;

    const-string v3, "zzc"

    const-string v4, "zzd"

    const-string v5, "zze"

    const-string v6, "zzf"

    const-string v7, "zzg"

    const-string v8, "zzh"

    const-string v9, "zzi"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzavy;->zzj:Lcom/google/android/gms/internal/ads/zzavy;

    const-string p3, "\u0004\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1009\u0005\u0007\u1009\u0006\u0008\u1007\u0007"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbv(Lcom/google/android/gms/internal/ads/zzieo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzg(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zza:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zzd:Ljava/lang/String;

    return-void
.end method

.method public final synthetic zzh(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zza:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzavy;->zza:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzavy;->zze:Z

    return-void
.end method
