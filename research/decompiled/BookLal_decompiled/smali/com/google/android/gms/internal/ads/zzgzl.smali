.class final Lcom/google/android/gms/internal/ads/zzgzl;
.super Lcom/google/android/gms/internal/ads/zzgzn;
.source "SourceFile"


# direct methods
.method public constructor <init>(LN2/o;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhad;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgzn;-><init>(LN2/o;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic zze(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LN2/o;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzk(LN2/o;)Z

    return-void
.end method

.method public final bridge synthetic zzf(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhad;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzhad;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzgsj;->zzl(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
