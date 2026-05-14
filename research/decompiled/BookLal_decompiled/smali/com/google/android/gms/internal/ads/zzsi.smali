.class final Lcom/google/android/gms/internal/ads/zzsi;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzsk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzsk;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsi;->zza:Lcom/google/android/gms/internal/ads/zzsk;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsi;->zza:Lcom/google/android/gms/internal/ads/zzsk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsk;->zza:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsl;->zzs()Lcom/google/android/gms/internal/ads/zzee;

    move-result-object p1

    const/4 p2, -0x1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzsh;->zza:Lcom/google/android/gms/internal/ads/zzsh;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzd(ILcom/google/android/gms/internal/ads/zzdz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzee;->zze()V

    return-void
.end method

.method public final onPresentationEnded(Landroid/media/AudioTrack;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsi;->zza:Lcom/google/android/gms/internal/ads/zzsk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsk;->zza:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsl;->zzs()Lcom/google/android/gms/internal/ads/zzee;

    move-result-object p1

    const/4 v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzsf;->zza:Lcom/google/android/gms/internal/ads/zzsf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzd(ILcom/google/android/gms/internal/ads/zzdz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzee;->zze()V

    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsi;->zza:Lcom/google/android/gms/internal/ads/zzsk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsk;->zza:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsl;->zzs()Lcom/google/android/gms/internal/ads/zzee;

    move-result-object p1

    const/4 v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzsg;->zza:Lcom/google/android/gms/internal/ads/zzsg;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzd(ILcom/google/android/gms/internal/ads/zzdz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzee;->zze()V

    return-void
.end method
