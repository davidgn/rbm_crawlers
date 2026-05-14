.class final Lcom/google/android/gms/internal/ads/zzse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsr;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzsl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzsl;[B)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzse;->zza:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(J)V
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x29

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Ignoring impossibly large audio latency: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioTrackAudioOutput"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(J)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsd;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsd;-><init>(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzse;->zza:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsl;->zzs()Lcom/google/android/gms/internal/ads/zzee;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzd(ILcom/google/android/gms/internal/ads/zzdz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzee;->zze()V

    return-void
.end method
