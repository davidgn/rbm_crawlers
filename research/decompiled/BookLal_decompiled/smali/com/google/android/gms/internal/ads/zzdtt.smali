.class final Lcom/google/android/gms/internal/ads/zzdtt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbov;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzduc;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtt;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdtt;->zzb:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtt;->zzb:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzac(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    return-void
.end method
