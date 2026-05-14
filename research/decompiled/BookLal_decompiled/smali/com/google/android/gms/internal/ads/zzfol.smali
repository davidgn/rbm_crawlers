.class final synthetic Lcom/google/android/gms/internal/ads/zzfol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdht;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfnw;

.field private final synthetic zzb:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfnw;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfol;->zza:Lcom/google/android/gms/internal/ads/zzfnw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfol;->zzb:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfoq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfol;->zza:Lcom/google/android/gms/internal/ads/zzfnw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnw;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnw;->zzb()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfol;->zzb:Ljava/lang/Throwable;

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfoq;->zzdN(Lcom/google/android/gms/internal/ads/zzfoj;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
