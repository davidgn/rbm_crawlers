.class public final Lcom/google/android/gms/internal/ads/zzhek;
.super Lcom/google/android/gms/internal/ads/zzhdw;
.source "SourceFile"


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:I

.field private final zzd:I

.field private final zze:Lcom/google/android/gms/internal/ads/zzhej;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhei;


# direct methods
.method public synthetic constructor <init>(IIIILcom/google/android/gms/internal/ads/zzhej;Lcom/google/android/gms/internal/ads/zzhei;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhdw;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhek;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzd:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhek;->zze:Lcom/google/android/gms/internal/ads/zzhej;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzf:Lcom/google/android/gms/internal/ads/zzhei;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzheh;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzheh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzheh;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhek;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhek;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzhek;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhek;->zza:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzhek;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzb:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzhek;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzc:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzhek;->zzd:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzd:I

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhek;->zze:Lcom/google/android/gms/internal/ads/zzhej;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhek;->zze:Lcom/google/android/gms/internal/ads/zzhej;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhek;->zzf:Lcom/google/android/gms/internal/ads/zzhei;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzf:Lcom/google/android/gms/internal/ads/zzhei;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhek;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzb:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzd:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhek;->zze:Lcom/google/android/gms/internal/ads/zzhej;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzf:Lcom/google/android/gms/internal/ads/zzhei;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhek;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzf:Lcom/google/android/gms/internal/ads/zzhei;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhek;->zze:Lcom/google/android/gms/internal/ads/zzhej;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzc:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzd:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzhek;->zza:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzb:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v2, v2, 0x30

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0xe

    add-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x13

    add-int/2addr v2, v11

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0xf

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "AesCtrHmacAead Parameters (variant: "

    const-string v5, ", hashType: "

    invoke-static {v3, v2, v1, v5, v0}, Le1/i;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", "

    const-string v1, "-byte IV, and "

    invoke-static {v3, v0, v4, v1, v6}, LC/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "-byte tags, and "

    const-string v1, "-byte AES key, and "

    invoke-static {v3, v0, v8, v1, v10}, LC/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "-byte HMAC key)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhek;->zze:Lcom/google/android/gms/internal/ads/zzhej;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhej;->zzc:Lcom/google/android/gms/internal/ads/zzhej;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhek;->zza:I

    return v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzb:I

    return v0
.end method

.method public final zze()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzd:I

    return v0
.end method

.method public final zzf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzc:I

    return v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzhej;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhek;->zze:Lcom/google/android/gms/internal/ads/zzhej;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzhei;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhek;->zzf:Lcom/google/android/gms/internal/ads/zzhei;

    return-object v0
.end method
