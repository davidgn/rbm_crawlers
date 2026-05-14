.class final Lcom/google/android/gms/internal/ads/zzbxs;
.super Lcom/google/android/gms/internal/ads/zzbmm;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbxt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbxt;[B)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zza:Lcom/google/android/gms/internal/ads/zzbxt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbmm;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbma;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxs;->zza:Lcom/google/android/gms/internal/ads/zzbxt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbxt;->zzd()Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxt;->zzc(Lcom/google/android/gms/internal/ads/zzbma;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;->onCustomFormatAdLoaded(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V

    return-void
.end method
