.class public final Lcom/google/android/gms/internal/ads/zzhuf;
.super Lcom/google/android/gms/internal/ads/zzhwn;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhue;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhue;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhuf;->zza:Lcom/google/android/gms/internal/ads/zzhue;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhue;)Lcom/google/android/gms/internal/ads/zzhuf;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhuf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhuf;-><init>(Lcom/google/android/gms/internal/ads/zzhue;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhuf;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhuf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhuf;->zza:Lcom/google/android/gms/internal/ads/zzhue;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhuf;->zza:Lcom/google/android/gms/internal/ads/zzhue;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/ads/zzhuf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhuf;->zza:Lcom/google/android/gms/internal/ads/zzhue;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhuf;->zza:Lcom/google/android/gms/internal/ads/zzhue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1e

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ed25519 Parameters (variant: "

    const-string v3, ")"

    invoke-static {v2, v1, v0, v3}, LC/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhuf;->zza:Lcom/google/android/gms/internal/ads/zzhue;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhue;->zzd:Lcom/google/android/gms/internal/ads/zzhue;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhuf;->zza:Lcom/google/android/gms/internal/ads/zzhue;

    return-object v0
.end method
