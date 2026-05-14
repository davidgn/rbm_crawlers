.class public final Lcom/google/android/gms/internal/ads/zzhwd;
.super Lcom/google/android/gms/internal/ads/zzhwn;
.source "SourceFile"


# static fields
.field public static final zza:Ljava/math/BigInteger;


# instance fields
.field private final zzb:I

.field private final zzc:Ljava/math/BigInteger;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhwc;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhwb;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhwb;

.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x10001

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhwd;->zza:Ljava/math/BigInteger;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/math/BigInteger;Lcom/google/android/gms/internal/ads/zzhwc;Lcom/google/android/gms/internal/ads/zzhwb;Lcom/google/android/gms/internal/ads/zzhwb;I[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwn;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzb:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzc:Ljava/math/BigInteger;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzd:Lcom/google/android/gms/internal/ads/zzhwc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zze:Lcom/google/android/gms/internal/ads/zzhwb;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzf:Lcom/google/android/gms/internal/ads/zzhwb;

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzg:I

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzhwa;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhwa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhwa;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhwd;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhwd;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzhwd;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzb:I

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhwd;->zzc:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzc:Ljava/math/BigInteger;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhwd;->zzd:Lcom/google/android/gms/internal/ads/zzhwc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzd:Lcom/google/android/gms/internal/ads/zzhwc;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhwd;->zze:Lcom/google/android/gms/internal/ads/zzhwb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zze:Lcom/google/android/gms/internal/ads/zzhwb;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhwd;->zzf:Lcom/google/android/gms/internal/ads/zzhwb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzf:Lcom/google/android/gms/internal/ads/zzhwb;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzhwd;->zzg:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzg:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzb:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzc:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzd:Lcom/google/android/gms/internal/ads/zzhwc;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zze:Lcom/google/android/gms/internal/ads/zzhwb;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzf:Lcom/google/android/gms/internal/ads/zzhwb;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzg:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-class v1, Lcom/google/android/gms/internal/ads/zzhwd;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzc:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzf:Lcom/google/android/gms/internal/ads/zzhwb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zze:Lcom/google/android/gms/internal/ads/zzhwb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzd:Lcom/google/android/gms/internal/ads/zzhwc;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzg:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzb:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v4, v4, 0x37

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x11

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x13

    add-int/2addr v4, v8

    add-int/lit8 v4, v4, 0x12

    add-int/2addr v4, v9

    add-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v11

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0xd

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "RSA SSA PSS Parameters (variant: "

    const-string v6, ", signature hashType: "

    invoke-static {v5, v4, v3, v6, v2}, Le1/i;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", mgf1 hashType: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", saltLengthBytes: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", publicExponent: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", and "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-bit modulus)"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzd:Lcom/google/android/gms/internal/ads/zzhwc;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhwc;->zzd:Lcom/google/android/gms/internal/ads/zzhwc;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzb:I

    return v0
.end method

.method public final zzd()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzc:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhwc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzd:Lcom/google/android/gms/internal/ads/zzhwc;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhwb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zze:Lcom/google/android/gms/internal/ads/zzhwb;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzhwb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzf:Lcom/google/android/gms/internal/ads/zzhwb;

    return-object v0
.end method

.method public final zzh()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhwd;->zzg:I

    return v0
.end method
