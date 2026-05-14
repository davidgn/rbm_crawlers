.class final synthetic Lcom/google/android/gms/internal/ads/zzfsa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfsb;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfrq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfsb;Lcom/google/android/gms/internal/ads/zzfrq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zza:Lcom/google/android/gms/internal/ads/zzfsb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzb:Lcom/google/android/gms/internal/ads/zzfrq;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zza:Lcom/google/android/gms/internal/ads/zzfsb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsa;->zzb:Lcom/google/android/gms/internal/ads/zzfrq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsb;->zzb(Lcom/google/android/gms/internal/ads/zzfrq;)V

    return-void
.end method
