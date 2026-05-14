.class public final Lcom/google/android/gms/internal/ads/zzhtv;
.super Lcom/google/android/gms/internal/ads/zzhwn;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhtt;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhtr;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhts;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhtu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhtt;Lcom/google/android/gms/internal/ads/zzhtr;Lcom/google/android/gms/internal/ads/zzhts;Lcom/google/android/gms/internal/ads/zzhtu;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zza:Lcom/google/android/gms/internal/ads/zzhtt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzb:Lcom/google/android/gms/internal/ads/zzhtr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzc:Lcom/google/android/gms/internal/ads/zzhts;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzd:Lcom/google/android/gms/internal/ads/zzhtu;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzhtq;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhtq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhtq;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhtv;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhtv;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhtv;->zza:Lcom/google/android/gms/internal/ads/zzhtt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zza:Lcom/google/android/gms/internal/ads/zzhtt;

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhtv;->zzb:Lcom/google/android/gms/internal/ads/zzhtr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzb:Lcom/google/android/gms/internal/ads/zzhtr;

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhtv;->zzc:Lcom/google/android/gms/internal/ads/zzhts;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzc:Lcom/google/android/gms/internal/ads/zzhts;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhtv;->zzd:Lcom/google/android/gms/internal/ads/zzhtu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzd:Lcom/google/android/gms/internal/ads/zzhtu;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zza:Lcom/google/android/gms/internal/ads/zzhtt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzb:Lcom/google/android/gms/internal/ads/zzhtr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzc:Lcom/google/android/gms/internal/ads/zzhts;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzd:Lcom/google/android/gms/internal/ads/zzhtu;

    const-class v4, Lcom/google/android/gms/internal/ads/zzhtv;

    filled-new-array {v4, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzd:Lcom/google/android/gms/internal/ads/zzhtu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhtu;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzc:Lcom/google/android/gms/internal/ads/zzhts;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhts;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zza:Lcom/google/android/gms/internal/ads/zzhtt;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhtt;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzb:Lcom/google/android/gms/internal/ads/zzhtr;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhtr;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v1, v1, 0x27

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x9

    add-int/2addr v1, v7

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ECDSA Parameters (variant: "

    const-string v5, ", hashType: "

    invoke-static {v3, v1, v0, v5, v2}, Le1/i;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", encoding: "

    const-string v1, ", curve: "

    invoke-static {v3, v0, v4, v1, v6}, Le1/i;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzd:Lcom/google/android/gms/internal/ads/zzhtu;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhtu;->zzd:Lcom/google/android/gms/internal/ads/zzhtu;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhtt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zza:Lcom/google/android/gms/internal/ads/zzhtt;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzhtr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzb:Lcom/google/android/gms/internal/ads/zzhtr;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzhts;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzc:Lcom/google/android/gms/internal/ads/zzhts;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhtu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhtv;->zzd:Lcom/google/android/gms/internal/ads/zzhtu;

    return-object v0
.end method
