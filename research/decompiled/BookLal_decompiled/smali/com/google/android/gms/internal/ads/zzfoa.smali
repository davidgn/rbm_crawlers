.class public final Lcom/google/android/gms/internal/ads/zzfoa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final zza(LN2/o;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfoh;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 9

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfog;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoh;->zzd()LN2/o;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p2

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfog;-><init>(Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/Object;Ljava/lang/String;LN2/o;Ljava/util/List;LN2/o;[B)V

    return-object v8
.end method

.method public static final zzb(Ljava/util/concurrent/Callable;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfoh;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfoh;->zze()Lcom/google/android/gms/internal/ads/zzhbf;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfoa;->zzc(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/zzhbf;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfoh;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p0

    return-object p0
.end method

.method public static final zzc(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/zzhbf;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfoh;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 9

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfog;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoh;->zzd()LN2/o;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzhbf;->zzc(Ljava/util/concurrent/Callable;)LN2/o;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p3

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfog;-><init>(Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/Object;Ljava/lang/String;LN2/o;Ljava/util/List;LN2/o;[B)V

    return-object v8
.end method

.method public static final zzd(Lcom/google/android/gms/internal/ads/zzfnv;Lcom/google/android/gms/internal/ads/zzhbf;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfoh;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfnz;-><init>(Lcom/google/android/gms/internal/ads/zzfnv;)V

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfoa;->zzc(Ljava/util/concurrent/Callable;Lcom/google/android/gms/internal/ads/zzhbf;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfoh;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p0

    return-object p0
.end method
