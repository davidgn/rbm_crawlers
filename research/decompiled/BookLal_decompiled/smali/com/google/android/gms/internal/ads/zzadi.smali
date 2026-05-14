.class final Lcom/google/android/gms/internal/ads/zzadi;
.super Lcom/google/android/gms/internal/ads/zzadf;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$VsyncCallback;


# instance fields
.field private final zzf:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/view/Choreographer;Landroid/hardware/display/DisplayManager;[B)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzadf;-><init>(Landroid/view/Choreographer;Landroid/hardware/display/DisplayManager;[B)V

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfk;->zzc(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadi;->zzf:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onDisplayChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadf;->zza:Landroid/view/Choreographer;

    invoke-static {p1, p0}, LN/c;->p(Landroid/view/Choreographer;Landroid/view/Choreographer$VsyncCallback;)V

    :cond_0
    return-void
.end method

.method public final onVsync(Landroid/view/Choreographer$FrameData;)V
    .locals 6

    invoke-static {p1}, LN/c;->a(Landroid/view/Choreographer$FrameData;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadf;->zzc:J

    invoke-static {p1}, LN/c;->t(Landroid/view/Choreographer$FrameData;)[Landroid/view/Choreographer$FrameTimeline;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, LN/c;->b(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v0

    const/4 v4, 0x0

    aget-object p1, p1, v4

    invoke-static {p1}, LN/c;->b(Landroid/view/Choreographer$FrameTimeline;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzadf;->zzd:J

    goto :goto_1

    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzadf;->zzd:J

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadi;->zzf:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzadh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzadh;-><init>(Lcom/google/android/gms/internal/ads/zzadi;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final zza()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzadf;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadf;->zza:Landroid/view/Choreographer;

    invoke-static {v0, p0}, LN/c;->p(Landroid/view/Choreographer;Landroid/view/Choreographer$VsyncCallback;)V

    return-void
.end method

.method public final zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadf;->zzb:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadi;->zzf:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadf;->zza:Landroid/view/Choreographer;

    invoke-static {v0, p0}, LN/c;->v(Landroid/view/Choreographer;Landroid/view/Choreographer$VsyncCallback;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadf;->zzc:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadf;->zzd:J

    return-void
.end method
