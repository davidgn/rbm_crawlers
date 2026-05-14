.class public final Lcom/google/android/gms/internal/ads/zzayp;
.super Lcom/google/android/gms/internal/ads/zzidd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziep;


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/ads/zzayp;

.field private static volatile zzg:Lcom/google/android/gms/internal/ads/zziew;


# instance fields
.field private zza:I

.field private zzb:Lcom/google/android/gms/internal/ads/zzidp;

.field private zzc:Lcom/google/android/gms/internal/ads/zzibz;

.field private zzd:I

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzayp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzayp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayp;->zzf:Lcom/google/android/gms/internal/ads/zzayp;

    const-class v1, Lcom/google/android/gms/internal/ads/zzayp;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzidd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzidd;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzidd;->zzbM()Lcom/google/android/gms/internal/ads/zzidp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzb:Lcom/google/android/gms/internal/ads/zzidp;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzibz;->zza:Lcom/google/android/gms/internal/ads/zzibz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzc:Lcom/google/android/gms/internal/ads/zzibz;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayp;->zze:I

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzayo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayp;->zzf:Lcom/google/android/gms/internal/ads/zzayp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbn()Lcom/google/android/gms/internal/ads/zzicx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzayo;

    return-object v0
.end method

.method public static synthetic zzd()Lcom/google/android/gms/internal/ads/zzayp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzayp;->zzf:Lcom/google/android/gms/internal/ads/zzayp;

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzibz;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzb:Lcom/google/android/gms/internal/ads/zzidp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzidp;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbN(Lcom/google/android/gms/internal/ads/zzidp;)Lcom/google/android/gms/internal/ads/zzidp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzb:Lcom/google/android/gms/internal/ads/zzidp;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzb:Lcom/google/android/gms/internal/ads/zzidp;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzibz;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzayp;->zza:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzayp;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzc:Lcom/google/android/gms/internal/ads/zzibz;

    return-void
.end method

.method public final zzdc(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzayp;->zzg:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzayp;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzayp;->zzg:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzicy;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzayp;->zzf:Lcom/google/android/gms/internal/ads/zzayp;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzicy;-><init>(Lcom/google/android/gms/internal/ads/zzidd;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzayp;->zzg:Lcom/google/android/gms/internal/ads/zziew;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzayp;->zzf:Lcom/google/android/gms/internal/ads/zzayp;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzayo;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzayo;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzayp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzayp;-><init>()V

    return-object p1

    :cond_6
    const-string v0, "zza"

    const-string v1, "zzb"

    const-string v2, "zzc"

    const-string v3, "zzd"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzayj;->zza:Lcom/google/android/gms/internal/ads/zzidj;

    const-string v5, "zze"

    sget-object v6, Lcom/google/android/gms/internal/ads/zzayf;->zza:Lcom/google/android/gms/internal/ads/zzidj;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzayp;->zzf:Lcom/google/android/gms/internal/ads/zzayp;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\u100a\u0000\u0003\u180c\u0001\u0004\u180c\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbv(Lcom/google/android/gms/internal/ads/zzieo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zze(I)V
    .locals 0

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayp;->zzd:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayp;->zza:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayp;->zza:I

    return-void
.end method

.method public final synthetic zzg(I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayp;->zze:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzayp;->zza:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzayp;->zza:I

    return-void
.end method
