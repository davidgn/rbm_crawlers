.class final Lcom/google/android/gms/internal/ads/zzguh;
.super Lcom/google/android/gms/internal/ads/zzgxg;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzgsa;

.field final zzb:Lcom/google/android/gms/internal/ads/zzgxg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgsa;Lcom/google/android/gms/internal/ads/zzgxg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgxg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzguh;->zza:Lcom/google/android/gms/internal/ads/zzgsa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzguh;->zzb:Lcom/google/android/gms/internal/ads/zzgxg;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzguh;->zza:Lcom/google/android/gms/internal/ads/zzgsa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzguh;->zzb:Lcom/google/android/gms/internal/ads/zzgxg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgsa;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzgsa;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzgxg;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzguh;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzguh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzguh;->zza:Lcom/google/android/gms/internal/ads/zzgsa;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzguh;->zza:Lcom/google/android/gms/internal/ads/zzgsa;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzguh;->zzb:Lcom/google/android/gms/internal/ads/zzgxg;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzguh;->zzb:Lcom/google/android/gms/internal/ads/zzgxg;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzguh;->zza:Lcom/google/android/gms/internal/ads/zzgsa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzguh;->zzb:Lcom/google/android/gms/internal/ads/zzgxg;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzguh;->zzb:Lcom/google/android/gms/internal/ads/zzgxg;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzguh;->zza:Lcom/google/android/gms/internal/ads/zzgsa;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, ".onResultOf("

    const-string v4, ")"

    invoke-static {v3, v0, v1, v2, v4}, LC/a;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
