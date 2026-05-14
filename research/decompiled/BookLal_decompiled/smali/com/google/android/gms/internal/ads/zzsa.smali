.class final synthetic Lcom/google/android/gms/internal/ads/zzsa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzsc;

.field private final synthetic zzb:Landroid/media/AudioDeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzsc;Landroid/media/AudioDeviceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzb:Landroid/media/AudioDeviceInfo;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsa;->zza:Lcom/google/android/gms/internal/ads/zzsc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzb:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsc;->zzc(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method
