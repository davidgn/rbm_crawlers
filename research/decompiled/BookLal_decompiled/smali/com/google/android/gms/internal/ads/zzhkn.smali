.class final Lcom/google/android/gms/internal/ads/zzhkn;
.super Lcom/google/android/gms/internal/ads/zzial;
.source "SourceFile"


# direct methods
.method public static final zza(Lcom/google/android/gms/internal/ads/zzibc;)Lcom/google/android/gms/internal/ads/zziaf;
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibc;->zzm()I

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkn;->zzc(Lcom/google/android/gms/internal/ads/zzibc;I)Lcom/google/android/gms/internal/ads/zziaf;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzhkn;->zzb(Lcom/google/android/gms/internal/ads/zzibc;I)Lcom/google/android/gms/internal/ads/zziaf;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibc;->zzf()Z

    move-result v2

    if-eqz v2, :cond_8

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zziah;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibc;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhkp;->zza(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "illegal characters in string"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibc;->zzm()I

    move-result v3

    invoke-static {p0, v3}, Lcom/google/android/gms/internal/ads/zzhkn;->zzc(Lcom/google/android/gms/internal/ads/zzibc;I)Lcom/google/android/gms/internal/ads/zziaf;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-static {p0, v3}, Lcom/google/android/gms/internal/ads/zzhkn;->zzb(Lcom/google/android/gms/internal/ads/zzibc;I)Lcom/google/android/gms/internal/ads/zziaf;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    instance-of v5, v1, Lcom/google/android/gms/internal/ads/zziae;

    if-eqz v5, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zziae;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zziae;->zza(Lcom/google/android/gms/internal/ads/zziaf;)V

    goto :goto_3

    :cond_5
    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/ads/zziah;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zziah;->zzc(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/ads/zziah;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zziaf;)V

    :goto_3
    if-eqz v4, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_6

    move-object v1, v3

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string v0, "too many recursions"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duplicate key: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zziae;

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibc;->zzc()V

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibc;->zze()V

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    return-object v1

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zziaf;

    goto/16 :goto_0
.end method

.method private static final zzb(Lcom/google/android/gms/internal/ads/zzibc;I)Lcom/google/android/gms/internal/ads/zziaf;
    .locals 2

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibc;->zzk()V

    sget-object p0, Lcom/google/android/gms/internal/ads/zziag;->zza:Lcom/google/android/gms/internal/ads/zziag;

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzibd;->zza(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected token: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zziaj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibc;->zzj()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zziaj;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibc;->zzi()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zziaj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhko;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhko;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zziaj;-><init>(Ljava/lang/Number;)V

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibc;->zzi()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhkp;->zza(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/ads/zziaj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zziaj;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "illegal characters in string"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final zzc(Lcom/google/android/gms/internal/ads/zzibc;I)Lcom/google/android/gms/internal/ads/zziaf;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibc;->zzd()V

    new-instance p0, Lcom/google/android/gms/internal/ads/zziah;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zziah;-><init>()V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibc;->zzb()V

    new-instance p0, Lcom/google/android/gms/internal/ads/zziae;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zziae;-><init>()V

    return-object p0
.end method
