.class public final Lcom/google/android/gms/internal/ads/zzhfq;
.super Lcom/google/android/gms/internal/ads/zzhdw;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhfp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhdw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhfq;->zza:Lcom/google/android/gms/internal/ads/zzhfp;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhfp;)Lcom/google/android/gms/internal/ads/zzhfq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhfq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhfq;-><init>(Lcom/google/android/gms/internal/ads/zzhfp;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhfq;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhfq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhfq;->zza:Lcom/google/android/gms/internal/ads/zzhfp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfq;->zza:Lcom/google/android/gms/internal/ads/zzhfp;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/ads/zzhfq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhfq;->zza:Lcom/google/android/gms/internal/ads/zzhfp;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfq;->zza:Lcom/google/android/gms/internal/ads/zzhfp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfp;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x27

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ChaCha20Poly1305 Parameters (variant: "

    const-string v3, ")"

    invoke-static {v2, v1, v0, v3}, LC/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfq;->zza:Lcom/google/android/gms/internal/ads/zzhfp;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhfp;->zzc:Lcom/google/android/gms/internal/ads/zzhfp;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhfp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhfq;->zza:Lcom/google/android/gms/internal/ads/zzhfp;

    return-object v0
.end method
