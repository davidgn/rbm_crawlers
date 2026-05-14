.class public final Lcom/google/android/gms/internal/ads/zzhzo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhdd;


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzhpe;

.field private final zzc:I

.field private final zzd:[B

.field private final zze:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhzo;->zza:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhne;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhne;->zzf()Lcom/google/android/gms/internal/ads/zzhnl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnl;->zzc()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhpd;->zzb(I)Lcom/google/android/gms/internal/ads/zzhpd;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhne;->zzd()Lcom/google/android/gms/internal/ads/zziaa;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhpc;->zzc(Lcom/google/android/gms/internal/ads/zzhpd;Lcom/google/android/gms/internal/ads/zziaa;)Lcom/google/android/gms/internal/ads/zzhpc;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhzl;->zzb(Lcom/google/android/gms/internal/ads/zzhpc;)Lcom/google/android/gms/internal/ads/zzhpe;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zzb:Lcom/google/android/gms/internal/ads/zzhpe;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhne;->zzf()Lcom/google/android/gms/internal/ads/zzhnl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnl;->zzd()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zzc:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhne;->zze()Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhzy;->zzc()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zzd:[B

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhne;->zzf()Lcom/google/android/gms/internal/ads/zzhnl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhnl;->zzf()Lcom/google/android/gms/internal/ads/zzhnk;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhnk;->zzc:Lcom/google/android/gms/internal/ads/zzhnk;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhzo;->zza:[B

    const/4 v0, 0x1

    .line 8
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zze:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zze:[B

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhnq;)V
    .locals 5

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhzn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhnq;->zzf()Lcom/google/android/gms/internal/ads/zzhnz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhnz;->zzg()Lcom/google/android/gms/internal/ads/zzhnx;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhnq;->zzd()Lcom/google/android/gms/internal/ads/zziaa;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zziaa;->zzc(Lcom/google/android/gms/internal/ads/zzhdi;)[B

    move-result-object v3

    const-string v4, "HMAC"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhzn;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zzb:Lcom/google/android/gms/internal/ads/zzhpe;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhnq;->zzf()Lcom/google/android/gms/internal/ads/zzhnz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnz;->zzd()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zzc:I

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhnq;->zze()Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhzy;->zzc()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zzd:[B

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhnq;->zzf()Lcom/google/android/gms/internal/ads/zzhnz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhnz;->zzf()Lcom/google/android/gms/internal/ads/zzhny;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhny;->zzc:Lcom/google/android/gms/internal/ads/zzhny;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhzo;->zza:[B

    const/4 v0, 0x1

    .line 14
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zze:[B

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zze:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhpe;I)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zzb:Lcom/google/android/gms/internal/ads/zzhpe;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zzc:I

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zzd:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zze:[B

    new-array v0, v0, [B

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzhpe;->zza([BI)[B

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhne;)Lcom/google/android/gms/internal/ads/zzhdd;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhzo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhzo;-><init>(Lcom/google/android/gms/internal/ads/zzhne;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhnq;)Lcom/google/android/gms/internal/ads/zzhdd;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhzo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhzo;-><init>(Lcom/google/android/gms/internal/ads/zzhnq;)V

    return-object v0
.end method


# virtual methods
.method public final zzc([B)[B
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zze:[B

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zzd:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zzb:Lcom/google/android/gms/internal/ads/zzhpe;

    filled-new-array {p1, v0}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhyk;->zza([[B)[B

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zzc:I

    invoke-interface {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzhpe;->zza([BI)[B

    move-result-object p1

    filled-new-array {v1, p1}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhyk;->zza([[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zzd:[B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zzb:Lcom/google/android/gms/internal/ads/zzhpe;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhzo;->zzc:I

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzhpe;->zza([BI)[B

    move-result-object p1

    filled-new-array {v0, p1}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhyk;->zza([[B)[B

    move-result-object p1

    return-object p1
.end method
