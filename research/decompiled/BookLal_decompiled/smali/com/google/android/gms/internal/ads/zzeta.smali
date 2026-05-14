.class final synthetic Lcom/google/android/gms/internal/ads/zzeta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzetb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzetb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeta;->zza:Lcom/google/android/gms/internal/ads/zzetb;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeta;->zza:Lcom/google/android/gms/internal/ads/zzetb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzetb;->zze:Lcom/google/android/gms/internal/ads/zzete;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzete;->zzf()Lcom/google/android/gms/internal/ads/zzesu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesu;->zzd()Lcom/google/android/gms/internal/ads/zzddk;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzddk;->zzg()V

    return-void
.end method
