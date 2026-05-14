.class final synthetic Lcom/google/android/gms/internal/ads/zzfom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdht;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfnw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfnw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfom;->zza:Lcom/google/android/gms/internal/ads/zzfnw;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfoq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfom;->zza:Lcom/google/android/gms/internal/ads/zzfnw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnw;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnw;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfoq;->zzdO(Lcom/google/android/gms/internal/ads/zzfoj;Ljava/lang/String;)V

    return-void
.end method
