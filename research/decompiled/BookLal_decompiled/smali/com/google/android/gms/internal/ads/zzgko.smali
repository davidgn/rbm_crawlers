.class final synthetic Lcom/google/android/gms/internal/ads/zzgko;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgkq;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfxq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgkq;Lcom/google/android/gms/internal/ads/zzfxq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgko;->zza:Lcom/google/android/gms/internal/ads/zzgkq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgko;->zzb:Lcom/google/android/gms/internal/ads/zzfxq;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgko;->zza:Lcom/google/android/gms/internal/ads/zzgkq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgko;->zzb:Lcom/google/android/gms/internal/ads/zzfxq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgkq;->zzn(Lcom/google/android/gms/internal/ads/zzfxq;)V

    return-void
.end method
