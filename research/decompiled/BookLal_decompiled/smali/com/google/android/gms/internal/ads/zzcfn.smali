.class final Lcom/google/android/gms/internal/ads/zzcfn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/media/MediaPlayer;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcfw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcfw;Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zza:Landroid/media/MediaPlayer;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzb:Lcom/google/android/gms/internal/ads/zzcfw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zzb:Lcom/google/android/gms/internal/ads/zzcfw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfn;->zza:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfw;->zzs(Landroid/media/MediaPlayer;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfw;->zzt()Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfw;->zzt()Lcom/google/android/gms/internal/ads/zzcfx;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfx;->zzb()V

    :cond_0
    return-void
.end method
