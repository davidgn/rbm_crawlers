.class final Lcom/google/android/gms/internal/ads/zzadg;
.super Lcom/google/android/gms/internal/ads/zzadf;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/Choreographer;Landroid/hardware/display/DisplayManager;[B)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzadf;-><init>(Landroid/view/Choreographer;Landroid/hardware/display/DisplayManager;[B)V

    return-void
.end method

.method private static zzc(Landroid/hardware/display/DisplayManager;)J
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    float-to-double v0, p0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v0, v2

    return-wide v0

    :cond_0
    const-string p0, "VideoFrameReleaseHelper"

    const-string v0, "Unable to query display refresh rate"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 2

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzadf;->zzc:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadf;->zza:Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadf;->zza:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadf;->zzb:Landroid/hardware/display/DisplayManager;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzadg;->zzc(Landroid/hardware/display/DisplayManager;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadf;->zzd:J

    :cond_0
    return-void
.end method

.method public final zza()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzadf;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadf;->zza:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadf;->zzb:Landroid/hardware/display/DisplayManager;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzadg;->zzc(Landroid/hardware/display/DisplayManager;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadf;->zzd:J

    return-void
.end method

.method public final zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadf;->zzb:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadf;->zza:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadf;->zzc:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadf;->zzd:J

    return-void
.end method
