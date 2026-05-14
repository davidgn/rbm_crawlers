.class final synthetic Lcom/google/android/gms/internal/ads/zzdqx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcjz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcjz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zza:Lcom/google/android/gms/internal/ads/zzcjz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lr/b;

    invoke-direct {v0}, Lr/k;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqx;->zza:Lcom/google/android/gms/internal/ads/zzcjz;

    const-string v2, "onSdkImpression"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbrr;->zze(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
