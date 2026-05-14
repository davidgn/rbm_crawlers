.class final synthetic Lcom/google/android/gms/internal/ads/zzrx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzee;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzee;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrx;->zza:Lcom/google/android/gms/internal/ads/zzee;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzru;->zza:Lcom/google/android/gms/internal/ads/zzru;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrx;->zza:Lcom/google/android/gms/internal/ads/zzee;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzee;->zzd(ILcom/google/android/gms/internal/ads/zzdz;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zze()V

    return-void
.end method
