.class final Lcom/google/android/gms/internal/ads/zzgwi;
.super Lcom/google/android/gms/internal/ads/zzgxz;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgwj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgwj;Ljava/util/ListIterator;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwj;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgxz;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgwj;->zzb:Lcom/google/android/gms/internal/ads/zzgsa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgsa;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
