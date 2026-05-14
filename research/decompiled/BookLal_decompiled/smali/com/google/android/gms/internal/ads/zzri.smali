.class final synthetic Lcom/google/android/gms/internal/ads/zzri;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzrj;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zziu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzrj;Lcom/google/android/gms/internal/ads/zziu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzri;->zza:Lcom/google/android/gms/internal/ads/zzrj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzri;->zzb:Lcom/google/android/gms/internal/ads/zziu;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzri;->zza:Lcom/google/android/gms/internal/ads/zzrj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzri;->zzb:Lcom/google/android/gms/internal/ads/zziu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzrj;->zzo(Lcom/google/android/gms/internal/ads/zziu;)V

    return-void
.end method
