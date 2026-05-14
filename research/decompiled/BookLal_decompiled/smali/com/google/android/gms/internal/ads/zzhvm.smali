.class final Lcom/google/android/gms/internal/ads/zzhvm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhdh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhmg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhmg;Lcom/google/android/gms/internal/ads/zzhlh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhvm;->zza:Lcom/google/android/gms/internal/ads/zzhmg;

    return-void
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhvm;->zza:Lcom/google/android/gms/internal/ads/zzhmg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhmg;->zza([B)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhvl;

    :try_start_0
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhvl;->zza:Lcom/google/android/gms/internal/ads/zzhdh;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzhdh;->zza([B[B)V

    array-length p1, p2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid signature"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
