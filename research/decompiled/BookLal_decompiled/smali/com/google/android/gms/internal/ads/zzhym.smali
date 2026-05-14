.class public final Lcom/google/android/gms/internal/ads/zzhym;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:[B

.field private final zzb:[B


# direct methods
.method private constructor <init>([B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhym;->zza:[B

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhym;->zzb:[B

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzhym;
    .locals 3

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhmt;->zza(I)[B

    move-result-object v1

    array-length v2, v1

    if-ne v2, v0, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzb([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkd;->zza([B)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhym;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzhym;-><init>([B[B)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given secret seed length is not 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final zza()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhym;->zza:[B

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final zzb()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhym;->zzb:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
