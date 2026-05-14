.class final Lcom/google/android/gms/internal/ads/zzsk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzsl;

.field private final zzb:Landroid/os/Handler;

.field private final zzc:Landroid/media/AudioTrack$StreamEventCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzsl;[B)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsk;->zza:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfk;->zzc(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzb:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzsi;-><init>(Lcom/google/android/gms/internal/ads/zzsk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzc:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzsj;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzsj;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsl;->zzr()Landroid/media/AudioTrack;

    move-result-object p1

    invoke-static {p1, v1, v0}, LS0/b;->o(Landroid/media/AudioTrack;Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zza:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsl;->zzr()Landroid/media/AudioTrack;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzc:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-static {v0, v1}, LS0/b;->n(Landroid/media/AudioTrack;Landroid/media/AudioTrack$StreamEventCallback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsk;->zzb:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
