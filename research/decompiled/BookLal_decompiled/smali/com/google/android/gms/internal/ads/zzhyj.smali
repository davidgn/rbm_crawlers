.class public final Lcom/google/android/gms/internal/ads/zzhyj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhyj;->zza:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static zza(Ljava/lang/String;I)[B
    .locals 3

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhyj;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p1, p0

    mul-int/lit8 v0, p1, 0x3

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhyi;

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhyi;-><init>(I[B)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzhyi;->zza([BIIZ)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, v1, Lcom/google/android/gms/internal/ads/zzhyh;->zzb:I

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzhyh;->zza:[B

    array-length v1, p1

    if-ne p0, v1, :cond_0

    return-object p1

    :cond_0
    new-array v1, p0, [B

    invoke-static {p1, v0, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad base-64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
