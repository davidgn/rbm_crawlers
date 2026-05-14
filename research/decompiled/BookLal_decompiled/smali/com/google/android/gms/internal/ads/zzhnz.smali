.class public final Lcom/google/android/gms/internal/ads/zzhnz;
.super Lcom/google/android/gms/internal/ads/zzhoc;
.source "SourceFile"


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhny;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhnx;


# direct methods
.method public synthetic constructor <init>(IILcom/google/android/gms/internal/ads/zzhny;Lcom/google/android/gms/internal/ads/zzhnx;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhoc;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzc:Lcom/google/android/gms/internal/ads/zzhny;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzd:Lcom/google/android/gms/internal/ads/zzhnx;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzhnw;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhnw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhnw;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhnz;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhnz;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzhnz;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zza:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhnz;->zze()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhnz;->zze()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhnz;->zzc:Lcom/google/android/gms/internal/ads/zzhny;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzc:Lcom/google/android/gms/internal/ads/zzhny;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhnz;->zzd:Lcom/google/android/gms/internal/ads/zzhnx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzd:Lcom/google/android/gms/internal/ads/zzhnx;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzc:Lcom/google/android/gms/internal/ads/zzhny;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzd:Lcom/google/android/gms/internal/ads/zzhnx;

    const-class v4, Lcom/google/android/gms/internal/ads/zzhnz;

    filled-new-array {v4, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzd:Lcom/google/android/gms/internal/ads/zzhnx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzc:Lcom/google/android/gms/internal/ads/zzhny;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzb:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zza:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v2, v2, 0x26

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "HMAC Parameters (variant: "

    const-string v5, ", hashType: "

    invoke-static {v3, v2, v1, v5, v0}, Le1/i;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", "

    const-string v1, "-byte tags, and "

    invoke-static {v3, v0, v4, v1, v6}, LC/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "-byte key)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzc:Lcom/google/android/gms/internal/ads/zzhny;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhny;->zzd:Lcom/google/android/gms/internal/ads/zzhny;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zza:I

    return v0
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzb:I

    return v0
.end method

.method public final zze()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzc:Lcom/google/android/gms/internal/ads/zzhny;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhny;->zzd:Lcom/google/android/gms/internal/ads/zzhny;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzb:I

    return v0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhny;->zza:Lcom/google/android/gms/internal/ads/zzhny;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhny;->zzb:Lcom/google/android/gms/internal/ads/zzhny;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhny;->zzc:Lcom/google/android/gms/internal/ads/zzhny;

    if-ne v0, v1, :cond_3

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzb:I

    add-int/lit8 v0, v0, 0x5

    return v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown variant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhny;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzc:Lcom/google/android/gms/internal/ads/zzhny;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzhnx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhnz;->zzd:Lcom/google/android/gms/internal/ads/zzhnx;

    return-object v0
.end method
