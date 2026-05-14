.class public final Lcom/google/android/gms/internal/ads/zzft;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzft;->zza:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzft;
    .locals 9

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v0

    shr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result p0

    shr-int/lit8 p0, p0, 0x3

    const/4 v2, 0x5

    const/16 v3, 0xa

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3

    if-eq v1, v2, :cond_3

    const/4 v5, 0x7

    if-eq v1, v5, :cond_3

    const/16 v5, 0x8

    if-ne v1, v5, :cond_0

    goto :goto_0

    :cond_0
    const/16 v5, 0x9

    if-ne v1, v5, :cond_1

    const-string v5, "dvav"

    goto :goto_1

    :cond_1
    if-ne v1, v3, :cond_2

    const-string v5, "dav1"

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    const-string v5, "dvhe"

    :goto_1
    shl-int/2addr v0, v2

    or-int/2addr p0, v0

    const-string v0, "."

    const-string v2, ".0"

    if-ge v1, v3, :cond_4

    move-object v6, v2

    goto :goto_2

    :cond_4
    move-object v6, v0

    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge p0, v3, :cond_5

    move-object v0, v2

    :cond_5
    add-int/2addr v7, v4

    invoke-static {v7, v8, v0}, Lcom/google/android/gms/ads/internal/util/client/a;->c(IILjava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzft;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzft;-><init>(IILjava/lang/String;)V

    return-object v2
.end method
