.class public final Lcom/google/android/gms/internal/ads/zzhkp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ne v2, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_2

    if-eq v4, v0, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method public static zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zziaf;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzibc;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzibc;-><init>(Ljava/io/Reader;)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zziak;->zzb:Lcom/google/android/gms/internal/ads/zziak;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzibc;->zza(Lcom/google/android/gms/internal/ads/zziak;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkn;->zza(Lcom/google/android/gms/internal/ads/zzibc;)Lcom/google/android/gms/internal/ads/zziaf;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static zzc(Ljava/lang/Number;)J
    .locals 2

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzhko;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "does not contain a parsed number."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
