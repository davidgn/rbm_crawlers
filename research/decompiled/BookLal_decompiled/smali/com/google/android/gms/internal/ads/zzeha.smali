.class final synthetic Lcom/google/android/gms/internal/ads/zzeha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:LN2/o;

.field private final synthetic zzb:LN2/o;


# direct methods
.method public synthetic constructor <init>(LN2/o;LN2/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeha;->zza:LN2/o;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeha;->zzb:LN2/o;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzehk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeha;->zza:LN2/o;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzehq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeha;->zzb:LN2/o;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzehi;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzehi;->zzb:Lorg/json/JSONObject;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzehi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzehi;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzehk;-><init>(Lcom/google/android/gms/internal/ads/zzehq;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcak;)V

    return-object v0
.end method
