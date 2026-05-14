.class public final Lcom/google/android/gms/internal/ads/zzhup;
.super Lcom/google/android/gms/internal/ads/zzhwn;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhun;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhuo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhun;Lcom/google/android/gms/internal/ads/zzhuo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhwn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhup;->zza:Lcom/google/android/gms/internal/ads/zzhun;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhup;->zzb:Lcom/google/android/gms/internal/ads/zzhuo;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhun;Lcom/google/android/gms/internal/ads/zzhuo;)Lcom/google/android/gms/internal/ads/zzhup;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhup;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhup;-><init>(Lcom/google/android/gms/internal/ads/zzhun;Lcom/google/android/gms/internal/ads/zzhuo;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhup;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhup;->zza:Lcom/google/android/gms/internal/ads/zzhun;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhup;->zza:Lcom/google/android/gms/internal/ads/zzhun;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhup;->zzb:Lcom/google/android/gms/internal/ads/zzhuo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhup;->zzb:Lcom/google/android/gms/internal/ads/zzhuo;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhup;->zza:Lcom/google/android/gms/internal/ads/zzhun;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhup;->zzb:Lcom/google/android/gms/internal/ads/zzhuo;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhup;

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhup;->zza:Lcom/google/android/gms/internal/ads/zzhun;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhun;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhup;->zzb:Lcom/google/android/gms/internal/ads/zzhuo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhuo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v1, v1, 0x2f

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ML-DSA Parameters (ML-DSA instance: "

    const-string v4, ", variant: "

    invoke-static {v3, v1, v0, v4, v2}, Le1/i;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhup;->zzb:Lcom/google/android/gms/internal/ads/zzhuo;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhuo;->zzb:Lcom/google/android/gms/internal/ads/zzhuo;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
