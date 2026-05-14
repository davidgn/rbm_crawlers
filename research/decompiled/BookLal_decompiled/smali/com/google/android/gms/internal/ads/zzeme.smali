.class final synthetic Lcom/google/android/gms/internal/ads/zzeme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcww;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzela;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzela;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeme;->zza:Lcom/google/android/gms/internal/ads/zzela;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeme;->zza:Lcom/google/android/gms/internal/ads/zzela;

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzela;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbwg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbwg;->zzh()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfkk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfkk;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
