.class public final Lcom/google/android/gms/internal/ads/zzfzy;
.super Lcom/google/android/gms/internal/ads/zzidd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziep;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzfzy;

.field private static volatile zzc:Lcom/google/android/gms/internal/ads/zziew;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zziei;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfzy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzy;->zzb:Lcom/google/android/gms/internal/ads/zzfzy;

    const-class v1, Lcom/google/android/gms/internal/ads/zzfzy;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzidd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzidd;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zziei;->zza()Lcom/google/android/gms/internal/ads/zziei;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zza:Lcom/google/android/gms/internal/ads/zziei;

    return-void
.end method

.method public static zzc(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzfzy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzy;->zzb:Lcom/google/android/gms/internal/ads/zzfzy;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbW(Lcom/google/android/gms/internal/ads/zzidd;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfzy;

    return-object p0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzfzy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzy;->zzb:Lcom/google/android/gms/internal/ads/zzfzy;

    return-object v0
.end method

.method public static synthetic zzg()Lcom/google/android/gms/internal/ads/zzfzy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzy;->zzb:Lcom/google/android/gms/internal/ads/zzfzy;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zza:Lcom/google/android/gms/internal/ads/zziei;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    return v0
.end method

.method public final zzb()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zza:Lcom/google/android/gms/internal/ads/zziei;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zzdc(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfzy;->zzc:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzfzy;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfzy;->zzc:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzicy;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzfzy;->zzb:Lcom/google/android/gms/internal/ads/zzfzy;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzicy;-><init>(Lcom/google/android/gms/internal/ads/zzidd;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzfzy;->zzc:Lcom/google/android/gms/internal/ads/zziew;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfzy;->zzb:Lcom/google/android/gms/internal/ads/zzfzy;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfzw;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzfzw;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfzy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfzy;-><init>()V

    return-object p1

    :cond_6
    const-string p1, "zza"

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfzx;->zza:Lcom/google/android/gms/internal/ads/zzieh;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfzy;->zzb:Lcom/google/android/gms/internal/ads/zzfzy;

    const-string p3, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbv(Lcom/google/android/gms/internal/ads/zzieo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zze()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zza:Lcom/google/android/gms/internal/ads/zziei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziei;->zze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zza:Lcom/google/android/gms/internal/ads/zziei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziei;->zzc()Lcom/google/android/gms/internal/ads/zziei;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zza:Lcom/google/android/gms/internal/ads/zziei;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzy;->zza:Lcom/google/android/gms/internal/ads/zziei;

    return-object v0
.end method
