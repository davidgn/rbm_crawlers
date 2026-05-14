.class public final Lcom/google/android/gms/internal/ads/zzgeu;
.super Lcom/google/android/gms/internal/ads/zzidd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziep;


# static fields
.field private static final zze:Lcom/google/android/gms/internal/ads/zzgeu;

.field private static volatile zzf:Lcom/google/android/gms/internal/ads/zziew;


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:Ljava/lang/Object;

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgeu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgeu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgeu;->zze:Lcom/google/android/gms/internal/ads/zzgeu;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgeu;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzidd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzidd;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgeu;->zzb:I

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzibz;)Lcom/google/android/gms/internal/ads/zzgeu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgeu;->zze:Lcom/google/android/gms/internal/ads/zzgeu;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbS(Lcom/google/android/gms/internal/ads/zzidd;Lcom/google/android/gms/internal/ads/zzibz;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgeu;

    return-object p0
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzget;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgeu;->zze:Lcom/google/android/gms/internal/ads/zzgeu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbn()Lcom/google/android/gms/internal/ads/zzicx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzget;

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/ads/zzgeu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgeu;->zze:Lcom/google/android/gms/internal/ads/zzgeu;

    return-object v0
.end method

.method public static synthetic zzk()Lcom/google/android/gms/internal/ads/zzgeu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgeu;->zze:Lcom/google/android/gms/internal/ads/zzgeu;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbdg;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgeu;->zzb:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgeu;->zzc:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbdg;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdg;->zzj()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzbde;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgeu;->zzb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgeu;->zzc:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbde;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbde;->zzd()Lcom/google/android/gms/internal/ads/zzbde;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbcy;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgeu;->zzd:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbcy;->zzb(I)Lcom/google/android/gms/internal/ads/zzbcy;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcy;->zza:Lcom/google/android/gms/internal/ads/zzbcy;

    :cond_0
    return-object v0
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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgeu;->zzf:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzgeu;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgeu;->zzf:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzicy;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzgeu;->zze:Lcom/google/android/gms/internal/ads/zzgeu;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzicy;-><init>(Lcom/google/android/gms/internal/ads/zzidd;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzgeu;->zzf:Lcom/google/android/gms/internal/ads/zziew;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgeu;->zze:Lcom/google/android/gms/internal/ads/zzgeu;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzget;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzget;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgeu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgeu;-><init>()V

    return-object p1

    :cond_6
    const-string v0, "zzc"

    const-string v1, "zzb"

    const-string v2, "zza"

    const-class v3, Lcom/google/android/gms/internal/ads/zzbdg;

    const-class v4, Lcom/google/android/gms/internal/ads/zzbde;

    const-string v5, "zzd"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbcy;->zzc()Lcom/google/android/gms/internal/ads/zzidj;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzgeu;->zze:Lcom/google/android/gms/internal/ads/zzgeu;

    const-string p3, "\u0004\u0003\u0001\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003\u180c\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbv(Lcom/google/android/gms/internal/ads/zzieo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzh(Lcom/google/android/gms/internal/ads/zzbdg;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgeu;->zzc:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgeu;->zzb:I

    return-void
.end method

.method public final synthetic zzi(Lcom/google/android/gms/internal/ads/zzbde;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgeu;->zzc:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgeu;->zzb:I

    return-void
.end method

.method public final synthetic zzj(Lcom/google/android/gms/internal/ads/zzbcy;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcy;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgeu;->zzd:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgeu;->zza:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgeu;->zza:I

    return-void
.end method
