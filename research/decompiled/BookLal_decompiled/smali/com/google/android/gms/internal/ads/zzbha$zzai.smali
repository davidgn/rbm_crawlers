.class public final Lcom/google/android/gms/internal/ads/zzbha$zzai;
.super Lcom/google/android/gms/internal/ads/zzidd;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbha$zzaj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzidd<",
        "Lcom/google/android/gms/internal/ads/zzbha$zzai;",
        "Lcom/google/android/gms/internal/ads/zzbha$zzai$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbha$zzaj;"
    }
.end annotation


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field private static final zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

.field private static volatile zzg:Lcom/google/android/gms/internal/ads/zziew;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zziew<",
            "Lcom/google/android/gms/internal/ads/zzbha$zzai;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbha$zzai;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzidd;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzidd;-><init>()V

    return-void
.end method

.method private zzA()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzc:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzc:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzd:I

    return-void
.end method

.method private zzB(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzc:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zze:I

    return-void
.end method

.method private zzC()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzc:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzc:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zze:I

    return-void
.end method

.method public static zzc(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzbha$zzai;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbR(Lcom/google/android/gms/internal/ads/zzidd;Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;

    return-object p0
.end method

.method public static zzd(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzbha$zzai;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbQ(Lcom/google/android/gms/internal/ads/zzidd;Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;

    return-object p0
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzibz;)Lcom/google/android/gms/internal/ads/zzbha$zzai;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbS(Lcom/google/android/gms/internal/ads/zzidd;Lcom/google/android/gms/internal/ads/zzibz;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;

    return-object p0
.end method

.method public static zzh(Lcom/google/android/gms/internal/ads/zzibz;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzbha$zzai;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbT(Lcom/google/android/gms/internal/ads/zzidd;Lcom/google/android/gms/internal/ads/zzibz;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;

    return-object p0
.end method

.method public static zzi([B)Lcom/google/android/gms/internal/ads/zzbha$zzai;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbU(Lcom/google/android/gms/internal/ads/zzidd;[B)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;

    return-object p0
.end method

.method public static zzj([BLcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzbha$zzai;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbV(Lcom/google/android/gms/internal/ads/zzidd;[BLcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;

    return-object p0
.end method

.method public static zzk(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbha$zzai;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbW(Lcom/google/android/gms/internal/ads/zzidd;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;

    return-object p0
.end method

.method public static zzl(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzbha$zzai;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbX(Lcom/google/android/gms/internal/ads/zzidd;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;

    return-object p0
.end method

.method public static zzm(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbha$zzai;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzidd;->zzca(Lcom/google/android/gms/internal/ads/zzidd;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;

    return-object p0
.end method

.method public static zzn(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzbha$zzai;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzcb(Lcom/google/android/gms/internal/ads/zzidd;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;

    return-object p0
.end method

.method public static zzo(Lcom/google/android/gms/internal/ads/zzicd;)Lcom/google/android/gms/internal/ads/zzbha$zzai;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbY(Lcom/google/android/gms/internal/ads/zzidd;Lcom/google/android/gms/internal/ads/zzicd;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;

    return-object p0
.end method

.method public static zzp(Lcom/google/android/gms/internal/ads/zzicd;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzbha$zzai;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbZ(Lcom/google/android/gms/internal/ads/zzidd;Lcom/google/android/gms/internal/ads/zzicd;Lcom/google/android/gms/internal/ads/zzicn;)Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;

    return-object p0
.end method

.method public static zzq()Lcom/google/android/gms/internal/ads/zzbha$zzai$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbn()Lcom/google/android/gms/internal/ads/zzicx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzai$zza;

    return-object v0
.end method

.method public static zzr(Lcom/google/android/gms/internal/ads/zzbha$zzai;)Lcom/google/android/gms/internal/ads/zzbha$zzai$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbo(Lcom/google/android/gms/internal/ads/zzidd;)Lcom/google/android/gms/internal/ads/zzicx;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzai$zza;

    return-object p0
.end method

.method public static zzs()Lcom/google/android/gms/internal/ads/zzbha$zzai;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    return-object v0
.end method

.method public static zzt()Lcom/google/android/gms/internal/ads/zziew;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zziew<",
            "Lcom/google/android/gms/internal/ads/zzbha$zzai;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzidd;->zzbd()Lcom/google/android/gms/internal/ads/zziew;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic zzy()Lcom/google/android/gms/internal/ads/zzbha$zzai;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    return-object v0
.end method

.method private zzz(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzc:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzd:I

    return-void
.end method


# virtual methods
.method public zza()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzc:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzd:I

    return v0
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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzg:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbha$zzai;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzg:Lcom/google/android/gms/internal/ads/zziew;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzicy;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzicy;-><init>(Lcom/google/android/gms/internal/ads/zzidd;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzg:Lcom/google/android/gms/internal/ads/zziew;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbha$zzai$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzbha$zzai$zza;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbha$zzai;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbha$zzai;-><init>()V

    return-object p1

    :cond_6
    const-string p1, "zzc"

    const-string p2, "zzd"

    const-string p3, "zze"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzai;

    const-string p3, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzidd;->zzbv(Lcom/google/android/gms/internal/ads/zzieo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public zze()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzc:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zze:I

    return v0
.end method

.method public final synthetic zzu(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzz(I)V

    return-void
.end method

.method public final synthetic zzv()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzA()V

    return-void
.end method

.method public final synthetic zzw(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzB(I)V

    return-void
.end method

.method public final synthetic zzx()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha$zzai;->zzC()V

    return-void
.end method
