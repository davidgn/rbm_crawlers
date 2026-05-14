.class public final Lcom/google/android/gms/internal/ads/zzgaj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final zza(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/zzgah;
    .locals 1

    const-string v0, "executorService"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgai;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgai;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method
