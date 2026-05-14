.class public final Lcom/google/android/gms/internal/ads/zzges;
.super Lcom/google/android/gms/internal/ads/zzidd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziep;


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/ads/zzges;

.field private static volatile zzg:Lcom/google/android/gms/internal/ads/zziew;


# instance fields
.field private zza:I

.field private zzb:Lcom/google/android/gms/internal/ads/zzgeu;

.field private zzc:Lcom/google/android/gms/internal/ads/zzibz;

.field private zzd:Lcom/google/android/gms/internal/ads/zzibz;

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzges;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzges;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzges;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    const-class v1, Lcom/google/android/gms/internal/ads/zzges;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzidd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzidd;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzibz;->zza:Lcom/google/android/gms/internal/ads/zzibz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzges;->zzc:Lcom/google/android/gms/internal/ads/zzibz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzges;->zzd:Lcom/google/android/gms/internal/ads/zzibz;

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzger;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzges;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbn()Lcom/google/android/gms/internal/ads/zzicx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzger;

    return-object v0
.end method

.method public static synthetic zzi()Lcom/google/android/gms/internal/ads/zzges;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzges;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgeu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzges;->zzb:Lcom/google/android/gms/internal/ads/zzgeu;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgeu;->zzg()Lcom/google/android/gms/internal/ads/zzgeu;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzibz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzges;->zzc:Lcom/google/android/gms/internal/ads/zzibz;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzibz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzges;->zzd:Lcom/google/android/gms/internal/ads/zzibz;

    return-object v0
.end method

.method public final zzdc(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzges;->zzg:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzges;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzges;->zzg:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzicy;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzges;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzicy;-><init>(Lcom/google/android/gms/internal/ads/zzidd;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzges;->zzg:Lcom/google/android/gms/internal/ads/zziew;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzges;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzger;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzger;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzges;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzges;-><init>()V

    return-object p1

    :cond_6
    const-string v0, "zza"

    const-string v1, "zzb"

    const-string v2, "zzc"

    const-string v3, "zzd"

    const-string v4, "zze"

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgfi;->zza:Lcom/google/android/gms/internal/ads/zzidj;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzges;->zzf:Lcom/google/android/gms/internal/ads/zzges;

    const-string p3, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u100a\u0001\u0003\u100a\u0002\u0004\u180c\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbv(Lcom/google/android/gms/internal/ads/zzieo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzgeu;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzges;->zzb:Lcom/google/android/gms/internal/ads/zzgeu;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzges;->zza:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzges;->zza:I

    return-void
.end method

.method public final synthetic zzg(Lcom/google/android/gms/internal/ads/zzibz;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzges;->zza:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzges;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzges;->zzc:Lcom/google/android/gms/internal/ads/zzibz;

    return-void
.end method

.method public final synthetic zzh(Lcom/google/android/gms/internal/ads/zzibz;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzges;->zza:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzges;->zza:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzges;->zzd:Lcom/google/android/gms/internal/ads/zzibz;

    return-void
.end method

.method public final zzj()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzges;->zze:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgfj;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final synthetic zzk(I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzges;->zze:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzges;->zza:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzges;->zza:I

    return-void
.end method
