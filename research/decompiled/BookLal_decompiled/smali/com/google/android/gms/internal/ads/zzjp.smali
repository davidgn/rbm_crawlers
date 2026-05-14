.class final synthetic Lcom/google/android/gms/internal/ads/zzjp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Landroid/content/Context;

.field private final synthetic zzb:Z

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzla;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzpy;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/zzla;Lcom/google/android/gms/internal/ads/zzpy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zza:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzb:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzc:Lcom/google/android/gms/internal/ads/zzla;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzd:Lcom/google/android/gms/internal/ads/zzpy;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjp;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpu;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzpu;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ExoPlayerImpl"

    const-string v1, "MediaMetricsService unavailable."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzb:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzc:Lcom/google/android/gms/internal/ads/zzla;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzla;->zzD(Lcom/google/android/gms/internal/ads/zzni;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjp;->zzd:Lcom/google/android/gms/internal/ads/zzpy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpu;->zzb()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzpy;->zzb(Landroid/media/metrics/LogSessionId;)V

    return-void
.end method
